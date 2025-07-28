// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'town.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Town {

 String get id; String get town; String get city; String get district; String get province;
/// Create a copy of Town
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TownCopyWith<Town> get copyWith => _$TownCopyWithImpl<Town>(this as Town, _$identity);

  /// Serializes this Town to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Town&&(identical(other.id, id) || other.id == id)&&(identical(other.town, town) || other.town == town)&&(identical(other.city, city) || other.city == city)&&(identical(other.district, district) || other.district == district)&&(identical(other.province, province) || other.province == province));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,town,city,district,province);

@override
String toString() {
  return 'Town(id: $id, town: $town, city: $city, district: $district, province: $province)';
}


}

/// @nodoc
abstract mixin class $TownCopyWith<$Res>  {
  factory $TownCopyWith(Town value, $Res Function(Town) _then) = _$TownCopyWithImpl;
@useResult
$Res call({
 String id, String town, String city, String district, String province
});




}
/// @nodoc
class _$TownCopyWithImpl<$Res>
    implements $TownCopyWith<$Res> {
  _$TownCopyWithImpl(this._self, this._then);

  final Town _self;
  final $Res Function(Town) _then;

/// Create a copy of Town
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? town = null,Object? city = null,Object? district = null,Object? province = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,town: null == town ? _self.town : town // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,district: null == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String,province: null == province ? _self.province : province // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Town].
extension TownPatterns on Town {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Town value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Town() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Town value)  $default,){
final _that = this;
switch (_that) {
case _Town():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Town value)?  $default,){
final _that = this;
switch (_that) {
case _Town() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String town,  String city,  String district,  String province)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Town() when $default != null:
return $default(_that.id,_that.town,_that.city,_that.district,_that.province);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String town,  String city,  String district,  String province)  $default,) {final _that = this;
switch (_that) {
case _Town():
return $default(_that.id,_that.town,_that.city,_that.district,_that.province);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String town,  String city,  String district,  String province)?  $default,) {final _that = this;
switch (_that) {
case _Town() when $default != null:
return $default(_that.id,_that.town,_that.city,_that.district,_that.province);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Town implements Town {
  const _Town({required this.id, required this.town, required this.city, required this.district, required this.province});
  factory _Town.fromJson(Map<String, dynamic> json) => _$TownFromJson(json);

@override final  String id;
@override final  String town;
@override final  String city;
@override final  String district;
@override final  String province;

/// Create a copy of Town
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TownCopyWith<_Town> get copyWith => __$TownCopyWithImpl<_Town>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TownToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Town&&(identical(other.id, id) || other.id == id)&&(identical(other.town, town) || other.town == town)&&(identical(other.city, city) || other.city == city)&&(identical(other.district, district) || other.district == district)&&(identical(other.province, province) || other.province == province));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,town,city,district,province);

@override
String toString() {
  return 'Town(id: $id, town: $town, city: $city, district: $district, province: $province)';
}


}

/// @nodoc
abstract mixin class _$TownCopyWith<$Res> implements $TownCopyWith<$Res> {
  factory _$TownCopyWith(_Town value, $Res Function(_Town) _then) = __$TownCopyWithImpl;
@override @useResult
$Res call({
 String id, String town, String city, String district, String province
});




}
/// @nodoc
class __$TownCopyWithImpl<$Res>
    implements _$TownCopyWith<$Res> {
  __$TownCopyWithImpl(this._self, this._then);

  final _Town _self;
  final $Res Function(_Town) _then;

/// Create a copy of Town
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? town = null,Object? city = null,Object? district = null,Object? province = null,}) {
  return _then(_Town(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,town: null == town ? _self.town : town // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,district: null == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String,province: null == province ? _self.province : province // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
