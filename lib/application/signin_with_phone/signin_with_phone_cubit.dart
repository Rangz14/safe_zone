import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/core/extensions/dartz_x.dart';
import 'package:safe_zone/domain/auth/i_auth_repo.dart';

part 'signin_with_phone_state.dart';
part 'signin_with_phone_cubit.freezed.dart';

@injectable
class SigninWithPhoneCubit extends Cubit<SigninWithPhoneState> {
  final IAuthRepo _authRepo;
  SigninWithPhoneCubit(this._authRepo) : super(SigninWithPhoneState.initial());

  Option<String> phone = none();
  Option<String> verificationId = none();
  Option<int> resendToken = none();

  Future<void> signInWithPhone(String phone) async {
    emit(SigninWithPhoneState.loading());
    this.phone = some(phone);
    await _authRepo.signInWithPhone(
      phone: phone,
      onSuccess: (uid) {
        emit(SigninWithPhoneState.succeed());
      },
      onError: (message) {
        emit(SigninWithPhoneState.failed(message: message));
      },
      onCodeSent: (verificationId, resendToken) {
        this.verificationId = some(verificationId);
        if (resendToken != null) {
          this.resendToken = some(resendToken);
        }
        emit(SigninWithPhoneState.codeSent());
      },
      onCodeAutoRetrievalTimeout: (verificationId) {
        this.verificationId = some(verificationId);
        emit(SigninWithPhoneState.timeout());
      },
    );
  }

  Future<void> signInWithOTP(String smsCode) async {
    emit(SigninWithPhoneState.loading());

    if (verificationId.isNone()) {
      emit(
        SigninWithPhoneState.failed(message: 'Verification ID is not provided'),
      );
      return;
    }

    final failureOrUid = await _authRepo.signInWithOTP(
      verificationId: verificationId.getOrCrash(),
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

  Future<void> resendOTP() async {
    emit(SigninWithPhoneState.loading());

    if (phone.isNone()) {
      emit(
        SigninWithPhoneState.failed(message: 'Phone number is not provided'),
      );
      return;
    }

    if (resendToken.isNone()) {
      emit(
        SigninWithPhoneState.failed(message: 'Resend token is not provided'),
      );
      return;
    }

    await _authRepo.resendOTP(
      phone: phone.getOrCrash(),
      resendToken: resendToken.getOrCrash(),
      onSuccess: (uid) {
        emit(SigninWithPhoneState.succeed());
      },
      onError: (message) {
        emit(SigninWithPhoneState.failed(message: message));
      },
      onCodeSent: (verificationId, resendToken) {
        emit(SigninWithPhoneState.codeSent());
      },
      onCodeAutoRetrievalTimeout: (verificationId) {
        emit(SigninWithPhoneState.timeout());
      },
    );
  }
}
