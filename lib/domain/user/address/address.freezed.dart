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

SafeZoneUserAddress _$SafeZoneUserAddressFromJson(Map<String, dynamic> json) {
  return _SafeZoneUserAddress.fromJson(json);
}

/// @nodoc
mixin _$SafeZoneUserAddress {
  String get userId => throw _privateConstructorUsedError;
  String get townId => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  int get createdAt => throw _privateConstructorUsedError;

  /// Serializes this SafeZoneUserAddress to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SafeZoneUserAddress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SafeZoneUserAddressCopyWith<SafeZoneUserAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SafeZoneUserAddressCopyWith<$Res> {
  factory $SafeZoneUserAddressCopyWith(
    SafeZoneUserAddress value,
    $Res Function(SafeZoneUserAddress) then,
  ) = _$SafeZoneUserAddressCopyWithImpl<$Res, SafeZoneUserAddress>;
  @useResult
  $Res call({String userId, String townId, String address, int createdAt});
}

/// @nodoc
class _$SafeZoneUserAddressCopyWithImpl<$Res, $Val extends SafeZoneUserAddress>
    implements $SafeZoneUserAddressCopyWith<$Res> {
  _$SafeZoneUserAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SafeZoneUserAddress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? townId = null,
    Object? address = null,
    Object? createdAt = null,
  }) {
    return _then(
      _value.copyWith(
            userId:
                null == userId
                    ? _value.userId
                    : userId // ignore: cast_nullable_to_non_nullable
                        as String,
            townId:
                null == townId
                    ? _value.townId
                    : townId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$SafeZoneUserAddressImplCopyWith<$Res>
    implements $SafeZoneUserAddressCopyWith<$Res> {
  factory _$$SafeZoneUserAddressImplCopyWith(
    _$SafeZoneUserAddressImpl value,
    $Res Function(_$SafeZoneUserAddressImpl) then,
  ) = __$$SafeZoneUserAddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String townId, String address, int createdAt});
}

/// @nodoc
class __$$SafeZoneUserAddressImplCopyWithImpl<$Res>
    extends _$SafeZoneUserAddressCopyWithImpl<$Res, _$SafeZoneUserAddressImpl>
    implements _$$SafeZoneUserAddressImplCopyWith<$Res> {
  __$$SafeZoneUserAddressImplCopyWithImpl(
    _$SafeZoneUserAddressImpl _value,
    $Res Function(_$SafeZoneUserAddressImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SafeZoneUserAddress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? townId = null,
    Object? address = null,
    Object? createdAt = null,
  }) {
    return _then(
      _$SafeZoneUserAddressImpl(
        userId:
            null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as String,
        townId:
            null == townId
                ? _value.townId
                : townId // ignore: cast_nullable_to_non_nullable
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
class _$SafeZoneUserAddressImpl extends _SafeZoneUserAddress {
  const _$SafeZoneUserAddressImpl({
    required this.userId,
    required this.townId,
    required this.address,
    required this.createdAt,
  }) : super._();

  factory _$SafeZoneUserAddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$SafeZoneUserAddressImplFromJson(json);

  @override
  final String userId;
  @override
  final String townId;
  @override
  final String address;
  @override
  final int createdAt;

  @override
  String toString() {
    return 'SafeZoneUserAddress(userId: $userId, townId: $townId, address: $address, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SafeZoneUserAddressImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.townId, townId) || other.townId == townId) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, townId, address, createdAt);

  /// Create a copy of SafeZoneUserAddress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SafeZoneUserAddressImplCopyWith<_$SafeZoneUserAddressImpl> get copyWith =>
      __$$SafeZoneUserAddressImplCopyWithImpl<_$SafeZoneUserAddressImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SafeZoneUserAddressImplToJson(this);
  }
}

abstract class _SafeZoneUserAddress extends SafeZoneUserAddress {
  const factory _SafeZoneUserAddress({
    required final String userId,
    required final String townId,
    required final String address,
    required final int createdAt,
  }) = _$SafeZoneUserAddressImpl;
  const _SafeZoneUserAddress._() : super._();

  factory _SafeZoneUserAddress.fromJson(Map<String, dynamic> json) =
      _$SafeZoneUserAddressImpl.fromJson;

  @override
  String get userId;
  @override
  String get townId;
  @override
  String get address;
  @override
  int get createdAt;

  /// Create a copy of SafeZoneUserAddress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SafeZoneUserAddressImplCopyWith<_$SafeZoneUserAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
