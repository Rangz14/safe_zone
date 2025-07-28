// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'organization_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrganizationService {

 String get id; String get serviceId; String get orgId; int get createdAt;
/// Create a copy of OrganizationService
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrganizationServiceCopyWith<OrganizationService> get copyWith => _$OrganizationServiceCopyWithImpl<OrganizationService>(this as OrganizationService, _$identity);

  /// Serializes this OrganizationService to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrganizationService&&(identical(other.id, id) || other.id == id)&&(identical(other.serviceId, serviceId) || other.serviceId == serviceId)&&(identical(other.orgId, orgId) || other.orgId == orgId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,serviceId,orgId,createdAt);

@override
String toString() {
  return 'OrganizationService(id: $id, serviceId: $serviceId, orgId: $orgId, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $OrganizationServiceCopyWith<$Res>  {
  factory $OrganizationServiceCopyWith(OrganizationService value, $Res Function(OrganizationService) _then) = _$OrganizationServiceCopyWithImpl;
@useResult
$Res call({
 String id, String serviceId, String orgId, int createdAt
});




}
/// @nodoc
class _$OrganizationServiceCopyWithImpl<$Res>
    implements $OrganizationServiceCopyWith<$Res> {
  _$OrganizationServiceCopyWithImpl(this._self, this._then);

  final OrganizationService _self;
  final $Res Function(OrganizationService) _then;

/// Create a copy of OrganizationService
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? serviceId = null,Object? orgId = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,serviceId: null == serviceId ? _self.serviceId : serviceId // ignore: cast_nullable_to_non_nullable
as String,orgId: null == orgId ? _self.orgId : orgId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [OrganizationService].
extension OrganizationServicePatterns on OrganizationService {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrganizationService value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrganizationService() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrganizationService value)  $default,){
final _that = this;
switch (_that) {
case _OrganizationService():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrganizationService value)?  $default,){
final _that = this;
switch (_that) {
case _OrganizationService() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String serviceId,  String orgId,  int createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrganizationService() when $default != null:
return $default(_that.id,_that.serviceId,_that.orgId,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String serviceId,  String orgId,  int createdAt)  $default,) {final _that = this;
switch (_that) {
case _OrganizationService():
return $default(_that.id,_that.serviceId,_that.orgId,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String serviceId,  String orgId,  int createdAt)?  $default,) {final _that = this;
switch (_that) {
case _OrganizationService() when $default != null:
return $default(_that.id,_that.serviceId,_that.orgId,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrganizationService implements OrganizationService {
  const _OrganizationService({required this.id, required this.serviceId, required this.orgId, required this.createdAt});
  factory _OrganizationService.fromJson(Map<String, dynamic> json) => _$OrganizationServiceFromJson(json);

@override final  String id;
@override final  String serviceId;
@override final  String orgId;
@override final  int createdAt;

/// Create a copy of OrganizationService
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrganizationServiceCopyWith<_OrganizationService> get copyWith => __$OrganizationServiceCopyWithImpl<_OrganizationService>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrganizationServiceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrganizationService&&(identical(other.id, id) || other.id == id)&&(identical(other.serviceId, serviceId) || other.serviceId == serviceId)&&(identical(other.orgId, orgId) || other.orgId == orgId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,serviceId,orgId,createdAt);

@override
String toString() {
  return 'OrganizationService(id: $id, serviceId: $serviceId, orgId: $orgId, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$OrganizationServiceCopyWith<$Res> implements $OrganizationServiceCopyWith<$Res> {
  factory _$OrganizationServiceCopyWith(_OrganizationService value, $Res Function(_OrganizationService) _then) = __$OrganizationServiceCopyWithImpl;
@override @useResult
$Res call({
 String id, String serviceId, String orgId, int createdAt
});




}
/// @nodoc
class __$OrganizationServiceCopyWithImpl<$Res>
    implements _$OrganizationServiceCopyWith<$Res> {
  __$OrganizationServiceCopyWithImpl(this._self, this._then);

  final _OrganizationService _self;
  final $Res Function(_OrganizationService) _then;

/// Create a copy of OrganizationService
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? serviceId = null,Object? orgId = null,Object? createdAt = null,}) {
  return _then(_OrganizationService(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,serviceId: null == serviceId ? _self.serviceId : serviceId // ignore: cast_nullable_to_non_nullable
as String,orgId: null == orgId ? _self.orgId : orgId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
