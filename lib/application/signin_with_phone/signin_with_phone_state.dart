part of 'signin_with_phone_cubit.dart';

@freezed
class SigninWithPhoneState with _$SigninWithPhoneState {
  const factory SigninWithPhoneState.initial() = _Initial;
  const factory SigninWithPhoneState.loading() = _Loading;
  const factory SigninWithPhoneState.succeed() = _Succeed;
  const factory SigninWithPhoneState.codeSent({
    required String verificationId,
    required int? resendToken,
  }) = _CodeSent;
  const factory SigninWithPhoneState.timeout({required String verificationId}) =
      _Timeout;
  const factory SigninWithPhoneState.failed({required String message}) =
      _Failed;
}
