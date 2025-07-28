// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'watch_threats_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WatchThreatsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WatchThreatsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WatchThreatsState()';
}


}

/// @nodoc
class $WatchThreatsStateCopyWith<$Res>  {
$WatchThreatsStateCopyWith(WatchThreatsState _, $Res Function(WatchThreatsState) __);
}


/// Adds pattern-matching-related methods to [WatchThreatsState].
extension WatchThreatsStatePatterns on WatchThreatsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Loading value)?  loading,TResult Function( _Watching value)?  watching,TResult Function( _Failed value)?  failed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading(_that);case _Watching() when watching != null:
return watching(_that);case _Failed() when failed != null:
return failed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Loading value)  loading,required TResult Function( _Watching value)  watching,required TResult Function( _Failed value)  failed,}){
final _that = this;
switch (_that) {
case _Loading():
return loading(_that);case _Watching():
return watching(_that);case _Failed():
return failed(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Loading value)?  loading,TResult? Function( _Watching value)?  watching,TResult? Function( _Failed value)?  failed,}){
final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading(_that);case _Watching() when watching != null:
return watching(_that);case _Failed() when failed != null:
return failed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( List<SafeZoneThreat> threats)?  watching,TResult Function( String message)?  failed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Watching() when watching != null:
return watching(_that.threats);case _Failed() when failed != null:
return failed(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( List<SafeZoneThreat> threats)  watching,required TResult Function( String message)  failed,}) {final _that = this;
switch (_that) {
case _Loading():
return loading();case _Watching():
return watching(_that.threats);case _Failed():
return failed(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( List<SafeZoneThreat> threats)?  watching,TResult? Function( String message)?  failed,}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Watching() when watching != null:
return watching(_that.threats);case _Failed() when failed != null:
return failed(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Loading implements WatchThreatsState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WatchThreatsState.loading()';
}


}




/// @nodoc


class _Watching implements WatchThreatsState {
  const _Watching(final  List<SafeZoneThreat> threats): _threats = threats;
  

 final  List<SafeZoneThreat> _threats;
 List<SafeZoneThreat> get threats {
  if (_threats is EqualUnmodifiableListView) return _threats;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_threats);
}


/// Create a copy of WatchThreatsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WatchingCopyWith<_Watching> get copyWith => __$WatchingCopyWithImpl<_Watching>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Watching&&const DeepCollectionEquality().equals(other._threats, _threats));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_threats));

@override
String toString() {
  return 'WatchThreatsState.watching(threats: $threats)';
}


}

/// @nodoc
abstract mixin class _$WatchingCopyWith<$Res> implements $WatchThreatsStateCopyWith<$Res> {
  factory _$WatchingCopyWith(_Watching value, $Res Function(_Watching) _then) = __$WatchingCopyWithImpl;
@useResult
$Res call({
 List<SafeZoneThreat> threats
});




}
/// @nodoc
class __$WatchingCopyWithImpl<$Res>
    implements _$WatchingCopyWith<$Res> {
  __$WatchingCopyWithImpl(this._self, this._then);

  final _Watching _self;
  final $Res Function(_Watching) _then;

/// Create a copy of WatchThreatsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? threats = null,}) {
  return _then(_Watching(
null == threats ? _self._threats : threats // ignore: cast_nullable_to_non_nullable
as List<SafeZoneThreat>,
  ));
}


}

/// @nodoc


class _Failed implements WatchThreatsState {
  const _Failed(this.message);
  

 final  String message;

/// Create a copy of WatchThreatsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailedCopyWith<_Failed> get copyWith => __$FailedCopyWithImpl<_Failed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Failed&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'WatchThreatsState.failed(message: $message)';
}


}

/// @nodoc
abstract mixin class _$FailedCopyWith<$Res> implements $WatchThreatsStateCopyWith<$Res> {
  factory _$FailedCopyWith(_Failed value, $Res Function(_Failed) _then) = __$FailedCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$FailedCopyWithImpl<$Res>
    implements _$FailedCopyWith<$Res> {
  __$FailedCopyWithImpl(this._self, this._then);

  final _Failed _self;
  final $Res Function(_Failed) _then;

/// Create a copy of WatchThreatsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Failed(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
