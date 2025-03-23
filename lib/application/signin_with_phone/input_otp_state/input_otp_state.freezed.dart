// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_otp_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$InputOtpState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<String> get failureMessage => throw _privateConstructorUsedError;
  bool get isSuccessful => throw _privateConstructorUsedError;
  bool get isResendActive => throw _privateConstructorUsedError;
  int get timeLeft => throw _privateConstructorUsedError;

  /// Create a copy of InputOtpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InputOtpStateCopyWith<InputOtpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputOtpStateCopyWith<$Res> {
  factory $InputOtpStateCopyWith(
    InputOtpState value,
    $Res Function(InputOtpState) then,
  ) = _$InputOtpStateCopyWithImpl<$Res, InputOtpState>;
  @useResult
  $Res call({
    bool isLoading,
    Option<String> failureMessage,
    bool isSuccessful,
    bool isResendActive,
    int timeLeft,
  });
}

/// @nodoc
class _$InputOtpStateCopyWithImpl<$Res, $Val extends InputOtpState>
    implements $InputOtpStateCopyWith<$Res> {
  _$InputOtpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InputOtpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failureMessage = null,
    Object? isSuccessful = null,
    Object? isResendActive = null,
    Object? timeLeft = null,
  }) {
    return _then(
      _value.copyWith(
            isLoading:
                null == isLoading
                    ? _value.isLoading
                    : isLoading // ignore: cast_nullable_to_non_nullable
                        as bool,
            failureMessage:
                null == failureMessage
                    ? _value.failureMessage
                    : failureMessage // ignore: cast_nullable_to_non_nullable
                        as Option<String>,
            isSuccessful:
                null == isSuccessful
                    ? _value.isSuccessful
                    : isSuccessful // ignore: cast_nullable_to_non_nullable
                        as bool,
            isResendActive:
                null == isResendActive
                    ? _value.isResendActive
                    : isResendActive // ignore: cast_nullable_to_non_nullable
                        as bool,
            timeLeft:
                null == timeLeft
                    ? _value.timeLeft
                    : timeLeft // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$InputOtpStateImplCopyWith<$Res>
    implements $InputOtpStateCopyWith<$Res> {
  factory _$$InputOtpStateImplCopyWith(
    _$InputOtpStateImpl value,
    $Res Function(_$InputOtpStateImpl) then,
  ) = __$$InputOtpStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isLoading,
    Option<String> failureMessage,
    bool isSuccessful,
    bool isResendActive,
    int timeLeft,
  });
}

/// @nodoc
class __$$InputOtpStateImplCopyWithImpl<$Res>
    extends _$InputOtpStateCopyWithImpl<$Res, _$InputOtpStateImpl>
    implements _$$InputOtpStateImplCopyWith<$Res> {
  __$$InputOtpStateImplCopyWithImpl(
    _$InputOtpStateImpl _value,
    $Res Function(_$InputOtpStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of InputOtpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failureMessage = null,
    Object? isSuccessful = null,
    Object? isResendActive = null,
    Object? timeLeft = null,
  }) {
    return _then(
      _$InputOtpStateImpl(
        isLoading:
            null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                    as bool,
        failureMessage:
            null == failureMessage
                ? _value.failureMessage
                : failureMessage // ignore: cast_nullable_to_non_nullable
                    as Option<String>,
        isSuccessful:
            null == isSuccessful
                ? _value.isSuccessful
                : isSuccessful // ignore: cast_nullable_to_non_nullable
                    as bool,
        isResendActive:
            null == isResendActive
                ? _value.isResendActive
                : isResendActive // ignore: cast_nullable_to_non_nullable
                    as bool,
        timeLeft:
            null == timeLeft
                ? _value.timeLeft
                : timeLeft // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc

class _$InputOtpStateImpl implements _InputOtpState {
  const _$InputOtpStateImpl({
    required this.isLoading,
    required this.failureMessage,
    required this.isSuccessful,
    required this.isResendActive,
    required this.timeLeft,
  });

  @override
  final bool isLoading;
  @override
  final Option<String> failureMessage;
  @override
  final bool isSuccessful;
  @override
  final bool isResendActive;
  @override
  final int timeLeft;

  @override
  String toString() {
    return 'InputOtpState(isLoading: $isLoading, failureMessage: $failureMessage, isSuccessful: $isSuccessful, isResendActive: $isResendActive, timeLeft: $timeLeft)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputOtpStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failureMessage, failureMessage) ||
                other.failureMessage == failureMessage) &&
            (identical(other.isSuccessful, isSuccessful) ||
                other.isSuccessful == isSuccessful) &&
            (identical(other.isResendActive, isResendActive) ||
                other.isResendActive == isResendActive) &&
            (identical(other.timeLeft, timeLeft) ||
                other.timeLeft == timeLeft));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    isLoading,
    failureMessage,
    isSuccessful,
    isResendActive,
    timeLeft,
  );

  /// Create a copy of InputOtpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InputOtpStateImplCopyWith<_$InputOtpStateImpl> get copyWith =>
      __$$InputOtpStateImplCopyWithImpl<_$InputOtpStateImpl>(this, _$identity);
}

abstract class _InputOtpState implements InputOtpState {
  const factory _InputOtpState({
    required final bool isLoading,
    required final Option<String> failureMessage,
    required final bool isSuccessful,
    required final bool isResendActive,
    required final int timeLeft,
  }) = _$InputOtpStateImpl;

  @override
  bool get isLoading;
  @override
  Option<String> get failureMessage;
  @override
  bool get isSuccessful;
  @override
  bool get isResendActive;
  @override
  int get timeLeft;

  /// Create a copy of InputOtpState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InputOtpStateImplCopyWith<_$InputOtpStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
