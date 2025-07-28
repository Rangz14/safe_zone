import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/core/constants.dart';
import 'package:safe_zone/core/extensions/dartz_x.dart';
import 'package:safe_zone/domain/auth/i_auth_repo.dart';
import 'package:safe_zone/domain/organization/i_organization_repo.dart';
import 'package:safe_zone/domain/organization/organization.dart';
import 'package:safe_zone/domain/user/i_user_repo.dart';
import 'package:safe_zone/domain/user/user.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  final IAuthRepo _authRepo;
  final IUserRepo _userRepo;
  final StakeHolder _stakeholder;
  final IOrganizationRepo _organizationRepo;
  AuthCubit(
    this._authRepo,
    this._userRepo,
    this._stakeholder,
    this._organizationRepo,
  ) : super(AuthState.loading());

  Future<void> checkAuthStatus() async {
    emit(AuthState.loading());
    await Future.delayed(Duration(seconds: 2));

    if (_stakeholder == StakeHolder.admin) {
      emit(AuthState.authenticatedAdmin());
      return;
    }

    final isSignedIn = _authRepo.isSignedIn();

    if (!isSignedIn) {
      emit(AuthState.unAuthenticated());
      return;
    }

    if (_stakeholder == StakeHolder.organization) _handleOrg();
    if (_stakeholder == StakeHolder.safeZoneUser) _handleUser();
  }

  Future<void> _handleOrg() async {
    final failureOrRegistered = await _organizationRepo.isRegistered();
    if (failureOrRegistered.isLeft()) {
      emit(AuthState.failed(message: failureOrRegistered.getLeft().message));
      return;
    }
    if (!failureOrRegistered.getOrCrash()) {
      final uid = _authRepo.getUid().getOrCrash();
      final phone = _authRepo.getPhone().getOrCrash();
      emit(AuthState.requireRegOrg(uid, phone));
      return;
    }

    _organizationRepo.watchCurrent().listen((failureOrOrg) {
      failureOrOrg.fold(
        (failure) => emit(AuthState.failed(message: failure.message)),
        (org) => emit(AuthState.authenticatedOrg(org: org)),
      );
    });
  }

  Future<void> _handleUser() async {
    final failureOrRegistered = await _userRepo.isExist();
    if (failureOrRegistered.isLeft()) {
      emit(AuthState.failed(message: failureOrRegistered.getLeft().message));
      return;
    }

    if (!failureOrRegistered.getOrCrash()) {
      final phone = _authRepo.getPhone();
      final uid = _authRepo.getUid();
      emit(AuthState.requireRegUser(uid.getOrCrash(), phone.getOrCrash()));
      return;
    }

    final failureOrCurrent = await _userRepo.getCurrent();

    if (failureOrCurrent.isLeft()) {
      emit(AuthState.failed(message: failureOrCurrent.getLeft().message));
      return;
    }
    emit(AuthState.authenticatedUser(user: failureOrCurrent.getOrCrash()));
  }
}
