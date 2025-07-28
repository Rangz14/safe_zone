// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'threat_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ThreatCategory {

 String get id; String get name; String get description; String get icon; int get createdAt;
/// Create a copy of ThreatCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ThreatCategoryCopyWith<ThreatCategory> get copyWith => _$ThreatCategoryCopyWithImpl<ThreatCategory>(this as ThreatCategory, _$identity);

  /// Serializes this ThreatCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThreatCategory&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,icon,createdAt);

@override
String toString() {
  return 'ThreatCategory(id: $id, name: $name, description: $description, icon: $icon, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $ThreatCategoryCopyWith<$Res>  {
  factory $ThreatCategoryCopyWith(ThreatCategory value, $Res Function(ThreatCategory) _then) = _$ThreatCategoryCopyWithImpl;
@useResult
$Res call({
 String id, String name, String description, String icon, int createdAt
});




}
/// @nodoc
class _$ThreatCategoryCopyWithImpl<$Res>
    implements $ThreatCategoryCopyWith<$Res> {
  _$ThreatCategoryCopyWithImpl(this._self, this._then);

  final ThreatCategory _self;
  final $Res Function(ThreatCategory) _then;

/// Create a copy of ThreatCategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = null,Object? icon = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ThreatCategory].
extension ThreatCategoryPatterns on ThreatCategory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ThreatCategory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ThreatCategory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ThreatCategory value)  $default,){
final _that = this;
switch (_that) {
case _ThreatCategory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ThreatCategory value)?  $default,){
final _that = this;
switch (_that) {
case _ThreatCategory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String description,  String icon,  int createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ThreatCategory() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.icon,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String description,  String icon,  int createdAt)  $default,) {final _that = this;
switch (_that) {
case _ThreatCategory():
return $default(_that.id,_that.name,_that.description,_that.icon,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String description,  String icon,  int createdAt)?  $default,) {final _that = this;
switch (_that) {
case _ThreatCategory() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.icon,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ThreatCategory implements ThreatCategory {
  const _ThreatCategory({required this.id, required this.name, required this.description, required this.icon, required this.createdAt});
  factory _ThreatCategory.fromJson(Map<String, dynamic> json) => _$ThreatCategoryFromJson(json);

@override final  String id;
@override final  String name;
@override final  String description;
@override final  String icon;
@override final  int createdAt;

/// Create a copy of ThreatCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ThreatCategoryCopyWith<_ThreatCategory> get copyWith => __$ThreatCategoryCopyWithImpl<_ThreatCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ThreatCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ThreatCategory&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,icon,createdAt);

@override
String toString() {
  return 'ThreatCategory(id: $id, name: $name, description: $description, icon: $icon, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ThreatCategoryCopyWith<$Res> implements $ThreatCategoryCopyWith<$Res> {
  factory _$ThreatCategoryCopyWith(_ThreatCategory value, $Res Function(_ThreatCategory) _then) = __$ThreatCategoryCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String description, String icon, int createdAt
});




}
/// @nodoc
class __$ThreatCategoryCopyWithImpl<$Res>
    implements _$ThreatCategoryCopyWith<$Res> {
  __$ThreatCategoryCopyWithImpl(this._self, this._then);

  final _ThreatCategory _self;
  final $Res Function(_ThreatCategory) _then;

/// Create a copy of ThreatCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,Object? icon = null,Object? createdAt = null,}) {
  return _then(_ThreatCategory(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
