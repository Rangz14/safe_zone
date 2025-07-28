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
mixin _$OrganizationAddress {

 String get organizationId; String get townId; String get address; int get createdAt;
/// Create a copy of OrganizationAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrganizationAddressCopyWith<OrganizationAddress> get copyWith => _$OrganizationAddressCopyWithImpl<OrganizationAddress>(this as OrganizationAddress, _$identity);

  /// Serializes this OrganizationAddress to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrganizationAddress&&(identical(other.organizationId, organizationId) || other.organizationId == organizationId)&&(identical(other.townId, townId) || other.townId == townId)&&(identical(other.address, address) || other.address == address)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,organizationId,townId,address,createdAt);

@override
String toString() {
  return 'OrganizationAddress(organizationId: $organizationId, townId: $townId, address: $address, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $OrganizationAddressCopyWith<$Res>  {
  factory $OrganizationAddressCopyWith(OrganizationAddress value, $Res Function(OrganizationAddress) _then) = _$OrganizationAddressCopyWithImpl;
@useResult
$Res call({
 String organizationId, String townId, String address, int createdAt
});




}
/// @nodoc
class _$OrganizationAddressCopyWithImpl<$Res>
    implements $OrganizationAddressCopyWith<$Res> {
  _$OrganizationAddressCopyWithImpl(this._self, this._then);

  final OrganizationAddress _self;
  final $Res Function(OrganizationAddress) _then;

/// Create a copy of OrganizationAddress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? organizationId = null,Object? townId = null,Object? address = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
organizationId: null == organizationId ? _self.organizationId : organizationId // ignore: cast_nullable_to_non_nullable
as String,townId: null == townId ? _self.townId : townId // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [OrganizationAddress].
extension OrganizationAddressPatterns on OrganizationAddress {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrganizationAddress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrganizationAddress() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrganizationAddress value)  $default,){
final _that = this;
switch (_that) {
case _OrganizationAddress():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrganizationAddress value)?  $default,){
final _that = this;
switch (_that) {
case _OrganizationAddress() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String organizationId,  String townId,  String address,  int createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrganizationAddress() when $default != null:
return $default(_that.organizationId,_that.townId,_that.address,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String organizationId,  String townId,  String address,  int createdAt)  $default,) {final _that = this;
switch (_that) {
case _OrganizationAddress():
return $default(_that.organizationId,_that.townId,_that.address,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String organizationId,  String townId,  String address,  int createdAt)?  $default,) {final _that = this;
switch (_that) {
case _OrganizationAddress() when $default != null:
return $default(_that.organizationId,_that.townId,_that.address,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrganizationAddress extends OrganizationAddress {
  const _OrganizationAddress({required this.organizationId, required this.townId, required this.address, required this.createdAt}): super._();
  factory _OrganizationAddress.fromJson(Map<String, dynamic> json) => _$OrganizationAddressFromJson(json);

@override final  String organizationId;
@override final  String townId;
@override final  String address;
@override final  int createdAt;

/// Create a copy of OrganizationAddress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrganizationAddressCopyWith<_OrganizationAddress> get copyWith => __$OrganizationAddressCopyWithImpl<_OrganizationAddress>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrganizationAddressToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrganizationAddress&&(identical(other.organizationId, organizationId) || other.organizationId == organizationId)&&(identical(other.townId, townId) || other.townId == townId)&&(identical(other.address, address) || other.address == address)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,organizationId,townId,address,createdAt);

@override
String toString() {
  return 'OrganizationAddress(organizationId: $organizationId, townId: $townId, address: $address, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$OrganizationAddressCopyWith<$Res> implements $OrganizationAddressCopyWith<$Res> {
  factory _$OrganizationAddressCopyWith(_OrganizationAddress value, $Res Function(_OrganizationAddress) _then) = __$OrganizationAddressCopyWithImpl;
@override @useResult
$Res call({
 String organizationId, String townId, String address, int createdAt
});




}
/// @nodoc
class __$OrganizationAddressCopyWithImpl<$Res>
    implements _$OrganizationAddressCopyWith<$Res> {
  __$OrganizationAddressCopyWithImpl(this._self, this._then);

  final _OrganizationAddress _self;
  final $Res Function(_OrganizationAddress) _then;

/// Create a copy of OrganizationAddress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? organizationId = null,Object? townId = null,Object? address = null,Object? createdAt = null,}) {
  return _then(_OrganizationAddress(
organizationId: null == organizationId ? _self.organizationId : organizationId // ignore: cast_nullable_to_non_nullable
as String,townId: null == townId ? _self.townId : townId // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
