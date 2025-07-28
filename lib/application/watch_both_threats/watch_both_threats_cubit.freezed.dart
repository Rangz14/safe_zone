// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'watch_both_threats_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WatchBothThreatsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WatchBothThreatsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WatchBothThreatsState()';
}


}

/// @nodoc
class $WatchBothThreatsStateCopyWith<$Res>  {
$WatchBothThreatsStateCopyWith(WatchBothThreatsState _, $Res Function(WatchBothThreatsState) __);
}


/// Adds pattern-matching-related methods to [WatchBothThreatsState].
extension WatchBothThreatsStatePatterns on WatchBothThreatsState {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( List<SafeZoneThreat> ongoing,  List<SafeZoneThreat> previous)?  watching,TResult Function( String message)?  failed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Watching() when watching != null:
return watching(_that.ongoing,_that.previous);case _Failed() when failed != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( List<SafeZoneThreat> ongoing,  List<SafeZoneThreat> previous)  watching,required TResult Function( String message)  failed,}) {final _that = this;
switch (_that) {
case _Loading():
return loading();case _Watching():
return watching(_that.ongoing,_that.previous);case _Failed():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( List<SafeZoneThreat> ongoing,  List<SafeZoneThreat> previous)?  watching,TResult? Function( String message)?  failed,}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Watching() when watching != null:
return watching(_that.ongoing,_that.previous);case _Failed() when failed != null:
return failed(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Loading implements WatchBothThreatsState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WatchBothThreatsState.loading()';
}


}




/// @nodoc


class _Watching implements WatchBothThreatsState {
  const _Watching(final  List<SafeZoneThreat> ongoing, final  List<SafeZoneThreat> previous): _ongoing = ongoing,_previous = previous;
  

 final  List<SafeZoneThreat> _ongoing;
 List<SafeZoneThreat> get ongoing {
  if (_ongoing is EqualUnmodifiableListView) return _ongoing;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ongoing);
}

 final  List<SafeZoneThreat> _previous;
 List<SafeZoneThreat> get previous {
  if (_previous is EqualUnmodifiableListView) return _previous;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_previous);
}


/// Create a copy of WatchBothThreatsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WatchingCopyWith<_Watching> get copyWith => __$WatchingCopyWithImpl<_Watching>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Watching&&const DeepCollectionEquality().equals(other._ongoing, _ongoing)&&const DeepCollectionEquality().equals(other._previous, _previous));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_ongoing),const DeepCollectionEquality().hash(_previous));

@override
String toString() {
  return 'WatchBothThreatsState.watching(ongoing: $ongoing, previous: $previous)';
}


}

/// @nodoc
abstract mixin class _$WatchingCopyWith<$Res> implements $WatchBothThreatsStateCopyWith<$Res> {
  factory _$WatchingCopyWith(_Watching value, $Res Function(_Watching) _then) = __$WatchingCopyWithImpl;
@useResult
$Res call({
 List<SafeZoneThreat> ongoing, List<SafeZoneThreat> previous
});




}
/// @nodoc
class __$WatchingCopyWithImpl<$Res>
    implements _$WatchingCopyWith<$Res> {
  __$WatchingCopyWithImpl(this._self, this._then);

  final _Watching _self;
  final $Res Function(_Watching) _then;

/// Create a copy of WatchBothThreatsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? ongoing = null,Object? previous = null,}) {
  return _then(_Watching(
null == ongoing ? _self._ongoing : ongoing // ignore: cast_nullable_to_non_nullable
as List<SafeZoneThreat>,null == previous ? _self._previous : previous // ignore: cast_nullable_to_non_nullable
as List<SafeZoneThreat>,
  ));
}


}

/// @nodoc


class _Failed implements WatchBothThreatsState {
  const _Failed(this.message);
  

 final  String message;

/// Create a copy of WatchBothThreatsState
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
  return 'WatchBothThreatsState.failed(message: $message)';
}


}

/// @nodoc
abstract mixin class _$FailedCopyWith<$Res> implements $WatchBothThreatsStateCopyWith<$Res> {
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

/// Create a copy of WatchBothThreatsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Failed(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
