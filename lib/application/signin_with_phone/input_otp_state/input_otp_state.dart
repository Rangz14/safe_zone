import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'input_otp_state.freezed.dart';

@freezed
abstract class InputOtpState with _$InputOtpState {
  const factory InputOtpState({
    required bool isLoading,
    required Option<String> failureMessage,
    required bool isSuccessful,
    required bool isResendActive,
    required int timeLeft,
  }) = _InputOtpState;

  factory InputOtpState.init() => InputOtpState(
    isLoading: false,
    failureMessage: none(),
    isSuccessful: false,
    isResendActive: false,
    timeLeft: 30,
  );
}
