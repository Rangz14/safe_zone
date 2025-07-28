// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_otp_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InputOtpState {

 bool get isLoading; Option<String> get failureMessage; bool get isSuccessful; bool get isResendActive; int get timeLeft;
/// Create a copy of InputOtpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InputOtpStateCopyWith<InputOtpState> get copyWith => _$InputOtpStateCopyWithImpl<InputOtpState>(this as InputOtpState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InputOtpState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.failureMessage, failureMessage) || other.failureMessage == failureMessage)&&(identical(other.isSuccessful, isSuccessful) || other.isSuccessful == isSuccessful)&&(identical(other.isResendActive, isResendActive) || other.isResendActive == isResendActive)&&(identical(other.timeLeft, timeLeft) || other.timeLeft == timeLeft));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,failureMessage,isSuccessful,isResendActive,timeLeft);

@override
String toString() {
  return 'InputOtpState(isLoading: $isLoading, failureMessage: $failureMessage, isSuccessful: $isSuccessful, isResendActive: $isResendActive, timeLeft: $timeLeft)';
}


}

/// @nodoc
abstract mixin class $InputOtpStateCopyWith<$Res>  {
  factory $InputOtpStateCopyWith(InputOtpState value, $Res Function(InputOtpState) _then) = _$InputOtpStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, Option<String> failureMessage, bool isSuccessful, bool isResendActive, int timeLeft
});




}
/// @nodoc
class _$InputOtpStateCopyWithImpl<$Res>
    implements $InputOtpStateCopyWith<$Res> {
  _$InputOtpStateCopyWithImpl(this._self, this._then);

  final InputOtpState _self;
  final $Res Function(InputOtpState) _then;

/// Create a copy of InputOtpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? failureMessage = null,Object? isSuccessful = null,Object? isResendActive = null,Object? timeLeft = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,failureMessage: null == failureMessage ? _self.failureMessage : failureMessage // ignore: cast_nullable_to_non_nullable
as Option<String>,isSuccessful: null == isSuccessful ? _self.isSuccessful : isSuccessful // ignore: cast_nullable_to_non_nullable
as bool,isResendActive: null == isResendActive ? _self.isResendActive : isResendActive // ignore: cast_nullable_to_non_nullable
as bool,timeLeft: null == timeLeft ? _self.timeLeft : timeLeft // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [InputOtpState].
extension InputOtpStatePatterns on InputOtpState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InputOtpState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InputOtpState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InputOtpState value)  $default,){
final _that = this;
switch (_that) {
case _InputOtpState():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InputOtpState value)?  $default,){
final _that = this;
switch (_that) {
case _InputOtpState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  Option<String> failureMessage,  bool isSuccessful,  bool isResendActive,  int timeLeft)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InputOtpState() when $default != null:
return $default(_that.isLoading,_that.failureMessage,_that.isSuccessful,_that.isResendActive,_that.timeLeft);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  Option<String> failureMessage,  bool isSuccessful,  bool isResendActive,  int timeLeft)  $default,) {final _that = this;
switch (_that) {
case _InputOtpState():
return $default(_that.isLoading,_that.failureMessage,_that.isSuccessful,_that.isResendActive,_that.timeLeft);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  Option<String> failureMessage,  bool isSuccessful,  bool isResendActive,  int timeLeft)?  $default,) {final _that = this;
switch (_that) {
case _InputOtpState() when $default != null:
return $default(_that.isLoading,_that.failureMessage,_that.isSuccessful,_that.isResendActive,_that.timeLeft);case _:
  return null;

}
}

}

/// @nodoc


class _InputOtpState implements InputOtpState {
  const _InputOtpState({required this.isLoading, required this.failureMessage, required this.isSuccessful, required this.isResendActive, required this.timeLeft});
  

@override final  bool isLoading;
@override final  Option<String> failureMessage;
@override final  bool isSuccessful;
@override final  bool isResendActive;
@override final  int timeLeft;

/// Create a copy of InputOtpState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InputOtpStateCopyWith<_InputOtpState> get copyWith => __$InputOtpStateCopyWithImpl<_InputOtpState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InputOtpState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.failureMessage, failureMessage) || other.failureMessage == failureMessage)&&(identical(other.isSuccessful, isSuccessful) || other.isSuccessful == isSuccessful)&&(identical(other.isResendActive, isResendActive) || other.isResendActive == isResendActive)&&(identical(other.timeLeft, timeLeft) || other.timeLeft == timeLeft));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,failureMessage,isSuccessful,isResendActive,timeLeft);

@override
String toString() {
  return 'InputOtpState(isLoading: $isLoading, failureMessage: $failureMessage, isSuccessful: $isSuccessful, isResendActive: $isResendActive, timeLeft: $timeLeft)';
}


}

/// @nodoc
abstract mixin class _$InputOtpStateCopyWith<$Res> implements $InputOtpStateCopyWith<$Res> {
  factory _$InputOtpStateCopyWith(_InputOtpState value, $Res Function(_InputOtpState) _then) = __$InputOtpStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, Option<String> failureMessage, bool isSuccessful, bool isResendActive, int timeLeft
});




}
/// @nodoc
class __$InputOtpStateCopyWithImpl<$Res>
    implements _$InputOtpStateCopyWith<$Res> {
  __$InputOtpStateCopyWithImpl(this._self, this._then);

  final _InputOtpState _self;
  final $Res Function(_InputOtpState) _then;

/// Create a copy of InputOtpState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? failureMessage = null,Object? isSuccessful = null,Object? isResendActive = null,Object? timeLeft = null,}) {
  return _then(_InputOtpState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,failureMessage: null == failureMessage ? _self.failureMessage : failureMessage // ignore: cast_nullable_to_non_nullable
as Option<String>,isSuccessful: null == isSuccessful ? _self.isSuccessful : isSuccessful // ignore: cast_nullable_to_non_nullable
as bool,isResendActive: null == isResendActive ? _self.isResendActive : isResendActive // ignore: cast_nullable_to_non_nullable
as bool,timeLeft: null == timeLeft ? _self.timeLeft : timeLeft // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
