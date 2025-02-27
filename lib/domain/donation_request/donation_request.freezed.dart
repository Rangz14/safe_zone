// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'donation_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DonationRequest _$DonationRequestFromJson(Map<String, dynamic> json) {
  return _DonationRequest.fromJson(json);
}

/// @nodoc
mixin _$DonationRequest {
  String get id => throw _privateConstructorUsedError;
  String get donationServiceId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  String get status =>
      throw _privateConstructorUsedError; // PENDING, ACCEPTED, REJECTED_BY_ADMIN, FUND_RAISED, DONATED
  String? get acceptedOrganizationId => throw _privateConstructorUsedError;
  int get createdAt => throw _privateConstructorUsedError;
  int get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this DonationRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DonationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DonationRequestCopyWith<DonationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DonationRequestCopyWith<$Res> {
  factory $DonationRequestCopyWith(
    DonationRequest value,
    $Res Function(DonationRequest) then,
  ) = _$DonationRequestCopyWithImpl<$Res, DonationRequest>;
  @useResult
  $Res call({
    String id,
    String donationServiceId,
    String userId,
    double longitude,
    double latitude,
    String status,
    String? acceptedOrganizationId,
    int createdAt,
    int updatedAt,
  });
}

/// @nodoc
class _$DonationRequestCopyWithImpl<$Res, $Val extends DonationRequest>
    implements $DonationRequestCopyWith<$Res> {
  _$DonationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DonationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? donationServiceId = null,
    Object? userId = null,
    Object? longitude = null,
    Object? latitude = null,
    Object? status = null,
    Object? acceptedOrganizationId = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            donationServiceId:
                null == donationServiceId
                    ? _value.donationServiceId
                    : donationServiceId // ignore: cast_nullable_to_non_nullable
                        as String,
            userId:
                null == userId
                    ? _value.userId
                    : userId // ignore: cast_nullable_to_non_nullable
                        as String,
            longitude:
                null == longitude
                    ? _value.longitude
                    : longitude // ignore: cast_nullable_to_non_nullable
                        as double,
            latitude:
                null == latitude
                    ? _value.latitude
                    : latitude // ignore: cast_nullable_to_non_nullable
                        as double,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as String,
            acceptedOrganizationId:
                freezed == acceptedOrganizationId
                    ? _value.acceptedOrganizationId
                    : acceptedOrganizationId // ignore: cast_nullable_to_non_nullable
                        as String?,
            createdAt:
                null == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as int,
            updatedAt:
                null == updatedAt
                    ? _value.updatedAt
                    : updatedAt // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DonationRequestImplCopyWith<$Res>
    implements $DonationRequestCopyWith<$Res> {
  factory _$$DonationRequestImplCopyWith(
    _$DonationRequestImpl value,
    $Res Function(_$DonationRequestImpl) then,
  ) = __$$DonationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String donationServiceId,
    String userId,
    double longitude,
    double latitude,
    String status,
    String? acceptedOrganizationId,
    int createdAt,
    int updatedAt,
  });
}

/// @nodoc
class __$$DonationRequestImplCopyWithImpl<$Res>
    extends _$DonationRequestCopyWithImpl<$Res, _$DonationRequestImpl>
    implements _$$DonationRequestImplCopyWith<$Res> {
  __$$DonationRequestImplCopyWithImpl(
    _$DonationRequestImpl _value,
    $Res Function(_$DonationRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DonationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? donationServiceId = null,
    Object? userId = null,
    Object? longitude = null,
    Object? latitude = null,
    Object? status = null,
    Object? acceptedOrganizationId = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$DonationRequestImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        donationServiceId:
            null == donationServiceId
                ? _value.donationServiceId
                : donationServiceId // ignore: cast_nullable_to_non_nullable
                    as String,
        userId:
            null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as String,
        longitude:
            null == longitude
                ? _value.longitude
                : longitude // ignore: cast_nullable_to_non_nullable
                    as double,
        latitude:
            null == latitude
                ? _value.latitude
                : latitude // ignore: cast_nullable_to_non_nullable
                    as double,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as String,
        acceptedOrganizationId:
            freezed == acceptedOrganizationId
                ? _value.acceptedOrganizationId
                : acceptedOrganizationId // ignore: cast_nullable_to_non_nullable
                    as String?,
        createdAt:
            null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as int,
        updatedAt:
            null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DonationRequestImpl implements _DonationRequest {
  const _$DonationRequestImpl({
    required this.id,
    required this.donationServiceId,
    required this.userId,
    required this.longitude,
    required this.latitude,
    required this.status,
    required this.acceptedOrganizationId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory _$DonationRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$DonationRequestImplFromJson(json);

  @override
  final String id;
  @override
  final String donationServiceId;
  @override
  final String userId;
  @override
  final double longitude;
  @override
  final double latitude;
  @override
  final String status;
  // PENDING, ACCEPTED, REJECTED_BY_ADMIN, FUND_RAISED, DONATED
  @override
  final String? acceptedOrganizationId;
  @override
  final int createdAt;
  @override
  final int updatedAt;

  @override
  String toString() {
    return 'DonationRequest(id: $id, donationServiceId: $donationServiceId, userId: $userId, longitude: $longitude, latitude: $latitude, status: $status, acceptedOrganizationId: $acceptedOrganizationId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DonationRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.donationServiceId, donationServiceId) ||
                other.donationServiceId == donationServiceId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.acceptedOrganizationId, acceptedOrganizationId) ||
                other.acceptedOrganizationId == acceptedOrganizationId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    donationServiceId,
    userId,
    longitude,
    latitude,
    status,
    acceptedOrganizationId,
    createdAt,
    updatedAt,
  );

  /// Create a copy of DonationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DonationRequestImplCopyWith<_$DonationRequestImpl> get copyWith =>
      __$$DonationRequestImplCopyWithImpl<_$DonationRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DonationRequestImplToJson(this);
  }
}

abstract class _DonationRequest implements DonationRequest {
  const factory _DonationRequest({
    required final String id,
    required final String donationServiceId,
    required final String userId,
    required final double longitude,
    required final double latitude,
    required final String status,
    required final String? acceptedOrganizationId,
    required final int createdAt,
    required final int updatedAt,
  }) = _$DonationRequestImpl;

  factory _DonationRequest.fromJson(Map<String, dynamic> json) =
      _$DonationRequestImpl.fromJson;

  @override
  String get id;
  @override
  String get donationServiceId;
  @override
  String get userId;
  @override
  double get longitude;
  @override
  double get latitude;
  @override
  String get status; // PENDING, ACCEPTED, REJECTED_BY_ADMIN, FUND_RAISED, DONATED
  @override
  String? get acceptedOrganizationId;
  @override
  int get createdAt;
  @override
  int get updatedAt;

  /// Create a copy of DonationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DonationRequestImplCopyWith<_$DonationRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
