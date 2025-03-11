import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:safe_zone/domain/auth/i_auth_repo.dart';

part 'signin_with_phone_state.dart';
part 'signin_with_phone_cubit.freezed.dart';

class SigninWithPhoneCubit extends Cubit<SigninWithPhoneState> {
  final IAuthRepo _authRepo;
  SigninWithPhoneCubit(this._authRepo) : super(SigninWithPhoneState.initial());

  Future<void> signInWithPhone({required String phone}) async {
    await _authRepo.signInWithPhone(
      phone: phone,
      onSuccess: (uid) {
        emit(SigninWithPhoneState.succeed());
      },
      onError: (message) {
        emit(SigninWithPhoneState.failed(message: message));
      },
      onCodeSent: (verificationId, resendToken) {
        emit(
          SigninWithPhoneState.codeSent(
            verificationId: verificationId,
            resendToken: resendToken,
          ),
        );
      },
      onCodeAutoRetrievalTimeout: (verificationId) {
        emit(SigninWithPhoneState.timeout(verificationId: verificationId));
      },
    );
  }

  Future<void> signInWithOTP({
    required String verificationId,
    required String smsCode,
  }) async {
    final failureOrUid = await _authRepo.signInWithOTP(
      verificationId: verificationId,
      smsCode: smsCode,
    );
    failureOrUid.fold(
      (failure) {
        emit(SigninWithPhoneState.failed(message: failure.message));
      },
      (uid) {
        emit(SigninWithPhoneState.succeed());
      },
    );
  }
}
