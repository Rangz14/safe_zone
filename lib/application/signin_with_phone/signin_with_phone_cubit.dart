import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/application/signin_with_phone/input_otp_state/input_otp_state.dart';
import 'package:safe_zone/application/signin_with_phone/input_phone_state/input_phone_state.dart';
import 'package:safe_zone/core/extensions/dartz_x.dart';
import 'package:safe_zone/domain/auth/i_auth_repo.dart';

part 'signin_with_phone_state.dart';
part 'signin_with_phone_cubit.freezed.dart';

@injectable
class SigninWithPhoneCubit extends Cubit<SigninWithPhoneState> {
  final IAuthRepo _authRepo;
  SigninWithPhoneCubit(this._authRepo)
    : super(SigninWithPhoneState.inputPhone(InputPhoneState.init()));

  Option<String> phone = none();
  Option<String> verificationId = none();
  Option<int> resendToken = none();

  Future<void> signInWithPhone(String phone) async {
    emit(
      SigninWithPhoneState.inputPhone(
        InputPhoneState.init().copyWith(isLoading: true),
      ),
    );
    this.phone = some(phone);
    await _authRepo.signInWithPhone(
      phone: phone,
      onSuccess: (uid) {
        emit(
          SigninWithPhoneState.inputPhone(
            InputPhoneState.init().copyWith(isSuccessful: true),
          ),
        );
      },
      onError: (message) {
        emit(
          SigninWithPhoneState.inputPhone(
            InputPhoneState.init().copyWith(failureMessage: some(message)),
          ),
        );
      },
      onCodeSent: (verificationId, resendToken) {
        this.verificationId = some(verificationId);
        if (resendToken != null) {
          this.resendToken = some(resendToken);
        }
        emit(SigninWithPhoneState.inputOTP(InputOtpState.init()));
      },
      onCodeAutoRetrievalTimeout: (verificationId) {
        this.verificationId = some(verificationId);
        emit(
          SigninWithPhoneState.inputOTP(
            InputOtpState.init().copyWith(timeLeft: 0, isResendActive: true),
          ),
        );
      },
    );
  }

  Future<void> signInWithOTP(String smsCode) async {
    emit(
      SigninWithPhoneState.inputOTP(
        InputOtpState.init().copyWith(isLoading: true),
      ),
    );

    if (verificationId.isNone()) {
      emit(
        SigninWithPhoneState.inputOTP(
          InputOtpState.init().copyWith(
            failureMessage: some('Verification ID is not provided'),
          ),
        ),
      );
      return;
    }

    final failureOrUid = await _authRepo.signInWithOTP(
      verificationId: verificationId.getOrCrash(),
      smsCode: smsCode,
    );

    if (failureOrUid.isLeft()) {
      emit(
        SigninWithPhoneState.inputOTP(
          InputOtpState.init().copyWith(
            failureMessage: some(failureOrUid.getLeft().message),
          ),
        ),
      );
      return;
    }
    emit(
      SigninWithPhoneState.inputOTP(
        InputOtpState.init().copyWith(isSuccessful: true),
      ),
    );
  }

  Future<void> resendOTP() async {
    emit(
      SigninWithPhoneState.inputOTP(
        InputOtpState.init().copyWith(isLoading: true),
      ),
    );

    if (phone.isNone()) {
      emit(
        SigninWithPhoneState.inputOTP(
          InputOtpState.init().copyWith(
            failureMessage: some('Phone number is not provided'),
          ),
        ),
      );
      return;
    }

    if (resendToken.isNone()) {
      emit(
        SigninWithPhoneState.inputOTP(
          InputOtpState.init().copyWith(
            failureMessage: some('Resend token is not provided'),
          ),
        ),
      );
      return;
    }

    await _authRepo.resendOTP(
      phone: phone.getOrCrash(),
      resendToken: resendToken.getOrCrash(),
      onSuccess: (uid) {
        emit(
          SigninWithPhoneState.inputOTP(
            InputOtpState.init().copyWith(isSuccessful: true),
          ),
        );
      },
      onError: (message) {
        emit(
          SigninWithPhoneState.inputOTP(
            InputOtpState.init().copyWith(failureMessage: some(message)),
          ),
        );
      },
      onCodeSent: (verificationId, resendToken) {
        emit(
          SigninWithPhoneState.inputOTP(
            InputOtpState.init().copyWith(timeLeft: 30),
          ),
        );
      },
      onCodeAutoRetrievalTimeout: (verificationId) {
        emit(
          SigninWithPhoneState.inputOTP(
            InputOtpState.init().copyWith(timeLeft: 0, isResendActive: true),
          ),
        );
      },
    );
  }
}
