part of 'signin_with_phone_cubit.dart';

@freezed
class SigninWithPhoneState with _$SigninWithPhoneState {
  const factory SigninWithPhoneState.initial() = _Initial;
  const factory SigninWithPhoneState.loading() = _Loading;
  const factory SigninWithPhoneState.succeed() = _Succeed;
  const factory SigninWithPhoneState.codeSent() = _CodeSent;
  const factory SigninWithPhoneState.timeout() = _Timeout;
  const factory SigninWithPhoneState.failed({required String message}) =
      _Failed;
}
