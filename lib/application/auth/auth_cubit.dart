import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/core/extensions/dartz_x.dart';
import 'package:safe_zone/domain/auth/i_auth_repo.dart';
import 'package:safe_zone/domain/user/i_user_repo.dart';
import 'package:safe_zone/domain/user/user.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  final IAuthRepo _authRepo;
  final IUserRepo _userRepo;
  AuthCubit(this._authRepo, this._userRepo) : super(AuthState.loading());

  Future<void> checkAuthStatus() async {
    emit(AuthState.loading());
    await Future.delayed(Duration(seconds: 2));
    final isSignedIn = _authRepo.isSignedIn();
    if (!isSignedIn) {
      emit(AuthState.unAuthenticated());
      return;
    }
    final failureOrExist = await _userRepo.isExist();
    if (failureOrExist.isLeft()) {
      emit(AuthState.failed(message: failureOrExist.getLeft().message));
      return;
    }

    if (!failureOrExist.getOrCrash()) {
      emit(AuthState.requireRegistration());
      return;
    }

    final failureOrCurrent = await _userRepo.getCurrent();

    if (failureOrCurrent.isLeft()) {
      emit(AuthState.failed(message: failureOrCurrent.getLeft().message));
      return;
    }
    emit(AuthState.authenticated(user: failureOrCurrent.getOrCrash()));
  }
}
