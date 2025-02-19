// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

OrganizationAddress _$OrganizationAddressFromJson(Map<String, dynamic> json) {
  return _OrganizationAddress.fromJson(json);
}

/// @nodoc
mixin _$OrganizationAddress {
  String get organizationId => throw _privateConstructorUsedError;
  String get province => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  int get createdAt => throw _privateConstructorUsedError;

  /// Serializes this OrganizationAddress to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrganizationAddress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrganizationAddressCopyWith<OrganizationAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizationAddressCopyWith<$Res> {
  factory $OrganizationAddressCopyWith(
    OrganizationAddress value,
    $Res Function(OrganizationAddress) then,
  ) = _$OrganizationAddressCopyWithImpl<$Res, OrganizationAddress>;
  @useResult
  $Res call({
    String organizationId,
    String province,
    String city,
    String address,
    int createdAt,
  });
}

/// @nodoc
class _$OrganizationAddressCopyWithImpl<$Res, $Val extends OrganizationAddress>
    implements $OrganizationAddressCopyWith<$Res> {
  _$OrganizationAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrganizationAddress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? organizationId = null,
    Object? province = null,
    Object? city = null,
    Object? address = null,
    Object? createdAt = null,
  }) {
    return _then(
      _value.copyWith(
            organizationId:
                null == organizationId
                    ? _value.organizationId
                    : organizationId // ignore: cast_nullable_to_non_nullable
                        as String,
            province:
                null == province
                    ? _value.province
                    : province // ignore: cast_nullable_to_non_nullable
                        as String,
            city:
                null == city
                    ? _value.city
                    : city // ignore: cast_nullable_to_non_nullable
                        as String,
            address:
                null == address
                    ? _value.address
                    : address // ignore: cast_nullable_to_non_nullable
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
abstract class _$$OrganizationAddressImplCopyWith<$Res>
    implements $OrganizationAddressCopyWith<$Res> {
  factory _$$OrganizationAddressImplCopyWith(
    _$OrganizationAddressImpl value,
    $Res Function(_$OrganizationAddressImpl) then,
  ) = __$$OrganizationAddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String organizationId,
    String province,
    String city,
    String address,
    int createdAt,
  });
}

/// @nodoc
class __$$OrganizationAddressImplCopyWithImpl<$Res>
    extends _$OrganizationAddressCopyWithImpl<$Res, _$OrganizationAddressImpl>
    implements _$$OrganizationAddressImplCopyWith<$Res> {
  __$$OrganizationAddressImplCopyWithImpl(
    _$OrganizationAddressImpl _value,
    $Res Function(_$OrganizationAddressImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrganizationAddress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? organizationId = null,
    Object? province = null,
    Object? city = null,
    Object? address = null,
    Object? createdAt = null,
  }) {
    return _then(
      _$OrganizationAddressImpl(
        organizationId:
            null == organizationId
                ? _value.organizationId
                : organizationId // ignore: cast_nullable_to_non_nullable
                    as String,
        province:
            null == province
                ? _value.province
                : province // ignore: cast_nullable_to_non_nullable
                    as String,
        city:
            null == city
                ? _value.city
                : city // ignore: cast_nullable_to_non_nullable
                    as String,
        address:
            null == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
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
class _$OrganizationAddressImpl implements _OrganizationAddress {
  const _$OrganizationAddressImpl({
    required this.organizationId,
    required this.province,
    required this.city,
    required this.address,
    required this.createdAt,
  });

  factory _$OrganizationAddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrganizationAddressImplFromJson(json);

  @override
  final String organizationId;
  @override
  final String province;
  @override
  final String city;
  @override
  final String address;
  @override
  final int createdAt;

  @override
  String toString() {
    return 'OrganizationAddress(organizationId: $organizationId, province: $province, city: $city, address: $address, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrganizationAddressImpl &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    organizationId,
    province,
    city,
    address,
    createdAt,
  );

  /// Create a copy of OrganizationAddress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrganizationAddressImplCopyWith<_$OrganizationAddressImpl> get copyWith =>
      __$$OrganizationAddressImplCopyWithImpl<_$OrganizationAddressImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OrganizationAddressImplToJson(this);
  }
}

abstract class _OrganizationAddress implements OrganizationAddress {
  const factory _OrganizationAddress({
    required final String organizationId,
    required final String province,
    required final String city,
    required final String address,
    required final int createdAt,
  }) = _$OrganizationAddressImpl;

  factory _OrganizationAddress.fromJson(Map<String, dynamic> json) =
      _$OrganizationAddressImpl.fromJson;

  @override
  String get organizationId;
  @override
  String get province;
  @override
  String get city;
  @override
  String get address;
  @override
  int get createdAt;

  /// Create a copy of OrganizationAddress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrganizationAddressImplCopyWith<_$OrganizationAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
