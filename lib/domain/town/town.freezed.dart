// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'town.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Town _$TownFromJson(Map<String, dynamic> json) {
  return _Town.fromJson(json);
}

/// @nodoc
mixin _$Town {
  String get id => throw _privateConstructorUsedError;
  String get town => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get district => throw _privateConstructorUsedError;
  String get province => throw _privateConstructorUsedError;

  /// Serializes this Town to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Town
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TownCopyWith<Town> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TownCopyWith<$Res> {
  factory $TownCopyWith(Town value, $Res Function(Town) then) =
      _$TownCopyWithImpl<$Res, Town>;
  @useResult
  $Res call({
    String id,
    String town,
    String city,
    String district,
    String province,
  });
}

/// @nodoc
class _$TownCopyWithImpl<$Res, $Val extends Town>
    implements $TownCopyWith<$Res> {
  _$TownCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Town
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? town = null,
    Object? city = null,
    Object? district = null,
    Object? province = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            town:
                null == town
                    ? _value.town
                    : town // ignore: cast_nullable_to_non_nullable
                        as String,
            city:
                null == city
                    ? _value.city
                    : city // ignore: cast_nullable_to_non_nullable
                        as String,
            district:
                null == district
                    ? _value.district
                    : district // ignore: cast_nullable_to_non_nullable
                        as String,
            province:
                null == province
                    ? _value.province
                    : province // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TownImplCopyWith<$Res> implements $TownCopyWith<$Res> {
  factory _$$TownImplCopyWith(
    _$TownImpl value,
    $Res Function(_$TownImpl) then,
  ) = __$$TownImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String town,
    String city,
    String district,
    String province,
  });
}

/// @nodoc
class __$$TownImplCopyWithImpl<$Res>
    extends _$TownCopyWithImpl<$Res, _$TownImpl>
    implements _$$TownImplCopyWith<$Res> {
  __$$TownImplCopyWithImpl(_$TownImpl _value, $Res Function(_$TownImpl) _then)
    : super(_value, _then);

  /// Create a copy of Town
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? town = null,
    Object? city = null,
    Object? district = null,
    Object? province = null,
  }) {
    return _then(
      _$TownImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        town:
            null == town
                ? _value.town
                : town // ignore: cast_nullable_to_non_nullable
                    as String,
        city:
            null == city
                ? _value.city
                : city // ignore: cast_nullable_to_non_nullable
                    as String,
        district:
            null == district
                ? _value.district
                : district // ignore: cast_nullable_to_non_nullable
                    as String,
        province:
            null == province
                ? _value.province
                : province // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TownImpl implements _Town {
  const _$TownImpl({
    required this.id,
    required this.town,
    required this.city,
    required this.district,
    required this.province,
  });

  factory _$TownImpl.fromJson(Map<String, dynamic> json) =>
      _$$TownImplFromJson(json);

  @override
  final String id;
  @override
  final String town;
  @override
  final String city;
  @override
  final String district;
  @override
  final String province;

  @override
  String toString() {
    return 'Town(id: $id, town: $town, city: $city, district: $district, province: $province)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TownImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.town, town) || other.town == town) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.province, province) ||
                other.province == province));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, town, city, district, province);

  /// Create a copy of Town
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TownImplCopyWith<_$TownImpl> get copyWith =>
      __$$TownImplCopyWithImpl<_$TownImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TownImplToJson(this);
  }
}

abstract class _Town implements Town {
  const factory _Town({
    required final String id,
    required final String town,
    required final String city,
    required final String district,
    required final String province,
  }) = _$TownImpl;

  factory _Town.fromJson(Map<String, dynamic> json) = _$TownImpl.fromJson;

  @override
  String get id;
  @override
  String get town;
  @override
  String get city;
  @override
  String get district;
  @override
  String get province;

  /// Create a copy of Town
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TownImplCopyWith<_$TownImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
