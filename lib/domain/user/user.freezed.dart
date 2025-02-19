// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SafeZoneUser _$SafeZoneUserFromJson(Map<String, dynamic> json) {
  return _SafeZoneUser.fromJson(json);
}

/// @nodoc
mixin _$SafeZoneUser {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  int get createdAt => throw _privateConstructorUsedError;

  /// Serializes this SafeZoneUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SafeZoneUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SafeZoneUserCopyWith<SafeZoneUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SafeZoneUserCopyWith<$Res> {
  factory $SafeZoneUserCopyWith(
    SafeZoneUser value,
    $Res Function(SafeZoneUser) then,
  ) = _$SafeZoneUserCopyWithImpl<$Res, SafeZoneUser>;
  @useResult
  $Res call({
    String id,
    String name,
    String phone,
    String image,
    int createdAt,
  });
}

/// @nodoc
class _$SafeZoneUserCopyWithImpl<$Res, $Val extends SafeZoneUser>
    implements $SafeZoneUserCopyWith<$Res> {
  _$SafeZoneUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SafeZoneUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phone = null,
    Object? image = null,
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
            phone:
                null == phone
                    ? _value.phone
                    : phone // ignore: cast_nullable_to_non_nullable
                        as String,
            image:
                null == image
                    ? _value.image
                    : image // ignore: cast_nullable_to_non_nullable
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
abstract class _$$SafeZoneUserImplCopyWith<$Res>
    implements $SafeZoneUserCopyWith<$Res> {
  factory _$$SafeZoneUserImplCopyWith(
    _$SafeZoneUserImpl value,
    $Res Function(_$SafeZoneUserImpl) then,
  ) = __$$SafeZoneUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String phone,
    String image,
    int createdAt,
  });
}

/// @nodoc
class __$$SafeZoneUserImplCopyWithImpl<$Res>
    extends _$SafeZoneUserCopyWithImpl<$Res, _$SafeZoneUserImpl>
    implements _$$SafeZoneUserImplCopyWith<$Res> {
  __$$SafeZoneUserImplCopyWithImpl(
    _$SafeZoneUserImpl _value,
    $Res Function(_$SafeZoneUserImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SafeZoneUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phone = null,
    Object? image = null,
    Object? createdAt = null,
  }) {
    return _then(
      _$SafeZoneUserImpl(
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
        phone:
            null == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                    as String,
        image:
            null == image
                ? _value.image
                : image // ignore: cast_nullable_to_non_nullable
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
class _$SafeZoneUserImpl implements _SafeZoneUser {
  const _$SafeZoneUserImpl({
    required this.id,
    required this.name,
    required this.phone,
    required this.image,
    required this.createdAt,
  });

  factory _$SafeZoneUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$SafeZoneUserImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String phone;
  @override
  final String image;
  @override
  final int createdAt;

  @override
  String toString() {
    return 'SafeZoneUser(id: $id, name: $name, phone: $phone, image: $image, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SafeZoneUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, phone, image, createdAt);

  /// Create a copy of SafeZoneUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SafeZoneUserImplCopyWith<_$SafeZoneUserImpl> get copyWith =>
      __$$SafeZoneUserImplCopyWithImpl<_$SafeZoneUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SafeZoneUserImplToJson(this);
  }
}

abstract class _SafeZoneUser implements SafeZoneUser {
  const factory _SafeZoneUser({
    required final String id,
    required final String name,
    required final String phone,
    required final String image,
    required final int createdAt,
  }) = _$SafeZoneUserImpl;

  factory _SafeZoneUser.fromJson(Map<String, dynamic> json) =
      _$SafeZoneUserImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  @override
  String get image;
  @override
  int get createdAt;

  /// Create a copy of SafeZoneUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SafeZoneUserImplCopyWith<_$SafeZoneUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
