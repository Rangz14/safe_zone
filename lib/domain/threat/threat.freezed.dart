// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'threat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SafeZoneThreat {

 String get id; String get townId; int get startedAt; int get endedAt; String get categoryId; int get createdAt;
/// Create a copy of SafeZoneThreat
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SafeZoneThreatCopyWith<SafeZoneThreat> get copyWith => _$SafeZoneThreatCopyWithImpl<SafeZoneThreat>(this as SafeZoneThreat, _$identity);

  /// Serializes this SafeZoneThreat to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SafeZoneThreat&&(identical(other.id, id) || other.id == id)&&(identical(other.townId, townId) || other.townId == townId)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.endedAt, endedAt) || other.endedAt == endedAt)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,townId,startedAt,endedAt,categoryId,createdAt);

@override
String toString() {
  return 'SafeZoneThreat(id: $id, townId: $townId, startedAt: $startedAt, endedAt: $endedAt, categoryId: $categoryId, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $SafeZoneThreatCopyWith<$Res>  {
  factory $SafeZoneThreatCopyWith(SafeZoneThreat value, $Res Function(SafeZoneThreat) _then) = _$SafeZoneThreatCopyWithImpl;
@useResult
$Res call({
 String id, String townId, int startedAt, int endedAt, String categoryId, int createdAt
});




}
/// @nodoc
class _$SafeZoneThreatCopyWithImpl<$Res>
    implements $SafeZoneThreatCopyWith<$Res> {
  _$SafeZoneThreatCopyWithImpl(this._self, this._then);

  final SafeZoneThreat _self;
  final $Res Function(SafeZoneThreat) _then;

/// Create a copy of SafeZoneThreat
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? townId = null,Object? startedAt = null,Object? endedAt = null,Object? categoryId = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,townId: null == townId ? _self.townId : townId // ignore: cast_nullable_to_non_nullable
as String,startedAt: null == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as int,endedAt: null == endedAt ? _self.endedAt : endedAt // ignore: cast_nullable_to_non_nullable
as int,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SafeZoneThreat].
extension SafeZoneThreatPatterns on SafeZoneThreat {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SafeZoneThreat value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SafeZoneThreat() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SafeZoneThreat value)  $default,){
final _that = this;
switch (_that) {
case _SafeZoneThreat():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SafeZoneThreat value)?  $default,){
final _that = this;
switch (_that) {
case _SafeZoneThreat() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String townId,  int startedAt,  int endedAt,  String categoryId,  int createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SafeZoneThreat() when $default != null:
return $default(_that.id,_that.townId,_that.startedAt,_that.endedAt,_that.categoryId,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String townId,  int startedAt,  int endedAt,  String categoryId,  int createdAt)  $default,) {final _that = this;
switch (_that) {
case _SafeZoneThreat():
return $default(_that.id,_that.townId,_that.startedAt,_that.endedAt,_that.categoryId,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String townId,  int startedAt,  int endedAt,  String categoryId,  int createdAt)?  $default,) {final _that = this;
switch (_that) {
case _SafeZoneThreat() when $default != null:
return $default(_that.id,_that.townId,_that.startedAt,_that.endedAt,_that.categoryId,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SafeZoneThreat extends SafeZoneThreat {
  const _SafeZoneThreat({required this.id, required this.townId, required this.startedAt, required this.endedAt, required this.categoryId, required this.createdAt}): super._();
  factory _SafeZoneThreat.fromJson(Map<String, dynamic> json) => _$SafeZoneThreatFromJson(json);

@override final  String id;
@override final  String townId;
@override final  int startedAt;
@override final  int endedAt;
@override final  String categoryId;
@override final  int createdAt;

/// Create a copy of SafeZoneThreat
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SafeZoneThreatCopyWith<_SafeZoneThreat> get copyWith => __$SafeZoneThreatCopyWithImpl<_SafeZoneThreat>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SafeZoneThreatToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SafeZoneThreat&&(identical(other.id, id) || other.id == id)&&(identical(other.townId, townId) || other.townId == townId)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.endedAt, endedAt) || other.endedAt == endedAt)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,townId,startedAt,endedAt,categoryId,createdAt);

@override
String toString() {
  return 'SafeZoneThreat(id: $id, townId: $townId, startedAt: $startedAt, endedAt: $endedAt, categoryId: $categoryId, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$SafeZoneThreatCopyWith<$Res> implements $SafeZoneThreatCopyWith<$Res> {
  factory _$SafeZoneThreatCopyWith(_SafeZoneThreat value, $Res Function(_SafeZoneThreat) _then) = __$SafeZoneThreatCopyWithImpl;
@override @useResult
$Res call({
 String id, String townId, int startedAt, int endedAt, String categoryId, int createdAt
});




}
/// @nodoc
class __$SafeZoneThreatCopyWithImpl<$Res>
    implements _$SafeZoneThreatCopyWith<$Res> {
  __$SafeZoneThreatCopyWithImpl(this._self, this._then);

  final _SafeZoneThreat _self;
  final $Res Function(_SafeZoneThreat) _then;

/// Create a copy of SafeZoneThreat
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? townId = null,Object? startedAt = null,Object? endedAt = null,Object? categoryId = null,Object? createdAt = null,}) {
  return _then(_SafeZoneThreat(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,townId: null == townId ? _self.townId : townId // ignore: cast_nullable_to_non_nullable
as String,startedAt: null == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as int,endedAt: null == endedAt ? _self.endedAt : endedAt // ignore: cast_nullable_to_non_nullable
as int,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
