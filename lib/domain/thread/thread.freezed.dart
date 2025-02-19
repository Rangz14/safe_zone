// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'thread.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SafeZoneThread _$SafeZoneThreadFromJson(Map<String, dynamic> json) {
  return _SafeZoneThread.fromJson(json);
}

/// @nodoc
mixin _$SafeZoneThread {
  String get id => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  int get startedAt => throw _privateConstructorUsedError;
  int get endedAt => throw _privateConstructorUsedError;
  String get threadCategoryId => throw _privateConstructorUsedError;
  int get createdAt => throw _privateConstructorUsedError;

  /// Serializes this SafeZoneThread to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SafeZoneThread
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SafeZoneThreadCopyWith<SafeZoneThread> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SafeZoneThreadCopyWith<$Res> {
  factory $SafeZoneThreadCopyWith(
    SafeZoneThread value,
    $Res Function(SafeZoneThread) then,
  ) = _$SafeZoneThreadCopyWithImpl<$Res, SafeZoneThread>;
  @useResult
  $Res call({
    String id,
    String state,
    String city,
    int startedAt,
    int endedAt,
    String threadCategoryId,
    int createdAt,
  });
}

/// @nodoc
class _$SafeZoneThreadCopyWithImpl<$Res, $Val extends SafeZoneThread>
    implements $SafeZoneThreadCopyWith<$Res> {
  _$SafeZoneThreadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SafeZoneThread
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? state = null,
    Object? city = null,
    Object? startedAt = null,
    Object? endedAt = null,
    Object? threadCategoryId = null,
    Object? createdAt = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            state:
                null == state
                    ? _value.state
                    : state // ignore: cast_nullable_to_non_nullable
                        as String,
            city:
                null == city
                    ? _value.city
                    : city // ignore: cast_nullable_to_non_nullable
                        as String,
            startedAt:
                null == startedAt
                    ? _value.startedAt
                    : startedAt // ignore: cast_nullable_to_non_nullable
                        as int,
            endedAt:
                null == endedAt
                    ? _value.endedAt
                    : endedAt // ignore: cast_nullable_to_non_nullable
                        as int,
            threadCategoryId:
                null == threadCategoryId
                    ? _value.threadCategoryId
                    : threadCategoryId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$SafeZoneThreadImplCopyWith<$Res>
    implements $SafeZoneThreadCopyWith<$Res> {
  factory _$$SafeZoneThreadImplCopyWith(
    _$SafeZoneThreadImpl value,
    $Res Function(_$SafeZoneThreadImpl) then,
  ) = __$$SafeZoneThreadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String state,
    String city,
    int startedAt,
    int endedAt,
    String threadCategoryId,
    int createdAt,
  });
}

/// @nodoc
class __$$SafeZoneThreadImplCopyWithImpl<$Res>
    extends _$SafeZoneThreadCopyWithImpl<$Res, _$SafeZoneThreadImpl>
    implements _$$SafeZoneThreadImplCopyWith<$Res> {
  __$$SafeZoneThreadImplCopyWithImpl(
    _$SafeZoneThreadImpl _value,
    $Res Function(_$SafeZoneThreadImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SafeZoneThread
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? state = null,
    Object? city = null,
    Object? startedAt = null,
    Object? endedAt = null,
    Object? threadCategoryId = null,
    Object? createdAt = null,
  }) {
    return _then(
      _$SafeZoneThreadImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        state:
            null == state
                ? _value.state
                : state // ignore: cast_nullable_to_non_nullable
                    as String,
        city:
            null == city
                ? _value.city
                : city // ignore: cast_nullable_to_non_nullable
                    as String,
        startedAt:
            null == startedAt
                ? _value.startedAt
                : startedAt // ignore: cast_nullable_to_non_nullable
                    as int,
        endedAt:
            null == endedAt
                ? _value.endedAt
                : endedAt // ignore: cast_nullable_to_non_nullable
                    as int,
        threadCategoryId:
            null == threadCategoryId
                ? _value.threadCategoryId
                : threadCategoryId // ignore: cast_nullable_to_non_nullable
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
class _$SafeZoneThreadImpl implements _SafeZoneThread {
  const _$SafeZoneThreadImpl({
    required this.id,
    required this.state,
    required this.city,
    required this.startedAt,
    required this.endedAt,
    required this.threadCategoryId,
    required this.createdAt,
  });

  factory _$SafeZoneThreadImpl.fromJson(Map<String, dynamic> json) =>
      _$$SafeZoneThreadImplFromJson(json);

  @override
  final String id;
  @override
  final String state;
  @override
  final String city;
  @override
  final int startedAt;
  @override
  final int endedAt;
  @override
  final String threadCategoryId;
  @override
  final int createdAt;

  @override
  String toString() {
    return 'SafeZoneThread(id: $id, state: $state, city: $city, startedAt: $startedAt, endedAt: $endedAt, threadCategoryId: $threadCategoryId, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SafeZoneThreadImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.endedAt, endedAt) || other.endedAt == endedAt) &&
            (identical(other.threadCategoryId, threadCategoryId) ||
                other.threadCategoryId == threadCategoryId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    state,
    city,
    startedAt,
    endedAt,
    threadCategoryId,
    createdAt,
  );

  /// Create a copy of SafeZoneThread
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SafeZoneThreadImplCopyWith<_$SafeZoneThreadImpl> get copyWith =>
      __$$SafeZoneThreadImplCopyWithImpl<_$SafeZoneThreadImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SafeZoneThreadImplToJson(this);
  }
}

abstract class _SafeZoneThread implements SafeZoneThread {
  const factory _SafeZoneThread({
    required final String id,
    required final String state,
    required final String city,
    required final int startedAt,
    required final int endedAt,
    required final String threadCategoryId,
    required final int createdAt,
  }) = _$SafeZoneThreadImpl;

  factory _SafeZoneThread.fromJson(Map<String, dynamic> json) =
      _$SafeZoneThreadImpl.fromJson;

  @override
  String get id;
  @override
  String get state;
  @override
  String get city;
  @override
  int get startedAt;
  @override
  int get endedAt;
  @override
  String get threadCategoryId;
  @override
  int get createdAt;

  /// Create a copy of SafeZoneThread
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SafeZoneThreadImplCopyWith<_$SafeZoneThreadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
