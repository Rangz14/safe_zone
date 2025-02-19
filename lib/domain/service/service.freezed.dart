// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DonationService _$DonationServiceFromJson(Map<String, dynamic> json) {
  return _DonationService.fromJson(json);
}

/// @nodoc
mixin _$DonationService {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  int get approximateUnitPrice => throw _privateConstructorUsedError;
  int get createdAt => throw _privateConstructorUsedError;

  /// Serializes this DonationService to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DonationService
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DonationServiceCopyWith<DonationService> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DonationServiceCopyWith<$Res> {
  factory $DonationServiceCopyWith(
    DonationService value,
    $Res Function(DonationService) then,
  ) = _$DonationServiceCopyWithImpl<$Res, DonationService>;
  @useResult
  $Res call({
    String id,
    String title,
    String description,
    String icon,
    int approximateUnitPrice,
    int createdAt,
  });
}

/// @nodoc
class _$DonationServiceCopyWithImpl<$Res, $Val extends DonationService>
    implements $DonationServiceCopyWith<$Res> {
  _$DonationServiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DonationService
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? icon = null,
    Object? approximateUnitPrice = null,
    Object? createdAt = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String,
            description:
                null == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String,
            icon:
                null == icon
                    ? _value.icon
                    : icon // ignore: cast_nullable_to_non_nullable
                        as String,
            approximateUnitPrice:
                null == approximateUnitPrice
                    ? _value.approximateUnitPrice
                    : approximateUnitPrice // ignore: cast_nullable_to_non_nullable
                        as int,
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
abstract class _$$DonationServiceImplCopyWith<$Res>
    implements $DonationServiceCopyWith<$Res> {
  factory _$$DonationServiceImplCopyWith(
    _$DonationServiceImpl value,
    $Res Function(_$DonationServiceImpl) then,
  ) = __$$DonationServiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String title,
    String description,
    String icon,
    int approximateUnitPrice,
    int createdAt,
  });
}

/// @nodoc
class __$$DonationServiceImplCopyWithImpl<$Res>
    extends _$DonationServiceCopyWithImpl<$Res, _$DonationServiceImpl>
    implements _$$DonationServiceImplCopyWith<$Res> {
  __$$DonationServiceImplCopyWithImpl(
    _$DonationServiceImpl _value,
    $Res Function(_$DonationServiceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DonationService
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? icon = null,
    Object? approximateUnitPrice = null,
    Object? createdAt = null,
  }) {
    return _then(
      _$DonationServiceImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
        description:
            null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String,
        icon:
            null == icon
                ? _value.icon
                : icon // ignore: cast_nullable_to_non_nullable
                    as String,
        approximateUnitPrice:
            null == approximateUnitPrice
                ? _value.approximateUnitPrice
                : approximateUnitPrice // ignore: cast_nullable_to_non_nullable
                    as int,
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
class _$DonationServiceImpl implements _DonationService {
  const _$DonationServiceImpl({
    required this.id,
    required this.title,
    required this.description,
    required this.icon,
    required this.approximateUnitPrice,
    required this.createdAt,
  });

  factory _$DonationServiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$DonationServiceImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String icon;
  @override
  final int approximateUnitPrice;
  @override
  final int createdAt;

  @override
  String toString() {
    return 'DonationService(id: $id, title: $title, description: $description, icon: $icon, approximateUnitPrice: $approximateUnitPrice, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DonationServiceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.approximateUnitPrice, approximateUnitPrice) ||
                other.approximateUnitPrice == approximateUnitPrice) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    description,
    icon,
    approximateUnitPrice,
    createdAt,
  );

  /// Create a copy of DonationService
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DonationServiceImplCopyWith<_$DonationServiceImpl> get copyWith =>
      __$$DonationServiceImplCopyWithImpl<_$DonationServiceImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DonationServiceImplToJson(this);
  }
}

abstract class _DonationService implements DonationService {
  const factory _DonationService({
    required final String id,
    required final String title,
    required final String description,
    required final String icon,
    required final int approximateUnitPrice,
    required final int createdAt,
  }) = _$DonationServiceImpl;

  factory _DonationService.fromJson(Map<String, dynamic> json) =
      _$DonationServiceImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get icon;
  @override
  int get approximateUnitPrice;
  @override
  int get createdAt;

  /// Create a copy of DonationService
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DonationServiceImplCopyWith<_$DonationServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
