// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rating.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

OrganizationRating _$OrganizationRatingFromJson(Map<String, dynamic> json) {
  return _OrganizationRating.fromJson(json);
}

/// @nodoc
mixin _$OrganizationRating {
  String get id => throw _privateConstructorUsedError;
  String get organizationId => throw _privateConstructorUsedError;
  String get donationRequestId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  String get review => throw _privateConstructorUsedError;
  int get createdAt => throw _privateConstructorUsedError;

  /// Serializes this OrganizationRating to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrganizationRating
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrganizationRatingCopyWith<OrganizationRating> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizationRatingCopyWith<$Res> {
  factory $OrganizationRatingCopyWith(
    OrganizationRating value,
    $Res Function(OrganizationRating) then,
  ) = _$OrganizationRatingCopyWithImpl<$Res, OrganizationRating>;
  @useResult
  $Res call({
    String id,
    String organizationId,
    String donationRequestId,
    String userId,
    int rating,
    String review,
    int createdAt,
  });
}

/// @nodoc
class _$OrganizationRatingCopyWithImpl<$Res, $Val extends OrganizationRating>
    implements $OrganizationRatingCopyWith<$Res> {
  _$OrganizationRatingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrganizationRating
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? organizationId = null,
    Object? donationRequestId = null,
    Object? userId = null,
    Object? rating = null,
    Object? review = null,
    Object? createdAt = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            organizationId:
                null == organizationId
                    ? _value.organizationId
                    : organizationId // ignore: cast_nullable_to_non_nullable
                        as String,
            donationRequestId:
                null == donationRequestId
                    ? _value.donationRequestId
                    : donationRequestId // ignore: cast_nullable_to_non_nullable
                        as String,
            userId:
                null == userId
                    ? _value.userId
                    : userId // ignore: cast_nullable_to_non_nullable
                        as String,
            rating:
                null == rating
                    ? _value.rating
                    : rating // ignore: cast_nullable_to_non_nullable
                        as int,
            review:
                null == review
                    ? _value.review
                    : review // ignore: cast_nullable_to_non_nullable
                        as String,
            createdAt:
                null == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrganizationRatingImplCopyWith<$Res>
    implements $OrganizationRatingCopyWith<$Res> {
  factory _$$OrganizationRatingImplCopyWith(
    _$OrganizationRatingImpl value,
    $Res Function(_$OrganizationRatingImpl) then,
  ) = __$$OrganizationRatingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String organizationId,
    String donationRequestId,
    String userId,
    int rating,
    String review,
    int createdAt,
  });
}

/// @nodoc
class __$$OrganizationRatingImplCopyWithImpl<$Res>
    extends _$OrganizationRatingCopyWithImpl<$Res, _$OrganizationRatingImpl>
    implements _$$OrganizationRatingImplCopyWith<$Res> {
  __$$OrganizationRatingImplCopyWithImpl(
    _$OrganizationRatingImpl _value,
    $Res Function(_$OrganizationRatingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrganizationRating
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? organizationId = null,
    Object? donationRequestId = null,
    Object? userId = null,
    Object? rating = null,
    Object? review = null,
    Object? createdAt = null,
  }) {
    return _then(
      _$OrganizationRatingImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        organizationId:
            null == organizationId
                ? _value.organizationId
                : organizationId // ignore: cast_nullable_to_non_nullable
                    as String,
        donationRequestId:
            null == donationRequestId
                ? _value.donationRequestId
                : donationRequestId // ignore: cast_nullable_to_non_nullable
                    as String,
        userId:
            null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as String,
        rating:
            null == rating
                ? _value.rating
                : rating // ignore: cast_nullable_to_non_nullable
                    as int,
        review:
            null == review
                ? _value.review
                : review // ignore: cast_nullable_to_non_nullable
                    as String,
        createdAt:
            null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrganizationRatingImpl implements _OrganizationRating {
  const _$OrganizationRatingImpl({
    required this.id,
    required this.organizationId,
    required this.donationRequestId,
    required this.userId,
    required this.rating,
    required this.review,
    required this.createdAt,
  });

  factory _$OrganizationRatingImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrganizationRatingImplFromJson(json);

  @override
  final String id;
  @override
  final String organizationId;
  @override
  final String donationRequestId;
  @override
  final String userId;
  @override
  final int rating;
  @override
  final String review;
  @override
  final int createdAt;

  @override
  String toString() {
    return 'OrganizationRating(id: $id, organizationId: $organizationId, donationRequestId: $donationRequestId, userId: $userId, rating: $rating, review: $review, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrganizationRatingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.donationRequestId, donationRequestId) ||
                other.donationRequestId == donationRequestId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.review, review) || other.review == review) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    organizationId,
    donationRequestId,
    userId,
    rating,
    review,
    createdAt,
  );

  /// Create a copy of OrganizationRating
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrganizationRatingImplCopyWith<_$OrganizationRatingImpl> get copyWith =>
      __$$OrganizationRatingImplCopyWithImpl<_$OrganizationRatingImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OrganizationRatingImplToJson(this);
  }
}

abstract class _OrganizationRating implements OrganizationRating {
  const factory _OrganizationRating({
    required final String id,
    required final String organizationId,
    required final String donationRequestId,
    required final String userId,
    required final int rating,
    required final String review,
    required final int createdAt,
  }) = _$OrganizationRatingImpl;

  factory _OrganizationRating.fromJson(Map<String, dynamic> json) =
      _$OrganizationRatingImpl.fromJson;

  @override
  String get id;
  @override
  String get organizationId;
  @override
  String get donationRequestId;
  @override
  String get userId;
  @override
  int get rating;
  @override
  String get review;
  @override
  int get createdAt;

  /// Create a copy of OrganizationRating
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrganizationRatingImplCopyWith<_$OrganizationRatingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
