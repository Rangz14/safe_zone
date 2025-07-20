// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'organization_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

OrganizationService _$OrganizationServiceFromJson(Map<String, dynamic> json) {
  return _OrganizationService.fromJson(json);
}

/// @nodoc
mixin _$OrganizationService {
  String get id => throw _privateConstructorUsedError;
  String get serviceId => throw _privateConstructorUsedError;
  String get orgId => throw _privateConstructorUsedError;
  int get createdAt => throw _privateConstructorUsedError;

  /// Serializes this OrganizationService to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrganizationService
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrganizationServiceCopyWith<OrganizationService> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizationServiceCopyWith<$Res> {
  factory $OrganizationServiceCopyWith(
    OrganizationService value,
    $Res Function(OrganizationService) then,
  ) = _$OrganizationServiceCopyWithImpl<$Res, OrganizationService>;
  @useResult
  $Res call({String id, String serviceId, String orgId, int createdAt});
}

/// @nodoc
class _$OrganizationServiceCopyWithImpl<$Res, $Val extends OrganizationService>
    implements $OrganizationServiceCopyWith<$Res> {
  _$OrganizationServiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrganizationService
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? serviceId = null,
    Object? orgId = null,
    Object? createdAt = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            serviceId:
                null == serviceId
                    ? _value.serviceId
                    : serviceId // ignore: cast_nullable_to_non_nullable
                        as String,
            orgId:
                null == orgId
                    ? _value.orgId
                    : orgId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$OrganizationServiceImplCopyWith<$Res>
    implements $OrganizationServiceCopyWith<$Res> {
  factory _$$OrganizationServiceImplCopyWith(
    _$OrganizationServiceImpl value,
    $Res Function(_$OrganizationServiceImpl) then,
  ) = __$$OrganizationServiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String serviceId, String orgId, int createdAt});
}

/// @nodoc
class __$$OrganizationServiceImplCopyWithImpl<$Res>
    extends _$OrganizationServiceCopyWithImpl<$Res, _$OrganizationServiceImpl>
    implements _$$OrganizationServiceImplCopyWith<$Res> {
  __$$OrganizationServiceImplCopyWithImpl(
    _$OrganizationServiceImpl _value,
    $Res Function(_$OrganizationServiceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrganizationService
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? serviceId = null,
    Object? orgId = null,
    Object? createdAt = null,
  }) {
    return _then(
      _$OrganizationServiceImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        serviceId:
            null == serviceId
                ? _value.serviceId
                : serviceId // ignore: cast_nullable_to_non_nullable
                    as String,
        orgId:
            null == orgId
                ? _value.orgId
                : orgId // ignore: cast_nullable_to_non_nullable
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
class _$OrganizationServiceImpl implements _OrganizationService {
  const _$OrganizationServiceImpl({
    required this.id,
    required this.serviceId,
    required this.orgId,
    required this.createdAt,
  });

  factory _$OrganizationServiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrganizationServiceImplFromJson(json);

  @override
  final String id;
  @override
  final String serviceId;
  @override
  final String orgId;
  @override
  final int createdAt;

  @override
  String toString() {
    return 'OrganizationService(id: $id, serviceId: $serviceId, orgId: $orgId, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrganizationServiceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.serviceId, serviceId) ||
                other.serviceId == serviceId) &&
            (identical(other.orgId, orgId) || other.orgId == orgId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, serviceId, orgId, createdAt);

  /// Create a copy of OrganizationService
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrganizationServiceImplCopyWith<_$OrganizationServiceImpl> get copyWith =>
      __$$OrganizationServiceImplCopyWithImpl<_$OrganizationServiceImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OrganizationServiceImplToJson(this);
  }
}

abstract class _OrganizationService implements OrganizationService {
  const factory _OrganizationService({
    required final String id,
    required final String serviceId,
    required final String orgId,
    required final int createdAt,
  }) = _$OrganizationServiceImpl;

  factory _OrganizationService.fromJson(Map<String, dynamic> json) =
      _$OrganizationServiceImpl.fromJson;

  @override
  String get id;
  @override
  String get serviceId;
  @override
  String get orgId;
  @override
  int get createdAt;

  /// Create a copy of OrganizationService
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrganizationServiceImplCopyWith<_$OrganizationServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
