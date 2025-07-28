// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signin_with_phone_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SigninWithPhoneState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SigninWithPhoneState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SigninWithPhoneState()';
}


}

/// @nodoc
class $SigninWithPhoneStateCopyWith<$Res>  {
$SigninWithPhoneStateCopyWith(SigninWithPhoneState _, $Res Function(SigninWithPhoneState) __);
}


/// Adds pattern-matching-related methods to [SigninWithPhoneState].
extension SigninWithPhoneStatePatterns on SigninWithPhoneState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _InputPhone value)?  inputPhone,TResult Function( _InputOTP value)?  inputOTP,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InputPhone() when inputPhone != null:
return inputPhone(_that);case _InputOTP() when inputOTP != null:
return inputOTP(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _InputPhone value)  inputPhone,required TResult Function( _InputOTP value)  inputOTP,}){
final _that = this;
switch (_that) {
case _InputPhone():
return inputPhone(_that);case _InputOTP():
return inputOTP(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _InputPhone value)?  inputPhone,TResult? Function( _InputOTP value)?  inputOTP,}){
final _that = this;
switch (_that) {
case _InputPhone() when inputPhone != null:
return inputPhone(_that);case _InputOTP() when inputOTP != null:
return inputOTP(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( InputPhoneState inputPhoneState)?  inputPhone,TResult Function( InputOtpState inputOtpState)?  inputOTP,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InputPhone() when inputPhone != null:
return inputPhone(_that.inputPhoneState);case _InputOTP() when inputOTP != null:
return inputOTP(_that.inputOtpState);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( InputPhoneState inputPhoneState)  inputPhone,required TResult Function( InputOtpState inputOtpState)  inputOTP,}) {final _that = this;
switch (_that) {
case _InputPhone():
return inputPhone(_that.inputPhoneState);case _InputOTP():
return inputOTP(_that.inputOtpState);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( InputPhoneState inputPhoneState)?  inputPhone,TResult? Function( InputOtpState inputOtpState)?  inputOTP,}) {final _that = this;
switch (_that) {
case _InputPhone() when inputPhone != null:
return inputPhone(_that.inputPhoneState);case _InputOTP() when inputOTP != null:
return inputOTP(_that.inputOtpState);case _:
  return null;

}
}

}

/// @nodoc


class _InputPhone implements SigninWithPhoneState {
  const _InputPhone(this.inputPhoneState);
  

 final  InputPhoneState inputPhoneState;

/// Create a copy of SigninWithPhoneState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InputPhoneCopyWith<_InputPhone> get copyWith => __$InputPhoneCopyWithImpl<_InputPhone>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InputPhone&&(identical(other.inputPhoneState, inputPhoneState) || other.inputPhoneState == inputPhoneState));
}


@override
int get hashCode => Object.hash(runtimeType,inputPhoneState);

@override
String toString() {
  return 'SigninWithPhoneState.inputPhone(inputPhoneState: $inputPhoneState)';
}


}

/// @nodoc
abstract mixin class _$InputPhoneCopyWith<$Res> implements $SigninWithPhoneStateCopyWith<$Res> {
  factory _$InputPhoneCopyWith(_InputPhone value, $Res Function(_InputPhone) _then) = __$InputPhoneCopyWithImpl;
@useResult
$Res call({
 InputPhoneState inputPhoneState
});


$InputPhoneStateCopyWith<$Res> get inputPhoneState;

}
/// @nodoc
class __$InputPhoneCopyWithImpl<$Res>
    implements _$InputPhoneCopyWith<$Res> {
  __$InputPhoneCopyWithImpl(this._self, this._then);

  final _InputPhone _self;
  final $Res Function(_InputPhone) _then;

/// Create a copy of SigninWithPhoneState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? inputPhoneState = null,}) {
  return _then(_InputPhone(
null == inputPhoneState ? _self.inputPhoneState : inputPhoneState // ignore: cast_nullable_to_non_nullable
as InputPhoneState,
  ));
}

/// Create a copy of SigninWithPhoneState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InputPhoneStateCopyWith<$Res> get inputPhoneState {
  
  return $InputPhoneStateCopyWith<$Res>(_self.inputPhoneState, (value) {
    return _then(_self.copyWith(inputPhoneState: value));
  });
}
}

/// @nodoc


class _InputOTP implements SigninWithPhoneState {
  const _InputOTP(this.inputOtpState);
  

 final  InputOtpState inputOtpState;

/// Create a copy of SigninWithPhoneState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InputOTPCopyWith<_InputOTP> get copyWith => __$InputOTPCopyWithImpl<_InputOTP>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InputOTP&&(identical(other.inputOtpState, inputOtpState) || other.inputOtpState == inputOtpState));
}


@override
int get hashCode => Object.hash(runtimeType,inputOtpState);

@override
String toString() {
  return 'SigninWithPhoneState.inputOTP(inputOtpState: $inputOtpState)';
}


}

/// @nodoc
abstract mixin class _$InputOTPCopyWith<$Res> implements $SigninWithPhoneStateCopyWith<$Res> {
  factory _$InputOTPCopyWith(_InputOTP value, $Res Function(_InputOTP) _then) = __$InputOTPCopyWithImpl;
@useResult
$Res call({
 InputOtpState inputOtpState
});


$InputOtpStateCopyWith<$Res> get inputOtpState;

}
/// @nodoc
class __$InputOTPCopyWithImpl<$Res>
    implements _$InputOTPCopyWith<$Res> {
  __$InputOTPCopyWithImpl(this._self, this._then);

  final _InputOTP _self;
  final $Res Function(_InputOTP) _then;

/// Create a copy of SigninWithPhoneState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? inputOtpState = null,}) {
  return _then(_InputOTP(
null == inputOtpState ? _self.inputOtpState : inputOtpState // ignore: cast_nullable_to_non_nullable
as InputOtpState,
  ));
}

/// Create a copy of SigninWithPhoneState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InputOtpStateCopyWith<$Res> get inputOtpState {
  
  return $InputOtpStateCopyWith<$Res>(_self.inputOtpState, (value) {
    return _then(_self.copyWith(inputOtpState: value));
  });
}
}

// dart format on
