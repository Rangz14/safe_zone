// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'donation_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DonationRequest {

 String get id; String get donationServiceId; int get units; String get userId; String get threatId; double get longitude; double get latitude;// PENDING, ACCEPTED, FUND_RAISED, DONATED
 DonationRequestState get state;@OptionStringConverter() Option<String> get acceptedOrgId; int get createdAt; int get updatedAt;
/// Create a copy of DonationRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DonationRequestCopyWith<DonationRequest> get copyWith => _$DonationRequestCopyWithImpl<DonationRequest>(this as DonationRequest, _$identity);

  /// Serializes this DonationRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DonationRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.donationServiceId, donationServiceId) || other.donationServiceId == donationServiceId)&&(identical(other.units, units) || other.units == units)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.threatId, threatId) || other.threatId == threatId)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.state, state) || other.state == state)&&(identical(other.acceptedOrgId, acceptedOrgId) || other.acceptedOrgId == acceptedOrgId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,donationServiceId,units,userId,threatId,longitude,latitude,state,acceptedOrgId,createdAt,updatedAt);

@override
String toString() {
  return 'DonationRequest(id: $id, donationServiceId: $donationServiceId, units: $units, userId: $userId, threatId: $threatId, longitude: $longitude, latitude: $latitude, state: $state, acceptedOrgId: $acceptedOrgId, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $DonationRequestCopyWith<$Res>  {
  factory $DonationRequestCopyWith(DonationRequest value, $Res Function(DonationRequest) _then) = _$DonationRequestCopyWithImpl;
@useResult
$Res call({
 String id, String donationServiceId, int units, String userId, String threatId, double longitude, double latitude, DonationRequestState state,@OptionStringConverter() Option<String> acceptedOrgId, int createdAt, int updatedAt
});




}
/// @nodoc
class _$DonationRequestCopyWithImpl<$Res>
    implements $DonationRequestCopyWith<$Res> {
  _$DonationRequestCopyWithImpl(this._self, this._then);

  final DonationRequest _self;
  final $Res Function(DonationRequest) _then;

/// Create a copy of DonationRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? donationServiceId = null,Object? units = null,Object? userId = null,Object? threatId = null,Object? longitude = null,Object? latitude = null,Object? state = null,Object? acceptedOrgId = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,donationServiceId: null == donationServiceId ? _self.donationServiceId : donationServiceId // ignore: cast_nullable_to_non_nullable
as String,units: null == units ? _self.units : units // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,threatId: null == threatId ? _self.threatId : threatId // ignore: cast_nullable_to_non_nullable
as String,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as DonationRequestState,acceptedOrgId: null == acceptedOrgId ? _self.acceptedOrgId : acceptedOrgId // ignore: cast_nullable_to_non_nullable
as Option<String>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as int,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DonationRequest].
extension DonationRequestPatterns on DonationRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DonationRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DonationRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DonationRequest value)  $default,){
final _that = this;
switch (_that) {
case _DonationRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DonationRequest value)?  $default,){
final _that = this;
switch (_that) {
case _DonationRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String donationServiceId,  int units,  String userId,  String threatId,  double longitude,  double latitude,  DonationRequestState state, @OptionStringConverter()  Option<String> acceptedOrgId,  int createdAt,  int updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DonationRequest() when $default != null:
return $default(_that.id,_that.donationServiceId,_that.units,_that.userId,_that.threatId,_that.longitude,_that.latitude,_that.state,_that.acceptedOrgId,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String donationServiceId,  int units,  String userId,  String threatId,  double longitude,  double latitude,  DonationRequestState state, @OptionStringConverter()  Option<String> acceptedOrgId,  int createdAt,  int updatedAt)  $default,) {final _that = this;
switch (_that) {
case _DonationRequest():
return $default(_that.id,_that.donationServiceId,_that.units,_that.userId,_that.threatId,_that.longitude,_that.latitude,_that.state,_that.acceptedOrgId,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String donationServiceId,  int units,  String userId,  String threatId,  double longitude,  double latitude,  DonationRequestState state, @OptionStringConverter()  Option<String> acceptedOrgId,  int createdAt,  int updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _DonationRequest() when $default != null:
return $default(_that.id,_that.donationServiceId,_that.units,_that.userId,_that.threatId,_that.longitude,_that.latitude,_that.state,_that.acceptedOrgId,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DonationRequest implements DonationRequest {
  const _DonationRequest({required this.id, required this.donationServiceId, required this.units, required this.userId, required this.threatId, required this.longitude, required this.latitude, required this.state, @OptionStringConverter() required this.acceptedOrgId, required this.createdAt, required this.updatedAt});
  factory _DonationRequest.fromJson(Map<String, dynamic> json) => _$DonationRequestFromJson(json);

@override final  String id;
@override final  String donationServiceId;
@override final  int units;
@override final  String userId;
@override final  String threatId;
@override final  double longitude;
@override final  double latitude;
// PENDING, ACCEPTED, FUND_RAISED, DONATED
@override final  DonationRequestState state;
@override@OptionStringConverter() final  Option<String> acceptedOrgId;
@override final  int createdAt;
@override final  int updatedAt;

/// Create a copy of DonationRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DonationRequestCopyWith<_DonationRequest> get copyWith => __$DonationRequestCopyWithImpl<_DonationRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DonationRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DonationRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.donationServiceId, donationServiceId) || other.donationServiceId == donationServiceId)&&(identical(other.units, units) || other.units == units)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.threatId, threatId) || other.threatId == threatId)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.state, state) || other.state == state)&&(identical(other.acceptedOrgId, acceptedOrgId) || other.acceptedOrgId == acceptedOrgId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,donationServiceId,units,userId,threatId,longitude,latitude,state,acceptedOrgId,createdAt,updatedAt);

@override
String toString() {
  return 'DonationRequest(id: $id, donationServiceId: $donationServiceId, units: $units, userId: $userId, threatId: $threatId, longitude: $longitude, latitude: $latitude, state: $state, acceptedOrgId: $acceptedOrgId, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$DonationRequestCopyWith<$Res> implements $DonationRequestCopyWith<$Res> {
  factory _$DonationRequestCopyWith(_DonationRequest value, $Res Function(_DonationRequest) _then) = __$DonationRequestCopyWithImpl;
@override @useResult
$Res call({
 String id, String donationServiceId, int units, String userId, String threatId, double longitude, double latitude, DonationRequestState state,@OptionStringConverter() Option<String> acceptedOrgId, int createdAt, int updatedAt
});




}
/// @nodoc
class __$DonationRequestCopyWithImpl<$Res>
    implements _$DonationRequestCopyWith<$Res> {
  __$DonationRequestCopyWithImpl(this._self, this._then);

  final _DonationRequest _self;
  final $Res Function(_DonationRequest) _then;

/// Create a copy of DonationRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? donationServiceId = null,Object? units = null,Object? userId = null,Object? threatId = null,Object? longitude = null,Object? latitude = null,Object? state = null,Object? acceptedOrgId = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_DonationRequest(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,donationServiceId: null == donationServiceId ? _self.donationServiceId : donationServiceId // ignore: cast_nullable_to_non_nullable
as String,units: null == units ? _self.units : units // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,threatId: null == threatId ? _self.threatId : threatId // ignore: cast_nullable_to_non_nullable
as String,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as DonationRequestState,acceptedOrgId: null == acceptedOrgId ? _self.acceptedOrgId : acceptedOrgId // ignore: cast_nullable_to_non_nullable
as Option<String>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as int,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
