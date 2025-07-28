// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rating.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrganizationRating {

 String get id; String get organizationId; String get donationRequestId; String get userId; int get rating; String? get review; int get createdAt;
/// Create a copy of OrganizationRating
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrganizationRatingCopyWith<OrganizationRating> get copyWith => _$OrganizationRatingCopyWithImpl<OrganizationRating>(this as OrganizationRating, _$identity);

  /// Serializes this OrganizationRating to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrganizationRating&&(identical(other.id, id) || other.id == id)&&(identical(other.organizationId, organizationId) || other.organizationId == organizationId)&&(identical(other.donationRequestId, donationRequestId) || other.donationRequestId == donationRequestId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.review, review) || other.review == review)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,organizationId,donationRequestId,userId,rating,review,createdAt);

@override
String toString() {
  return 'OrganizationRating(id: $id, organizationId: $organizationId, donationRequestId: $donationRequestId, userId: $userId, rating: $rating, review: $review, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $OrganizationRatingCopyWith<$Res>  {
  factory $OrganizationRatingCopyWith(OrganizationRating value, $Res Function(OrganizationRating) _then) = _$OrganizationRatingCopyWithImpl;
@useResult
$Res call({
 String id, String organizationId, String donationRequestId, String userId, int rating, String? review, int createdAt
});




}
/// @nodoc
class _$OrganizationRatingCopyWithImpl<$Res>
    implements $OrganizationRatingCopyWith<$Res> {
  _$OrganizationRatingCopyWithImpl(this._self, this._then);

  final OrganizationRating _self;
  final $Res Function(OrganizationRating) _then;

/// Create a copy of OrganizationRating
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? organizationId = null,Object? donationRequestId = null,Object? userId = null,Object? rating = null,Object? review = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,organizationId: null == organizationId ? _self.organizationId : organizationId // ignore: cast_nullable_to_non_nullable
as String,donationRequestId: null == donationRequestId ? _self.donationRequestId : donationRequestId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,review: freezed == review ? _self.review : review // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [OrganizationRating].
extension OrganizationRatingPatterns on OrganizationRating {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrganizationRating value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrganizationRating() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrganizationRating value)  $default,){
final _that = this;
switch (_that) {
case _OrganizationRating():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrganizationRating value)?  $default,){
final _that = this;
switch (_that) {
case _OrganizationRating() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String organizationId,  String donationRequestId,  String userId,  int rating,  String? review,  int createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrganizationRating() when $default != null:
return $default(_that.id,_that.organizationId,_that.donationRequestId,_that.userId,_that.rating,_that.review,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String organizationId,  String donationRequestId,  String userId,  int rating,  String? review,  int createdAt)  $default,) {final _that = this;
switch (_that) {
case _OrganizationRating():
return $default(_that.id,_that.organizationId,_that.donationRequestId,_that.userId,_that.rating,_that.review,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String organizationId,  String donationRequestId,  String userId,  int rating,  String? review,  int createdAt)?  $default,) {final _that = this;
switch (_that) {
case _OrganizationRating() when $default != null:
return $default(_that.id,_that.organizationId,_that.donationRequestId,_that.userId,_that.rating,_that.review,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrganizationRating implements OrganizationRating {
  const _OrganizationRating({required this.id, required this.organizationId, required this.donationRequestId, required this.userId, required this.rating, required this.review, required this.createdAt});
  factory _OrganizationRating.fromJson(Map<String, dynamic> json) => _$OrganizationRatingFromJson(json);

@override final  String id;
@override final  String organizationId;
@override final  String donationRequestId;
@override final  String userId;
@override final  int rating;
@override final  String? review;
@override final  int createdAt;

/// Create a copy of OrganizationRating
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrganizationRatingCopyWith<_OrganizationRating> get copyWith => __$OrganizationRatingCopyWithImpl<_OrganizationRating>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrganizationRatingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrganizationRating&&(identical(other.id, id) || other.id == id)&&(identical(other.organizationId, organizationId) || other.organizationId == organizationId)&&(identical(other.donationRequestId, donationRequestId) || other.donationRequestId == donationRequestId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.review, review) || other.review == review)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,organizationId,donationRequestId,userId,rating,review,createdAt);

@override
String toString() {
  return 'OrganizationRating(id: $id, organizationId: $organizationId, donationRequestId: $donationRequestId, userId: $userId, rating: $rating, review: $review, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$OrganizationRatingCopyWith<$Res> implements $OrganizationRatingCopyWith<$Res> {
  factory _$OrganizationRatingCopyWith(_OrganizationRating value, $Res Function(_OrganizationRating) _then) = __$OrganizationRatingCopyWithImpl;
@override @useResult
$Res call({
 String id, String organizationId, String donationRequestId, String userId, int rating, String? review, int createdAt
});




}
/// @nodoc
class __$OrganizationRatingCopyWithImpl<$Res>
    implements _$OrganizationRatingCopyWith<$Res> {
  __$OrganizationRatingCopyWithImpl(this._self, this._then);

  final _OrganizationRating _self;
  final $Res Function(_OrganizationRating) _then;

/// Create a copy of OrganizationRating
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? organizationId = null,Object? donationRequestId = null,Object? userId = null,Object? rating = null,Object? review = freezed,Object? createdAt = null,}) {
  return _then(_OrganizationRating(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,organizationId: null == organizationId ? _self.organizationId : organizationId // ignore: cast_nullable_to_non_nullable
as String,donationRequestId: null == donationRequestId ? _self.donationRequestId : donationRequestId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,review: freezed == review ? _self.review : review // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
