// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_phone_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InputPhoneState {

 bool get isLoading; Option<String> get failureMessage; bool get isSuccessful;
/// Create a copy of InputPhoneState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InputPhoneStateCopyWith<InputPhoneState> get copyWith => _$InputPhoneStateCopyWithImpl<InputPhoneState>(this as InputPhoneState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InputPhoneState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.failureMessage, failureMessage) || other.failureMessage == failureMessage)&&(identical(other.isSuccessful, isSuccessful) || other.isSuccessful == isSuccessful));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,failureMessage,isSuccessful);

@override
String toString() {
  return 'InputPhoneState(isLoading: $isLoading, failureMessage: $failureMessage, isSuccessful: $isSuccessful)';
}


}

/// @nodoc
abstract mixin class $InputPhoneStateCopyWith<$Res>  {
  factory $InputPhoneStateCopyWith(InputPhoneState value, $Res Function(InputPhoneState) _then) = _$InputPhoneStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, Option<String> failureMessage, bool isSuccessful
});




}
/// @nodoc
class _$InputPhoneStateCopyWithImpl<$Res>
    implements $InputPhoneStateCopyWith<$Res> {
  _$InputPhoneStateCopyWithImpl(this._self, this._then);

  final InputPhoneState _self;
  final $Res Function(InputPhoneState) _then;

/// Create a copy of InputPhoneState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? failureMessage = null,Object? isSuccessful = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,failureMessage: null == failureMessage ? _self.failureMessage : failureMessage // ignore: cast_nullable_to_non_nullable
as Option<String>,isSuccessful: null == isSuccessful ? _self.isSuccessful : isSuccessful // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [InputPhoneState].
extension InputPhoneStatePatterns on InputPhoneState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InputPhoneState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InputPhoneState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InputPhoneState value)  $default,){
final _that = this;
switch (_that) {
case _InputPhoneState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InputPhoneState value)?  $default,){
final _that = this;
switch (_that) {
case _InputPhoneState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  Option<String> failureMessage,  bool isSuccessful)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InputPhoneState() when $default != null:
return $default(_that.isLoading,_that.failureMessage,_that.isSuccessful);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  Option<String> failureMessage,  bool isSuccessful)  $default,) {final _that = this;
switch (_that) {
case _InputPhoneState():
return $default(_that.isLoading,_that.failureMessage,_that.isSuccessful);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  Option<String> failureMessage,  bool isSuccessful)?  $default,) {final _that = this;
switch (_that) {
case _InputPhoneState() when $default != null:
return $default(_that.isLoading,_that.failureMessage,_that.isSuccessful);case _:
  return null;

}
}

}

/// @nodoc


class _InputPhoneState implements InputPhoneState {
  const _InputPhoneState({required this.isLoading, required this.failureMessage, required this.isSuccessful});
  

@override final  bool isLoading;
@override final  Option<String> failureMessage;
@override final  bool isSuccessful;

/// Create a copy of InputPhoneState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InputPhoneStateCopyWith<_InputPhoneState> get copyWith => __$InputPhoneStateCopyWithImpl<_InputPhoneState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InputPhoneState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.failureMessage, failureMessage) || other.failureMessage == failureMessage)&&(identical(other.isSuccessful, isSuccessful) || other.isSuccessful == isSuccessful));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,failureMessage,isSuccessful);

@override
String toString() {
  return 'InputPhoneState(isLoading: $isLoading, failureMessage: $failureMessage, isSuccessful: $isSuccessful)';
}


}

/// @nodoc
abstract mixin class _$InputPhoneStateCopyWith<$Res> implements $InputPhoneStateCopyWith<$Res> {
  factory _$InputPhoneStateCopyWith(_InputPhoneState value, $Res Function(_InputPhoneState) _then) = __$InputPhoneStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, Option<String> failureMessage, bool isSuccessful
});




}
/// @nodoc
class __$InputPhoneStateCopyWithImpl<$Res>
    implements _$InputPhoneStateCopyWith<$Res> {
  __$InputPhoneStateCopyWithImpl(this._self, this._then);

  final _InputPhoneState _self;
  final $Res Function(_InputPhoneState) _then;

/// Create a copy of InputPhoneState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? failureMessage = null,Object? isSuccessful = null,}) {
  return _then(_InputPhoneState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,failureMessage: null == failureMessage ? _self.failureMessage : failureMessage // ignore: cast_nullable_to_non_nullable
as Option<String>,isSuccessful: null == isSuccessful ? _self.isSuccessful : isSuccessful // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
