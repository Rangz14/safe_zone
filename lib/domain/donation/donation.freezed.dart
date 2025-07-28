// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'donation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Donation {

 String get id; String get organizationId; String get userId; String get payslip; DonationState get state; String get donationServiceId; int get units; int get createdAt; int get updatedAt;
/// Create a copy of Donation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DonationCopyWith<Donation> get copyWith => _$DonationCopyWithImpl<Donation>(this as Donation, _$identity);

  /// Serializes this Donation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Donation&&(identical(other.id, id) || other.id == id)&&(identical(other.organizationId, organizationId) || other.organizationId == organizationId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.payslip, payslip) || other.payslip == payslip)&&(identical(other.state, state) || other.state == state)&&(identical(other.donationServiceId, donationServiceId) || other.donationServiceId == donationServiceId)&&(identical(other.units, units) || other.units == units)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,organizationId,userId,payslip,state,donationServiceId,units,createdAt,updatedAt);

@override
String toString() {
  return 'Donation(id: $id, organizationId: $organizationId, userId: $userId, payslip: $payslip, state: $state, donationServiceId: $donationServiceId, units: $units, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $DonationCopyWith<$Res>  {
  factory $DonationCopyWith(Donation value, $Res Function(Donation) _then) = _$DonationCopyWithImpl;
@useResult
$Res call({
 String id, String organizationId, String userId, String payslip, DonationState state, String donationServiceId, int units, int createdAt, int updatedAt
});




}
/// @nodoc
class _$DonationCopyWithImpl<$Res>
    implements $DonationCopyWith<$Res> {
  _$DonationCopyWithImpl(this._self, this._then);

  final Donation _self;
  final $Res Function(Donation) _then;

/// Create a copy of Donation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? organizationId = null,Object? userId = null,Object? payslip = null,Object? state = null,Object? donationServiceId = null,Object? units = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,organizationId: null == organizationId ? _self.organizationId : organizationId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,payslip: null == payslip ? _self.payslip : payslip // ignore: cast_nullable_to_non_nullable
as String,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as DonationState,donationServiceId: null == donationServiceId ? _self.donationServiceId : donationServiceId // ignore: cast_nullable_to_non_nullable
as String,units: null == units ? _self.units : units // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as int,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Donation].
extension DonationPatterns on Donation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Donation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Donation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Donation value)  $default,){
final _that = this;
switch (_that) {
case _Donation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Donation value)?  $default,){
final _that = this;
switch (_that) {
case _Donation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String organizationId,  String userId,  String payslip,  DonationState state,  String donationServiceId,  int units,  int createdAt,  int updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Donation() when $default != null:
return $default(_that.id,_that.organizationId,_that.userId,_that.payslip,_that.state,_that.donationServiceId,_that.units,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String organizationId,  String userId,  String payslip,  DonationState state,  String donationServiceId,  int units,  int createdAt,  int updatedAt)  $default,) {final _that = this;
switch (_that) {
case _Donation():
return $default(_that.id,_that.organizationId,_that.userId,_that.payslip,_that.state,_that.donationServiceId,_that.units,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String organizationId,  String userId,  String payslip,  DonationState state,  String donationServiceId,  int units,  int createdAt,  int updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _Donation() when $default != null:
return $default(_that.id,_that.organizationId,_that.userId,_that.payslip,_that.state,_that.donationServiceId,_that.units,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Donation extends Donation {
  const _Donation({required this.id, required this.organizationId, required this.userId, required this.payslip, required this.state, required this.donationServiceId, required this.units, required this.createdAt, required this.updatedAt}): super._();
  factory _Donation.fromJson(Map<String, dynamic> json) => _$DonationFromJson(json);

@override final  String id;
@override final  String organizationId;
@override final  String userId;
@override final  String payslip;
@override final  DonationState state;
@override final  String donationServiceId;
@override final  int units;
@override final  int createdAt;
@override final  int updatedAt;

/// Create a copy of Donation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DonationCopyWith<_Donation> get copyWith => __$DonationCopyWithImpl<_Donation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DonationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Donation&&(identical(other.id, id) || other.id == id)&&(identical(other.organizationId, organizationId) || other.organizationId == organizationId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.payslip, payslip) || other.payslip == payslip)&&(identical(other.state, state) || other.state == state)&&(identical(other.donationServiceId, donationServiceId) || other.donationServiceId == donationServiceId)&&(identical(other.units, units) || other.units == units)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,organizationId,userId,payslip,state,donationServiceId,units,createdAt,updatedAt);

@override
String toString() {
  return 'Donation(id: $id, organizationId: $organizationId, userId: $userId, payslip: $payslip, state: $state, donationServiceId: $donationServiceId, units: $units, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$DonationCopyWith<$Res> implements $DonationCopyWith<$Res> {
  factory _$DonationCopyWith(_Donation value, $Res Function(_Donation) _then) = __$DonationCopyWithImpl;
@override @useResult
$Res call({
 String id, String organizationId, String userId, String payslip, DonationState state, String donationServiceId, int units, int createdAt, int updatedAt
});




}
/// @nodoc
class __$DonationCopyWithImpl<$Res>
    implements _$DonationCopyWith<$Res> {
  __$DonationCopyWithImpl(this._self, this._then);

  final _Donation _self;
  final $Res Function(_Donation) _then;

/// Create a copy of Donation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? organizationId = null,Object? userId = null,Object? payslip = null,Object? state = null,Object? donationServiceId = null,Object? units = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_Donation(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,organizationId: null == organizationId ? _self.organizationId : organizationId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,payslip: null == payslip ? _self.payslip : payslip // ignore: cast_nullable_to_non_nullable
as String,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as DonationState,donationServiceId: null == donationServiceId ? _self.donationServiceId : donationServiceId // ignore: cast_nullable_to_non_nullable
as String,units: null == units ? _self.units : units // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as int,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
