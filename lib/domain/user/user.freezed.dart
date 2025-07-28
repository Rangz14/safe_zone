// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SafeZoneUser {

 String get id; String get name; String get phone; String get image; int get createdAt;
/// Create a copy of SafeZoneUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SafeZoneUserCopyWith<SafeZoneUser> get copyWith => _$SafeZoneUserCopyWithImpl<SafeZoneUser>(this as SafeZoneUser, _$identity);

  /// Serializes this SafeZoneUser to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SafeZoneUser&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.image, image) || other.image == image)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,phone,image,createdAt);

@override
String toString() {
  return 'SafeZoneUser(id: $id, name: $name, phone: $phone, image: $image, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $SafeZoneUserCopyWith<$Res>  {
  factory $SafeZoneUserCopyWith(SafeZoneUser value, $Res Function(SafeZoneUser) _then) = _$SafeZoneUserCopyWithImpl;
@useResult
$Res call({
 String id, String name, String phone, String image, int createdAt
});




}
/// @nodoc
class _$SafeZoneUserCopyWithImpl<$Res>
    implements $SafeZoneUserCopyWith<$Res> {
  _$SafeZoneUserCopyWithImpl(this._self, this._then);

  final SafeZoneUser _self;
  final $Res Function(SafeZoneUser) _then;

/// Create a copy of SafeZoneUser
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? phone = null,Object? image = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SafeZoneUser].
extension SafeZoneUserPatterns on SafeZoneUser {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SafeZoneUser value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SafeZoneUser() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SafeZoneUser value)  $default,){
final _that = this;
switch (_that) {
case _SafeZoneUser():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SafeZoneUser value)?  $default,){
final _that = this;
switch (_that) {
case _SafeZoneUser() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String phone,  String image,  int createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SafeZoneUser() when $default != null:
return $default(_that.id,_that.name,_that.phone,_that.image,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String phone,  String image,  int createdAt)  $default,) {final _that = this;
switch (_that) {
case _SafeZoneUser():
return $default(_that.id,_that.name,_that.phone,_that.image,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String phone,  String image,  int createdAt)?  $default,) {final _that = this;
switch (_that) {
case _SafeZoneUser() when $default != null:
return $default(_that.id,_that.name,_that.phone,_that.image,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SafeZoneUser implements SafeZoneUser {
  const _SafeZoneUser({required this.id, required this.name, required this.phone, required this.image, required this.createdAt});
  factory _SafeZoneUser.fromJson(Map<String, dynamic> json) => _$SafeZoneUserFromJson(json);

@override final  String id;
@override final  String name;
@override final  String phone;
@override final  String image;
@override final  int createdAt;

/// Create a copy of SafeZoneUser
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SafeZoneUserCopyWith<_SafeZoneUser> get copyWith => __$SafeZoneUserCopyWithImpl<_SafeZoneUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SafeZoneUserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SafeZoneUser&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.image, image) || other.image == image)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,phone,image,createdAt);

@override
String toString() {
  return 'SafeZoneUser(id: $id, name: $name, phone: $phone, image: $image, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$SafeZoneUserCopyWith<$Res> implements $SafeZoneUserCopyWith<$Res> {
  factory _$SafeZoneUserCopyWith(_SafeZoneUser value, $Res Function(_SafeZoneUser) _then) = __$SafeZoneUserCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String phone, String image, int createdAt
});




}
/// @nodoc
class __$SafeZoneUserCopyWithImpl<$Res>
    implements _$SafeZoneUserCopyWith<$Res> {
  __$SafeZoneUserCopyWithImpl(this._self, this._then);

  final _SafeZoneUser _self;
  final $Res Function(_SafeZoneUser) _then;

/// Create a copy of SafeZoneUser
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? phone = null,Object? image = null,Object? createdAt = null,}) {
  return _then(_SafeZoneUser(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
