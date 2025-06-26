// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'threat_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ThreatCategory _$ThreatCategoryFromJson(Map<String, dynamic> json) {
  return _ThreadCategory.fromJson(json);
}

/// @nodoc
mixin _$ThreatCategory {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  int get createdAt => throw _privateConstructorUsedError;

  /// Serializes this ThreadCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ThreadCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ThreadCategoryCopyWith<ThreatCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThreadCategoryCopyWith<$Res> {
  factory $ThreadCategoryCopyWith(
    ThreatCategory value,
    $Res Function(ThreatCategory) then,
  ) = _$ThreadCategoryCopyWithImpl<$Res, ThreatCategory>;
  @useResult
  $Res call({
    String id,
    String name,
    String description,
    String icon,
    int createdAt,
  });
}

/// @nodoc
class _$ThreadCategoryCopyWithImpl<$Res, $Val extends ThreatCategory>
    implements $ThreadCategoryCopyWith<$Res> {
  _$ThreadCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ThreadCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? icon = null,
    Object? createdAt = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ThreadCategoryImplCopyWith<$Res>
    implements $ThreadCategoryCopyWith<$Res> {
  factory _$$ThreadCategoryImplCopyWith(
    _$ThreadCategoryImpl value,
    $Res Function(_$ThreadCategoryImpl) then,
  ) = __$$ThreadCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String description,
    String icon,
    int createdAt,
  });
}

/// @nodoc
class __$$ThreadCategoryImplCopyWithImpl<$Res>
    extends _$ThreadCategoryCopyWithImpl<$Res, _$ThreadCategoryImpl>
    implements _$$ThreadCategoryImplCopyWith<$Res> {
  __$$ThreadCategoryImplCopyWithImpl(
    _$ThreadCategoryImpl _value,
    $Res Function(_$ThreadCategoryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ThreadCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? icon = null,
    Object? createdAt = null,
  }) {
    return _then(
      _$ThreadCategoryImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
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
class _$ThreadCategoryImpl implements _ThreadCategory {
  const _$ThreadCategoryImpl({
    required this.id,
    required this.name,
    required this.description,
    required this.icon,
    required this.createdAt,
  });

  factory _$ThreadCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThreadCategoryImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String icon;
  @override
  final int createdAt;

  @override
  String toString() {
    return 'ThreadCategory(id: $id, name: $name, description: $description, icon: $icon, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThreadCategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, icon, createdAt);

  /// Create a copy of ThreadCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ThreadCategoryImplCopyWith<_$ThreadCategoryImpl> get copyWith =>
      __$$ThreadCategoryImplCopyWithImpl<_$ThreadCategoryImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ThreadCategoryImplToJson(this);
  }
}

abstract class _ThreadCategory implements ThreatCategory {
  const factory _ThreadCategory({
    required final String id,
    required final String name,
    required final String description,
    required final String icon,
    required final int createdAt,
  }) = _$ThreadCategoryImpl;

  factory _ThreadCategory.fromJson(Map<String, dynamic> json) =
      _$ThreadCategoryImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get icon;
  @override
  int get createdAt;

  /// Create a copy of ThreadCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThreadCategoryImplCopyWith<_$ThreadCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
