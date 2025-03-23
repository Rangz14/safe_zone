import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'input_phone_state.freezed.dart';

@freezed
abstract class InputPhoneState with _$InputPhoneState {
  const factory InputPhoneState({
    required bool isLoading,
    required Option<String> failureMessage,
    required bool isSuccessful,
  }) = _InputPhoneState;

  factory InputPhoneState.init() => InputPhoneState(
    isLoading: false,
    failureMessage: none(),
    isSuccessful: false,
  );
}
