// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_phone_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$InputPhoneState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<String> get failureMessage => throw _privateConstructorUsedError;
  bool get isSuccessful => throw _privateConstructorUsedError;

  /// Create a copy of InputPhoneState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InputPhoneStateCopyWith<InputPhoneState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputPhoneStateCopyWith<$Res> {
  factory $InputPhoneStateCopyWith(
    InputPhoneState value,
    $Res Function(InputPhoneState) then,
  ) = _$InputPhoneStateCopyWithImpl<$Res, InputPhoneState>;
  @useResult
  $Res call({bool isLoading, Option<String> failureMessage, bool isSuccessful});
}

/// @nodoc
class _$InputPhoneStateCopyWithImpl<$Res, $Val extends InputPhoneState>
    implements $InputPhoneStateCopyWith<$Res> {
  _$InputPhoneStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InputPhoneState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failureMessage = null,
    Object? isSuccessful = null,
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$InputPhoneStateImplCopyWith<$Res>
    implements $InputPhoneStateCopyWith<$Res> {
  factory _$$InputPhoneStateImplCopyWith(
    _$InputPhoneStateImpl value,
    $Res Function(_$InputPhoneStateImpl) then,
  ) = __$$InputPhoneStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, Option<String> failureMessage, bool isSuccessful});
}

/// @nodoc
class __$$InputPhoneStateImplCopyWithImpl<$Res>
    extends _$InputPhoneStateCopyWithImpl<$Res, _$InputPhoneStateImpl>
    implements _$$InputPhoneStateImplCopyWith<$Res> {
  __$$InputPhoneStateImplCopyWithImpl(
    _$InputPhoneStateImpl _value,
    $Res Function(_$InputPhoneStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of InputPhoneState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failureMessage = null,
    Object? isSuccessful = null,
  }) {
    return _then(
      _$InputPhoneStateImpl(
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
      ),
    );
  }
}

/// @nodoc

class _$InputPhoneStateImpl implements _InputPhoneState {
  const _$InputPhoneStateImpl({
    required this.isLoading,
    required this.failureMessage,
    required this.isSuccessful,
  });

  @override
  final bool isLoading;
  @override
  final Option<String> failureMessage;
  @override
  final bool isSuccessful;

  @override
  String toString() {
    return 'InputPhoneState(isLoading: $isLoading, failureMessage: $failureMessage, isSuccessful: $isSuccessful)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputPhoneStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failureMessage, failureMessage) ||
                other.failureMessage == failureMessage) &&
            (identical(other.isSuccessful, isSuccessful) ||
                other.isSuccessful == isSuccessful));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, failureMessage, isSuccessful);

  /// Create a copy of InputPhoneState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InputPhoneStateImplCopyWith<_$InputPhoneStateImpl> get copyWith =>
      __$$InputPhoneStateImplCopyWithImpl<_$InputPhoneStateImpl>(
        this,
        _$identity,
      );
}

abstract class _InputPhoneState implements InputPhoneState {
  const factory _InputPhoneState({
    required final bool isLoading,
    required final Option<String> failureMessage,
    required final bool isSuccessful,
  }) = _$InputPhoneStateImpl;

  @override
  bool get isLoading;
  @override
  Option<String> get failureMessage;
  @override
  bool get isSuccessful;

  /// Create a copy of InputPhoneState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InputPhoneStateImplCopyWith<_$InputPhoneStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
