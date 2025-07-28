// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'select_town_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SelectTownState {

 Option<List<String>> get provinces; Option<List<String>> get districts; Option<List<String>> get cities; Option<List<String>> get towns; Option<Town> get selectedTown;
/// Create a copy of SelectTownState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectTownStateCopyWith<SelectTownState> get copyWith => _$SelectTownStateCopyWithImpl<SelectTownState>(this as SelectTownState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectTownState&&(identical(other.provinces, provinces) || other.provinces == provinces)&&(identical(other.districts, districts) || other.districts == districts)&&(identical(other.cities, cities) || other.cities == cities)&&(identical(other.towns, towns) || other.towns == towns)&&(identical(other.selectedTown, selectedTown) || other.selectedTown == selectedTown));
}


@override
int get hashCode => Object.hash(runtimeType,provinces,districts,cities,towns,selectedTown);

@override
String toString() {
  return 'SelectTownState(provinces: $provinces, districts: $districts, cities: $cities, towns: $towns, selectedTown: $selectedTown)';
}


}

/// @nodoc
abstract mixin class $SelectTownStateCopyWith<$Res>  {
  factory $SelectTownStateCopyWith(SelectTownState value, $Res Function(SelectTownState) _then) = _$SelectTownStateCopyWithImpl;
@useResult
$Res call({
 Option<List<String>> provinces, Option<List<String>> districts, Option<List<String>> cities, Option<List<String>> towns, Option<Town> selectedTown
});




}
/// @nodoc
class _$SelectTownStateCopyWithImpl<$Res>
    implements $SelectTownStateCopyWith<$Res> {
  _$SelectTownStateCopyWithImpl(this._self, this._then);

  final SelectTownState _self;
  final $Res Function(SelectTownState) _then;

/// Create a copy of SelectTownState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? provinces = null,Object? districts = null,Object? cities = null,Object? towns = null,Object? selectedTown = null,}) {
  return _then(_self.copyWith(
provinces: null == provinces ? _self.provinces : provinces // ignore: cast_nullable_to_non_nullable
as Option<List<String>>,districts: null == districts ? _self.districts : districts // ignore: cast_nullable_to_non_nullable
as Option<List<String>>,cities: null == cities ? _self.cities : cities // ignore: cast_nullable_to_non_nullable
as Option<List<String>>,towns: null == towns ? _self.towns : towns // ignore: cast_nullable_to_non_nullable
as Option<List<String>>,selectedTown: null == selectedTown ? _self.selectedTown : selectedTown // ignore: cast_nullable_to_non_nullable
as Option<Town>,
  ));
}

}


/// Adds pattern-matching-related methods to [SelectTownState].
extension SelectTownStatePatterns on SelectTownState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SelectTownState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SelectTownState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SelectTownState value)  $default,){
final _that = this;
switch (_that) {
case _SelectTownState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SelectTownState value)?  $default,){
final _that = this;
switch (_that) {
case _SelectTownState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Option<List<String>> provinces,  Option<List<String>> districts,  Option<List<String>> cities,  Option<List<String>> towns,  Option<Town> selectedTown)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SelectTownState() when $default != null:
return $default(_that.provinces,_that.districts,_that.cities,_that.towns,_that.selectedTown);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Option<List<String>> provinces,  Option<List<String>> districts,  Option<List<String>> cities,  Option<List<String>> towns,  Option<Town> selectedTown)  $default,) {final _that = this;
switch (_that) {
case _SelectTownState():
return $default(_that.provinces,_that.districts,_that.cities,_that.towns,_that.selectedTown);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Option<List<String>> provinces,  Option<List<String>> districts,  Option<List<String>> cities,  Option<List<String>> towns,  Option<Town> selectedTown)?  $default,) {final _that = this;
switch (_that) {
case _SelectTownState() when $default != null:
return $default(_that.provinces,_that.districts,_that.cities,_that.towns,_that.selectedTown);case _:
  return null;

}
}

}

/// @nodoc


class _SelectTownState implements SelectTownState {
  const _SelectTownState({required this.provinces, required this.districts, required this.cities, required this.towns, required this.selectedTown});
  

@override final  Option<List<String>> provinces;
@override final  Option<List<String>> districts;
@override final  Option<List<String>> cities;
@override final  Option<List<String>> towns;
@override final  Option<Town> selectedTown;

/// Create a copy of SelectTownState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelectTownStateCopyWith<_SelectTownState> get copyWith => __$SelectTownStateCopyWithImpl<_SelectTownState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelectTownState&&(identical(other.provinces, provinces) || other.provinces == provinces)&&(identical(other.districts, districts) || other.districts == districts)&&(identical(other.cities, cities) || other.cities == cities)&&(identical(other.towns, towns) || other.towns == towns)&&(identical(other.selectedTown, selectedTown) || other.selectedTown == selectedTown));
}


@override
int get hashCode => Object.hash(runtimeType,provinces,districts,cities,towns,selectedTown);

@override
String toString() {
  return 'SelectTownState(provinces: $provinces, districts: $districts, cities: $cities, towns: $towns, selectedTown: $selectedTown)';
}


}

/// @nodoc
abstract mixin class _$SelectTownStateCopyWith<$Res> implements $SelectTownStateCopyWith<$Res> {
  factory _$SelectTownStateCopyWith(_SelectTownState value, $Res Function(_SelectTownState) _then) = __$SelectTownStateCopyWithImpl;
@override @useResult
$Res call({
 Option<List<String>> provinces, Option<List<String>> districts, Option<List<String>> cities, Option<List<String>> towns, Option<Town> selectedTown
});




}
/// @nodoc
class __$SelectTownStateCopyWithImpl<$Res>
    implements _$SelectTownStateCopyWith<$Res> {
  __$SelectTownStateCopyWithImpl(this._self, this._then);

  final _SelectTownState _self;
  final $Res Function(_SelectTownState) _then;

/// Create a copy of SelectTownState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? provinces = null,Object? districts = null,Object? cities = null,Object? towns = null,Object? selectedTown = null,}) {
  return _then(_SelectTownState(
provinces: null == provinces ? _self.provinces : provinces // ignore: cast_nullable_to_non_nullable
as Option<List<String>>,districts: null == districts ? _self.districts : districts // ignore: cast_nullable_to_non_nullable
as Option<List<String>>,cities: null == cities ? _self.cities : cities // ignore: cast_nullable_to_non_nullable
as Option<List<String>>,towns: null == towns ? _self.towns : towns // ignore: cast_nullable_to_non_nullable
as Option<List<String>>,selectedTown: null == selectedTown ? _self.selectedTown : selectedTown // ignore: cast_nullable_to_non_nullable
as Option<Town>,
  ));
}


}

// dart format on
