// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'select_town_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SelectTownState {
  Option<List<String>> get provinces => throw _privateConstructorUsedError;
  Option<List<String>> get districts => throw _privateConstructorUsedError;
  Option<List<String>> get cities => throw _privateConstructorUsedError;
  Option<List<String>> get towns => throw _privateConstructorUsedError;
  Option<Town> get selectedTown => throw _privateConstructorUsedError;

  /// Create a copy of SelectTownState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SelectTownStateCopyWith<SelectTownState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectTownStateCopyWith<$Res> {
  factory $SelectTownStateCopyWith(
    SelectTownState value,
    $Res Function(SelectTownState) then,
  ) = _$SelectTownStateCopyWithImpl<$Res, SelectTownState>;
  @useResult
  $Res call({
    Option<List<String>> provinces,
    Option<List<String>> districts,
    Option<List<String>> cities,
    Option<List<String>> towns,
    Option<Town> selectedTown,
  });
}

/// @nodoc
class _$SelectTownStateCopyWithImpl<$Res, $Val extends SelectTownState>
    implements $SelectTownStateCopyWith<$Res> {
  _$SelectTownStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelectTownState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provinces = null,
    Object? districts = null,
    Object? cities = null,
    Object? towns = null,
    Object? selectedTown = null,
  }) {
    return _then(
      _value.copyWith(
            provinces:
                null == provinces
                    ? _value.provinces
                    : provinces // ignore: cast_nullable_to_non_nullable
                        as Option<List<String>>,
            districts:
                null == districts
                    ? _value.districts
                    : districts // ignore: cast_nullable_to_non_nullable
                        as Option<List<String>>,
            cities:
                null == cities
                    ? _value.cities
                    : cities // ignore: cast_nullable_to_non_nullable
                        as Option<List<String>>,
            towns:
                null == towns
                    ? _value.towns
                    : towns // ignore: cast_nullable_to_non_nullable
                        as Option<List<String>>,
            selectedTown:
                null == selectedTown
                    ? _value.selectedTown
                    : selectedTown // ignore: cast_nullable_to_non_nullable
                        as Option<Town>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SelectTownStateImplCopyWith<$Res>
    implements $SelectTownStateCopyWith<$Res> {
  factory _$$SelectTownStateImplCopyWith(
    _$SelectTownStateImpl value,
    $Res Function(_$SelectTownStateImpl) then,
  ) = __$$SelectTownStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Option<List<String>> provinces,
    Option<List<String>> districts,
    Option<List<String>> cities,
    Option<List<String>> towns,
    Option<Town> selectedTown,
  });
}

/// @nodoc
class __$$SelectTownStateImplCopyWithImpl<$Res>
    extends _$SelectTownStateCopyWithImpl<$Res, _$SelectTownStateImpl>
    implements _$$SelectTownStateImplCopyWith<$Res> {
  __$$SelectTownStateImplCopyWithImpl(
    _$SelectTownStateImpl _value,
    $Res Function(_$SelectTownStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SelectTownState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provinces = null,
    Object? districts = null,
    Object? cities = null,
    Object? towns = null,
    Object? selectedTown = null,
  }) {
    return _then(
      _$SelectTownStateImpl(
        provinces:
            null == provinces
                ? _value.provinces
                : provinces // ignore: cast_nullable_to_non_nullable
                    as Option<List<String>>,
        districts:
            null == districts
                ? _value.districts
                : districts // ignore: cast_nullable_to_non_nullable
                    as Option<List<String>>,
        cities:
            null == cities
                ? _value.cities
                : cities // ignore: cast_nullable_to_non_nullable
                    as Option<List<String>>,
        towns:
            null == towns
                ? _value.towns
                : towns // ignore: cast_nullable_to_non_nullable
                    as Option<List<String>>,
        selectedTown:
            null == selectedTown
                ? _value.selectedTown
                : selectedTown // ignore: cast_nullable_to_non_nullable
                    as Option<Town>,
      ),
    );
  }
}

/// @nodoc

class _$SelectTownStateImpl implements _SelectTownState {
  const _$SelectTownStateImpl({
    required this.provinces,
    required this.districts,
    required this.cities,
    required this.towns,
    required this.selectedTown,
  });

  @override
  final Option<List<String>> provinces;
  @override
  final Option<List<String>> districts;
  @override
  final Option<List<String>> cities;
  @override
  final Option<List<String>> towns;
  @override
  final Option<Town> selectedTown;

  @override
  String toString() {
    return 'SelectTownState(provinces: $provinces, districts: $districts, cities: $cities, towns: $towns, selectedTown: $selectedTown)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectTownStateImpl &&
            (identical(other.provinces, provinces) ||
                other.provinces == provinces) &&
            (identical(other.districts, districts) ||
                other.districts == districts) &&
            (identical(other.cities, cities) || other.cities == cities) &&
            (identical(other.towns, towns) || other.towns == towns) &&
            (identical(other.selectedTown, selectedTown) ||
                other.selectedTown == selectedTown));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    provinces,
    districts,
    cities,
    towns,
    selectedTown,
  );

  /// Create a copy of SelectTownState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectTownStateImplCopyWith<_$SelectTownStateImpl> get copyWith =>
      __$$SelectTownStateImplCopyWithImpl<_$SelectTownStateImpl>(
        this,
        _$identity,
      );
}

abstract class _SelectTownState implements SelectTownState {
  const factory _SelectTownState({
    required final Option<List<String>> provinces,
    required final Option<List<String>> districts,
    required final Option<List<String>> cities,
    required final Option<List<String>> towns,
    required final Option<Town> selectedTown,
  }) = _$SelectTownStateImpl;

  @override
  Option<List<String>> get provinces;
  @override
  Option<List<String>> get districts;
  @override
  Option<List<String>> get cities;
  @override
  Option<List<String>> get towns;
  @override
  Option<Town> get selectedTown;

  /// Create a copy of SelectTownState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectTownStateImplCopyWith<_$SelectTownStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
