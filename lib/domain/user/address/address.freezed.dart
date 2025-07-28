// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SafeZoneUserAddress {

 String get userId; String get townId; String get address; int get createdAt;
/// Create a copy of SafeZoneUserAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SafeZoneUserAddressCopyWith<SafeZoneUserAddress> get copyWith => _$SafeZoneUserAddressCopyWithImpl<SafeZoneUserAddress>(this as SafeZoneUserAddress, _$identity);

  /// Serializes this SafeZoneUserAddress to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SafeZoneUserAddress&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.townId, townId) || other.townId == townId)&&(identical(other.address, address) || other.address == address)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,townId,address,createdAt);

@override
String toString() {
  return 'SafeZoneUserAddress(userId: $userId, townId: $townId, address: $address, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $SafeZoneUserAddressCopyWith<$Res>  {
  factory $SafeZoneUserAddressCopyWith(SafeZoneUserAddress value, $Res Function(SafeZoneUserAddress) _then) = _$SafeZoneUserAddressCopyWithImpl;
@useResult
$Res call({
 String userId, String townId, String address, int createdAt
});




}
/// @nodoc
class _$SafeZoneUserAddressCopyWithImpl<$Res>
    implements $SafeZoneUserAddressCopyWith<$Res> {
  _$SafeZoneUserAddressCopyWithImpl(this._self, this._then);

  final SafeZoneUserAddress _self;
  final $Res Function(SafeZoneUserAddress) _then;

/// Create a copy of SafeZoneUserAddress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? townId = null,Object? address = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,townId: null == townId ? _self.townId : townId // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SafeZoneUserAddress].
extension SafeZoneUserAddressPatterns on SafeZoneUserAddress {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SafeZoneUserAddress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SafeZoneUserAddress() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SafeZoneUserAddress value)  $default,){
final _that = this;
switch (_that) {
case _SafeZoneUserAddress():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SafeZoneUserAddress value)?  $default,){
final _that = this;
switch (_that) {
case _SafeZoneUserAddress() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  String townId,  String address,  int createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SafeZoneUserAddress() when $default != null:
return $default(_that.userId,_that.townId,_that.address,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  String townId,  String address,  int createdAt)  $default,) {final _that = this;
switch (_that) {
case _SafeZoneUserAddress():
return $default(_that.userId,_that.townId,_that.address,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  String townId,  String address,  int createdAt)?  $default,) {final _that = this;
switch (_that) {
case _SafeZoneUserAddress() when $default != null:
return $default(_that.userId,_that.townId,_that.address,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SafeZoneUserAddress extends SafeZoneUserAddress {
  const _SafeZoneUserAddress({required this.userId, required this.townId, required this.address, required this.createdAt}): super._();
  factory _SafeZoneUserAddress.fromJson(Map<String, dynamic> json) => _$SafeZoneUserAddressFromJson(json);

@override final  String userId;
@override final  String townId;
@override final  String address;
@override final  int createdAt;

/// Create a copy of SafeZoneUserAddress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SafeZoneUserAddressCopyWith<_SafeZoneUserAddress> get copyWith => __$SafeZoneUserAddressCopyWithImpl<_SafeZoneUserAddress>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SafeZoneUserAddressToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SafeZoneUserAddress&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.townId, townId) || other.townId == townId)&&(identical(other.address, address) || other.address == address)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,townId,address,createdAt);

@override
String toString() {
  return 'SafeZoneUserAddress(userId: $userId, townId: $townId, address: $address, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$SafeZoneUserAddressCopyWith<$Res> implements $SafeZoneUserAddressCopyWith<$Res> {
  factory _$SafeZoneUserAddressCopyWith(_SafeZoneUserAddress value, $Res Function(_SafeZoneUserAddress) _then) = __$SafeZoneUserAddressCopyWithImpl;
@override @useResult
$Res call({
 String userId, String townId, String address, int createdAt
});




}
/// @nodoc
class __$SafeZoneUserAddressCopyWithImpl<$Res>
    implements _$SafeZoneUserAddressCopyWith<$Res> {
  __$SafeZoneUserAddressCopyWithImpl(this._self, this._then);

  final _SafeZoneUserAddress _self;
  final $Res Function(_SafeZoneUserAddress) _then;

/// Create a copy of SafeZoneUserAddress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? townId = null,Object? address = null,Object? createdAt = null,}) {
  return _then(_SafeZoneUserAddress(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,townId: null == townId ? _self.townId : townId // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
