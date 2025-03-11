import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/domain/auth/i_auth_repo.dart';
import 'package:safe_zone/domain/user/user.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  final IAuthRepo _authRepo;
  AuthCubit(this._authRepo) : super(AuthState.unAuthenticated());

  Future<void> checkAuthStatus() async {
    await Future.delayed(Duration(seconds: 2));
    final isSignedIn = _authRepo.isSignedIn();
    emit(AuthState.unAuthenticated());
  }
}
