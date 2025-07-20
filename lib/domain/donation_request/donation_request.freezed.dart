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
  int get units => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get threatId => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  double get latitude =>
      throw _privateConstructorUsedError; // PENDING, ACCEPTED, FUND_RAISED, DONATED
  DonationRequestState get state => throw _privateConstructorUsedError;
  @OptionStringConverter()
  Option<String> get acceptedOrgId => throw _privateConstructorUsedError;
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
    int units,
    String userId,
    String threatId,
    double longitude,
    double latitude,
    DonationRequestState state,
    @OptionStringConverter() Option<String> acceptedOrgId,
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
    Object? units = null,
    Object? userId = null,
    Object? threatId = null,
    Object? longitude = null,
    Object? latitude = null,
    Object? state = null,
    Object? acceptedOrgId = null,
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
            units:
                null == units
                    ? _value.units
                    : units // ignore: cast_nullable_to_non_nullable
                        as int,
            userId:
                null == userId
                    ? _value.userId
                    : userId // ignore: cast_nullable_to_non_nullable
                        as String,
            threatId:
                null == threatId
                    ? _value.threatId
                    : threatId // ignore: cast_nullable_to_non_nullable
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
            state:
                null == state
                    ? _value.state
                    : state // ignore: cast_nullable_to_non_nullable
                        as DonationRequestState,
            acceptedOrgId:
                null == acceptedOrgId
                    ? _value.acceptedOrgId
                    : acceptedOrgId // ignore: cast_nullable_to_non_nullable
                        as Option<String>,
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
    int units,
    String userId,
    String threatId,
    double longitude,
    double latitude,
    DonationRequestState state,
    @OptionStringConverter() Option<String> acceptedOrgId,
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
    Object? units = null,
    Object? userId = null,
    Object? threatId = null,
    Object? longitude = null,
    Object? latitude = null,
    Object? state = null,
    Object? acceptedOrgId = null,
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
        units:
            null == units
                ? _value.units
                : units // ignore: cast_nullable_to_non_nullable
                    as int,
        userId:
            null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as String,
        threatId:
            null == threatId
                ? _value.threatId
                : threatId // ignore: cast_nullable_to_non_nullable
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
        state:
            null == state
                ? _value.state
                : state // ignore: cast_nullable_to_non_nullable
                    as DonationRequestState,
        acceptedOrgId:
            null == acceptedOrgId
                ? _value.acceptedOrgId
                : acceptedOrgId // ignore: cast_nullable_to_non_nullable
                    as Option<String>,
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
    required this.units,
    required this.userId,
    required this.threatId,
    required this.longitude,
    required this.latitude,
    required this.state,
    @OptionStringConverter() required this.acceptedOrgId,
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
  final int units;
  @override
  final String userId;
  @override
  final String threatId;
  @override
  final double longitude;
  @override
  final double latitude;
  // PENDING, ACCEPTED, FUND_RAISED, DONATED
  @override
  final DonationRequestState state;
  @override
  @OptionStringConverter()
  final Option<String> acceptedOrgId;
  @override
  final int createdAt;
  @override
  final int updatedAt;

  @override
  String toString() {
    return 'DonationRequest(id: $id, donationServiceId: $donationServiceId, units: $units, userId: $userId, threatId: $threatId, longitude: $longitude, latitude: $latitude, state: $state, acceptedOrgId: $acceptedOrgId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DonationRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.donationServiceId, donationServiceId) ||
                other.donationServiceId == donationServiceId) &&
            (identical(other.units, units) || other.units == units) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.threatId, threatId) ||
                other.threatId == threatId) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.acceptedOrgId, acceptedOrgId) ||
                other.acceptedOrgId == acceptedOrgId) &&
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
    units,
    userId,
    threatId,
    longitude,
    latitude,
    state,
    acceptedOrgId,
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
    required final int units,
    required final String userId,
    required final String threatId,
    required final double longitude,
    required final double latitude,
    required final DonationRequestState state,
    @OptionStringConverter() required final Option<String> acceptedOrgId,
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
  int get units;
  @override
  String get userId;
  @override
  String get threatId;
  @override
  double get longitude;
  @override
  double get latitude; // PENDING, ACCEPTED, FUND_RAISED, DONATED
  @override
  DonationRequestState get state;
  @override
  @OptionStringConverter()
  Option<String> get acceptedOrgId;
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
