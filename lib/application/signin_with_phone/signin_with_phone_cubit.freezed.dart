// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signin_with_phone_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SigninWithPhoneState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InputPhoneState inputPhoneState) inputPhone,
    required TResult Function(InputOtpState inputOtpState) inputOTP,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InputPhoneState inputPhoneState)? inputPhone,
    TResult? Function(InputOtpState inputOtpState)? inputOTP,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InputPhoneState inputPhoneState)? inputPhone,
    TResult Function(InputOtpState inputOtpState)? inputOTP,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InputPhone value) inputPhone,
    required TResult Function(_InputOTP value) inputOTP,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InputPhone value)? inputPhone,
    TResult? Function(_InputOTP value)? inputOTP,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InputPhone value)? inputPhone,
    TResult Function(_InputOTP value)? inputOTP,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SigninWithPhoneStateCopyWith<$Res> {
  factory $SigninWithPhoneStateCopyWith(
    SigninWithPhoneState value,
    $Res Function(SigninWithPhoneState) then,
  ) = _$SigninWithPhoneStateCopyWithImpl<$Res, SigninWithPhoneState>;
}

/// @nodoc
class _$SigninWithPhoneStateCopyWithImpl<
  $Res,
  $Val extends SigninWithPhoneState
>
    implements $SigninWithPhoneStateCopyWith<$Res> {
  _$SigninWithPhoneStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SigninWithPhoneState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InputPhoneImplCopyWith<$Res> {
  factory _$$InputPhoneImplCopyWith(
    _$InputPhoneImpl value,
    $Res Function(_$InputPhoneImpl) then,
  ) = __$$InputPhoneImplCopyWithImpl<$Res>;
  @useResult
  $Res call({InputPhoneState inputPhoneState});

  $InputPhoneStateCopyWith<$Res> get inputPhoneState;
}

/// @nodoc
class __$$InputPhoneImplCopyWithImpl<$Res>
    extends _$SigninWithPhoneStateCopyWithImpl<$Res, _$InputPhoneImpl>
    implements _$$InputPhoneImplCopyWith<$Res> {
  __$$InputPhoneImplCopyWithImpl(
    _$InputPhoneImpl _value,
    $Res Function(_$InputPhoneImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SigninWithPhoneState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? inputPhoneState = null}) {
    return _then(
      _$InputPhoneImpl(
        null == inputPhoneState
            ? _value.inputPhoneState
            : inputPhoneState // ignore: cast_nullable_to_non_nullable
                as InputPhoneState,
      ),
    );
  }

  /// Create a copy of SigninWithPhoneState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InputPhoneStateCopyWith<$Res> get inputPhoneState {
    return $InputPhoneStateCopyWith<$Res>(_value.inputPhoneState, (value) {
      return _then(_value.copyWith(inputPhoneState: value));
    });
  }
}

/// @nodoc

class _$InputPhoneImpl implements _InputPhone {
  const _$InputPhoneImpl(this.inputPhoneState);

  @override
  final InputPhoneState inputPhoneState;

  @override
  String toString() {
    return 'SigninWithPhoneState.inputPhone(inputPhoneState: $inputPhoneState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputPhoneImpl &&
            (identical(other.inputPhoneState, inputPhoneState) ||
                other.inputPhoneState == inputPhoneState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inputPhoneState);

  /// Create a copy of SigninWithPhoneState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InputPhoneImplCopyWith<_$InputPhoneImpl> get copyWith =>
      __$$InputPhoneImplCopyWithImpl<_$InputPhoneImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InputPhoneState inputPhoneState) inputPhone,
    required TResult Function(InputOtpState inputOtpState) inputOTP,
  }) {
    return inputPhone(inputPhoneState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InputPhoneState inputPhoneState)? inputPhone,
    TResult? Function(InputOtpState inputOtpState)? inputOTP,
  }) {
    return inputPhone?.call(inputPhoneState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InputPhoneState inputPhoneState)? inputPhone,
    TResult Function(InputOtpState inputOtpState)? inputOTP,
    required TResult orElse(),
  }) {
    if (inputPhone != null) {
      return inputPhone(inputPhoneState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InputPhone value) inputPhone,
    required TResult Function(_InputOTP value) inputOTP,
  }) {
    return inputPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InputPhone value)? inputPhone,
    TResult? Function(_InputOTP value)? inputOTP,
  }) {
    return inputPhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InputPhone value)? inputPhone,
    TResult Function(_InputOTP value)? inputOTP,
    required TResult orElse(),
  }) {
    if (inputPhone != null) {
      return inputPhone(this);
    }
    return orElse();
  }
}

abstract class _InputPhone implements SigninWithPhoneState {
  const factory _InputPhone(final InputPhoneState inputPhoneState) =
      _$InputPhoneImpl;

  InputPhoneState get inputPhoneState;

  /// Create a copy of SigninWithPhoneState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InputPhoneImplCopyWith<_$InputPhoneImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InputOTPImplCopyWith<$Res> {
  factory _$$InputOTPImplCopyWith(
    _$InputOTPImpl value,
    $Res Function(_$InputOTPImpl) then,
  ) = __$$InputOTPImplCopyWithImpl<$Res>;
  @useResult
  $Res call({InputOtpState inputOtpState});

  $InputOtpStateCopyWith<$Res> get inputOtpState;
}

/// @nodoc
class __$$InputOTPImplCopyWithImpl<$Res>
    extends _$SigninWithPhoneStateCopyWithImpl<$Res, _$InputOTPImpl>
    implements _$$InputOTPImplCopyWith<$Res> {
  __$$InputOTPImplCopyWithImpl(
    _$InputOTPImpl _value,
    $Res Function(_$InputOTPImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SigninWithPhoneState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? inputOtpState = null}) {
    return _then(
      _$InputOTPImpl(
        null == inputOtpState
            ? _value.inputOtpState
            : inputOtpState // ignore: cast_nullable_to_non_nullable
                as InputOtpState,
      ),
    );
  }

  /// Create a copy of SigninWithPhoneState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InputOtpStateCopyWith<$Res> get inputOtpState {
    return $InputOtpStateCopyWith<$Res>(_value.inputOtpState, (value) {
      return _then(_value.copyWith(inputOtpState: value));
    });
  }
}

/// @nodoc

class _$InputOTPImpl implements _InputOTP {
  const _$InputOTPImpl(this.inputOtpState);

  @override
  final InputOtpState inputOtpState;

  @override
  String toString() {
    return 'SigninWithPhoneState.inputOTP(inputOtpState: $inputOtpState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputOTPImpl &&
            (identical(other.inputOtpState, inputOtpState) ||
                other.inputOtpState == inputOtpState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inputOtpState);

  /// Create a copy of SigninWithPhoneState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InputOTPImplCopyWith<_$InputOTPImpl> get copyWith =>
      __$$InputOTPImplCopyWithImpl<_$InputOTPImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InputPhoneState inputPhoneState) inputPhone,
    required TResult Function(InputOtpState inputOtpState) inputOTP,
  }) {
    return inputOTP(inputOtpState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InputPhoneState inputPhoneState)? inputPhone,
    TResult? Function(InputOtpState inputOtpState)? inputOTP,
  }) {
    return inputOTP?.call(inputOtpState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InputPhoneState inputPhoneState)? inputPhone,
    TResult Function(InputOtpState inputOtpState)? inputOTP,
    required TResult orElse(),
  }) {
    if (inputOTP != null) {
      return inputOTP(inputOtpState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InputPhone value) inputPhone,
    required TResult Function(_InputOTP value) inputOTP,
  }) {
    return inputOTP(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InputPhone value)? inputPhone,
    TResult? Function(_InputOTP value)? inputOTP,
  }) {
    return inputOTP?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InputPhone value)? inputPhone,
    TResult Function(_InputOTP value)? inputOTP,
    required TResult orElse(),
  }) {
    if (inputOTP != null) {
      return inputOTP(this);
    }
    return orElse();
  }
}

abstract class _InputOTP implements SigninWithPhoneState {
  const factory _InputOTP(final InputOtpState inputOtpState) = _$InputOTPImpl;

  InputOtpState get inputOtpState;

  /// Create a copy of SigninWithPhoneState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InputOTPImplCopyWith<_$InputOTPImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
