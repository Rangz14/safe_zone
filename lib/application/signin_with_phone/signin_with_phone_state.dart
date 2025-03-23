part of 'signin_with_phone_cubit.dart';

@freezed
class SigninWithPhoneState with _$SigninWithPhoneState {
  const factory SigninWithPhoneState.inputPhone(
    InputPhoneState inputPhoneState,
  ) = _InputPhone;
  const factory SigninWithPhoneState.inputOTP(InputOtpState inputOtpState) =
      _InputOTP;
}
