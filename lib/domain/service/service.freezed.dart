// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DonationService {

 String get id; String get title; String get description; String get icon; int get approximateUnitPrice; int get createdAt;
/// Create a copy of DonationService
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DonationServiceCopyWith<DonationService> get copyWith => _$DonationServiceCopyWithImpl<DonationService>(this as DonationService, _$identity);

  /// Serializes this DonationService to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DonationService&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.approximateUnitPrice, approximateUnitPrice) || other.approximateUnitPrice == approximateUnitPrice)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,icon,approximateUnitPrice,createdAt);

@override
String toString() {
  return 'DonationService(id: $id, title: $title, description: $description, icon: $icon, approximateUnitPrice: $approximateUnitPrice, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $DonationServiceCopyWith<$Res>  {
  factory $DonationServiceCopyWith(DonationService value, $Res Function(DonationService) _then) = _$DonationServiceCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description, String icon, int approximateUnitPrice, int createdAt
});




}
/// @nodoc
class _$DonationServiceCopyWithImpl<$Res>
    implements $DonationServiceCopyWith<$Res> {
  _$DonationServiceCopyWithImpl(this._self, this._then);

  final DonationService _self;
  final $Res Function(DonationService) _then;

/// Create a copy of DonationService
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? icon = null,Object? approximateUnitPrice = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,approximateUnitPrice: null == approximateUnitPrice ? _self.approximateUnitPrice : approximateUnitPrice // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DonationService].
extension DonationServicePatterns on DonationService {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DonationService value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DonationService() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DonationService value)  $default,){
final _that = this;
switch (_that) {
case _DonationService():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DonationService value)?  $default,){
final _that = this;
switch (_that) {
case _DonationService() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String description,  String icon,  int approximateUnitPrice,  int createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DonationService() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.icon,_that.approximateUnitPrice,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String description,  String icon,  int approximateUnitPrice,  int createdAt)  $default,) {final _that = this;
switch (_that) {
case _DonationService():
return $default(_that.id,_that.title,_that.description,_that.icon,_that.approximateUnitPrice,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String description,  String icon,  int approximateUnitPrice,  int createdAt)?  $default,) {final _that = this;
switch (_that) {
case _DonationService() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.icon,_that.approximateUnitPrice,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DonationService implements DonationService {
  const _DonationService({required this.id, required this.title, required this.description, required this.icon, required this.approximateUnitPrice, required this.createdAt});
  factory _DonationService.fromJson(Map<String, dynamic> json) => _$DonationServiceFromJson(json);

@override final  String id;
@override final  String title;
@override final  String description;
@override final  String icon;
@override final  int approximateUnitPrice;
@override final  int createdAt;

/// Create a copy of DonationService
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DonationServiceCopyWith<_DonationService> get copyWith => __$DonationServiceCopyWithImpl<_DonationService>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DonationServiceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DonationService&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.approximateUnitPrice, approximateUnitPrice) || other.approximateUnitPrice == approximateUnitPrice)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,icon,approximateUnitPrice,createdAt);

@override
String toString() {
  return 'DonationService(id: $id, title: $title, description: $description, icon: $icon, approximateUnitPrice: $approximateUnitPrice, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$DonationServiceCopyWith<$Res> implements $DonationServiceCopyWith<$Res> {
  factory _$DonationServiceCopyWith(_DonationService value, $Res Function(_DonationService) _then) = __$DonationServiceCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description, String icon, int approximateUnitPrice, int createdAt
});




}
/// @nodoc
class __$DonationServiceCopyWithImpl<$Res>
    implements _$DonationServiceCopyWith<$Res> {
  __$DonationServiceCopyWithImpl(this._self, this._then);

  final _DonationService _self;
  final $Res Function(_DonationService) _then;

/// Create a copy of DonationService
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? icon = null,Object? approximateUnitPrice = null,Object? createdAt = null,}) {
  return _then(_DonationService(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,approximateUnitPrice: null == approximateUnitPrice ? _self.approximateUnitPrice : approximateUnitPrice // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
