// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'donation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Donation _$DonationFromJson(Map<String, dynamic> json) {
  return _Donation.fromJson(json);
}

/// @nodoc
mixin _$Donation {
  String get id => throw _privateConstructorUsedError;
  String get organizationId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get payslip => throw _privateConstructorUsedError;
  DonationState get state => throw _privateConstructorUsedError;
  String get donationServiceId => throw _privateConstructorUsedError;
  int get units => throw _privateConstructorUsedError;
  int get createdAt => throw _privateConstructorUsedError;
  int get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Donation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Donation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DonationCopyWith<Donation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DonationCopyWith<$Res> {
  factory $DonationCopyWith(Donation value, $Res Function(Donation) then) =
      _$DonationCopyWithImpl<$Res, Donation>;
  @useResult
  $Res call({
    String id,
    String organizationId,
    String userId,
    String payslip,
    DonationState state,
    String donationServiceId,
    int units,
    int createdAt,
    int updatedAt,
  });
}

/// @nodoc
class _$DonationCopyWithImpl<$Res, $Val extends Donation>
    implements $DonationCopyWith<$Res> {
  _$DonationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Donation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? organizationId = null,
    Object? userId = null,
    Object? payslip = null,
    Object? state = null,
    Object? donationServiceId = null,
    Object? units = null,
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
            organizationId:
                null == organizationId
                    ? _value.organizationId
                    : organizationId // ignore: cast_nullable_to_non_nullable
                        as String,
            userId:
                null == userId
                    ? _value.userId
                    : userId // ignore: cast_nullable_to_non_nullable
                        as String,
            payslip:
                null == payslip
                    ? _value.payslip
                    : payslip // ignore: cast_nullable_to_non_nullable
                        as String,
            state:
                null == state
                    ? _value.state
                    : state // ignore: cast_nullable_to_non_nullable
                        as DonationState,
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
abstract class _$$DonationImplCopyWith<$Res>
    implements $DonationCopyWith<$Res> {
  factory _$$DonationImplCopyWith(
    _$DonationImpl value,
    $Res Function(_$DonationImpl) then,
  ) = __$$DonationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String organizationId,
    String userId,
    String payslip,
    DonationState state,
    String donationServiceId,
    int units,
    int createdAt,
    int updatedAt,
  });
}

/// @nodoc
class __$$DonationImplCopyWithImpl<$Res>
    extends _$DonationCopyWithImpl<$Res, _$DonationImpl>
    implements _$$DonationImplCopyWith<$Res> {
  __$$DonationImplCopyWithImpl(
    _$DonationImpl _value,
    $Res Function(_$DonationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Donation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? organizationId = null,
    Object? userId = null,
    Object? payslip = null,
    Object? state = null,
    Object? donationServiceId = null,
    Object? units = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$DonationImpl(
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
        userId:
            null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as String,
        payslip:
            null == payslip
                ? _value.payslip
                : payslip // ignore: cast_nullable_to_non_nullable
                    as String,
        state:
            null == state
                ? _value.state
                : state // ignore: cast_nullable_to_non_nullable
                    as DonationState,
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
class _$DonationImpl implements _Donation {
  const _$DonationImpl({
    required this.id,
    required this.organizationId,
    required this.userId,
    required this.payslip,
    required this.state,
    required this.donationServiceId,
    required this.units,
    required this.createdAt,
    required this.updatedAt,
  });

  factory _$DonationImpl.fromJson(Map<String, dynamic> json) =>
      _$$DonationImplFromJson(json);

  @override
  final String id;
  @override
  final String organizationId;
  @override
  final String userId;
  @override
  final String payslip;
  @override
  final DonationState state;
  @override
  final String donationServiceId;
  @override
  final int units;
  @override
  final int createdAt;
  @override
  final int updatedAt;

  @override
  String toString() {
    return 'Donation(id: $id, organizationId: $organizationId, userId: $userId, payslip: $payslip, state: $state, donationServiceId: $donationServiceId, units: $units, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DonationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.payslip, payslip) || other.payslip == payslip) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.donationServiceId, donationServiceId) ||
                other.donationServiceId == donationServiceId) &&
            (identical(other.units, units) || other.units == units) &&
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
    organizationId,
    userId,
    payslip,
    state,
    donationServiceId,
    units,
    createdAt,
    updatedAt,
  );

  /// Create a copy of Donation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DonationImplCopyWith<_$DonationImpl> get copyWith =>
      __$$DonationImplCopyWithImpl<_$DonationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DonationImplToJson(this);
  }
}

abstract class _Donation implements Donation {
  const factory _Donation({
    required final String id,
    required final String organizationId,
    required final String userId,
    required final String payslip,
    required final DonationState state,
    required final String donationServiceId,
    required final int units,
    required final int createdAt,
    required final int updatedAt,
  }) = _$DonationImpl;

  factory _Donation.fromJson(Map<String, dynamic> json) =
      _$DonationImpl.fromJson;

  @override
  String get id;
  @override
  String get organizationId;
  @override
  String get userId;
  @override
  String get payslip;
  @override
  DonationState get state;
  @override
  String get donationServiceId;
  @override
  int get units;
  @override
  int get createdAt;
  @override
  int get updatedAt;

  /// Create a copy of Donation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DonationImplCopyWith<_$DonationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
