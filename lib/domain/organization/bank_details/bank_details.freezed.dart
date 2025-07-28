// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bank_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrganizationBankDetails {

 String get organizationId; String get bankName; String get bankBranch; String get accountName; String get accountNumber; int get createdAt;
/// Create a copy of OrganizationBankDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrganizationBankDetailsCopyWith<OrganizationBankDetails> get copyWith => _$OrganizationBankDetailsCopyWithImpl<OrganizationBankDetails>(this as OrganizationBankDetails, _$identity);

  /// Serializes this OrganizationBankDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrganizationBankDetails&&(identical(other.organizationId, organizationId) || other.organizationId == organizationId)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.bankBranch, bankBranch) || other.bankBranch == bankBranch)&&(identical(other.accountName, accountName) || other.accountName == accountName)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,organizationId,bankName,bankBranch,accountName,accountNumber,createdAt);

@override
String toString() {
  return 'OrganizationBankDetails(organizationId: $organizationId, bankName: $bankName, bankBranch: $bankBranch, accountName: $accountName, accountNumber: $accountNumber, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $OrganizationBankDetailsCopyWith<$Res>  {
  factory $OrganizationBankDetailsCopyWith(OrganizationBankDetails value, $Res Function(OrganizationBankDetails) _then) = _$OrganizationBankDetailsCopyWithImpl;
@useResult
$Res call({
 String organizationId, String bankName, String bankBranch, String accountName, String accountNumber, int createdAt
});




}
/// @nodoc
class _$OrganizationBankDetailsCopyWithImpl<$Res>
    implements $OrganizationBankDetailsCopyWith<$Res> {
  _$OrganizationBankDetailsCopyWithImpl(this._self, this._then);

  final OrganizationBankDetails _self;
  final $Res Function(OrganizationBankDetails) _then;

/// Create a copy of OrganizationBankDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? organizationId = null,Object? bankName = null,Object? bankBranch = null,Object? accountName = null,Object? accountNumber = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
organizationId: null == organizationId ? _self.organizationId : organizationId // ignore: cast_nullable_to_non_nullable
as String,bankName: null == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String,bankBranch: null == bankBranch ? _self.bankBranch : bankBranch // ignore: cast_nullable_to_non_nullable
as String,accountName: null == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as String,accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [OrganizationBankDetails].
extension OrganizationBankDetailsPatterns on OrganizationBankDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrganizationBankDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrganizationBankDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrganizationBankDetails value)  $default,){
final _that = this;
switch (_that) {
case _OrganizationBankDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrganizationBankDetails value)?  $default,){
final _that = this;
switch (_that) {
case _OrganizationBankDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String organizationId,  String bankName,  String bankBranch,  String accountName,  String accountNumber,  int createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrganizationBankDetails() when $default != null:
return $default(_that.organizationId,_that.bankName,_that.bankBranch,_that.accountName,_that.accountNumber,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String organizationId,  String bankName,  String bankBranch,  String accountName,  String accountNumber,  int createdAt)  $default,) {final _that = this;
switch (_that) {
case _OrganizationBankDetails():
return $default(_that.organizationId,_that.bankName,_that.bankBranch,_that.accountName,_that.accountNumber,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String organizationId,  String bankName,  String bankBranch,  String accountName,  String accountNumber,  int createdAt)?  $default,) {final _that = this;
switch (_that) {
case _OrganizationBankDetails() when $default != null:
return $default(_that.organizationId,_that.bankName,_that.bankBranch,_that.accountName,_that.accountNumber,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrganizationBankDetails implements OrganizationBankDetails {
  const _OrganizationBankDetails({required this.organizationId, required this.bankName, required this.bankBranch, required this.accountName, required this.accountNumber, required this.createdAt});
  factory _OrganizationBankDetails.fromJson(Map<String, dynamic> json) => _$OrganizationBankDetailsFromJson(json);

@override final  String organizationId;
@override final  String bankName;
@override final  String bankBranch;
@override final  String accountName;
@override final  String accountNumber;
@override final  int createdAt;

/// Create a copy of OrganizationBankDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrganizationBankDetailsCopyWith<_OrganizationBankDetails> get copyWith => __$OrganizationBankDetailsCopyWithImpl<_OrganizationBankDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrganizationBankDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrganizationBankDetails&&(identical(other.organizationId, organizationId) || other.organizationId == organizationId)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.bankBranch, bankBranch) || other.bankBranch == bankBranch)&&(identical(other.accountName, accountName) || other.accountName == accountName)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,organizationId,bankName,bankBranch,accountName,accountNumber,createdAt);

@override
String toString() {
  return 'OrganizationBankDetails(organizationId: $organizationId, bankName: $bankName, bankBranch: $bankBranch, accountName: $accountName, accountNumber: $accountNumber, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$OrganizationBankDetailsCopyWith<$Res> implements $OrganizationBankDetailsCopyWith<$Res> {
  factory _$OrganizationBankDetailsCopyWith(_OrganizationBankDetails value, $Res Function(_OrganizationBankDetails) _then) = __$OrganizationBankDetailsCopyWithImpl;
@override @useResult
$Res call({
 String organizationId, String bankName, String bankBranch, String accountName, String accountNumber, int createdAt
});




}
/// @nodoc
class __$OrganizationBankDetailsCopyWithImpl<$Res>
    implements _$OrganizationBankDetailsCopyWith<$Res> {
  __$OrganizationBankDetailsCopyWithImpl(this._self, this._then);

  final _OrganizationBankDetails _self;
  final $Res Function(_OrganizationBankDetails) _then;

/// Create a copy of OrganizationBankDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? organizationId = null,Object? bankName = null,Object? bankBranch = null,Object? accountName = null,Object? accountNumber = null,Object? createdAt = null,}) {
  return _then(_OrganizationBankDetails(
organizationId: null == organizationId ? _self.organizationId : organizationId // ignore: cast_nullable_to_non_nullable
as String,bankName: null == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String,bankBranch: null == bankBranch ? _self.bankBranch : bankBranch // ignore: cast_nullable_to_non_nullable
as String,accountName: null == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as String,accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
