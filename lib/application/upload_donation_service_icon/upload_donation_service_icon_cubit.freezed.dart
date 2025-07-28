// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_donation_service_icon_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UploadDonationServiceIconState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadDonationServiceIconState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UploadDonationServiceIconState()';
}


}

/// @nodoc
class $UploadDonationServiceIconStateCopyWith<$Res>  {
$UploadDonationServiceIconStateCopyWith(UploadDonationServiceIconState _, $Res Function(UploadDonationServiceIconState) __);
}


/// Adds pattern-matching-related methods to [UploadDonationServiceIconState].
extension UploadDonationServiceIconStatePatterns on UploadDonationServiceIconState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Uploading value)?  uploading,TResult Function( _Succeed value)?  uploaded,TResult Function( _Failed value)?  failed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Uploading() when uploading != null:
return uploading(_that);case _Succeed() when uploaded != null:
return uploaded(_that);case _Failed() when failed != null:
return failed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Uploading value)  uploading,required TResult Function( _Succeed value)  uploaded,required TResult Function( _Failed value)  failed,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Uploading():
return uploading(_that);case _Succeed():
return uploaded(_that);case _Failed():
return failed(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Uploading value)?  uploading,TResult? Function( _Succeed value)?  uploaded,TResult? Function( _Failed value)?  failed,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Uploading() when uploading != null:
return uploading(_that);case _Succeed() when uploaded != null:
return uploaded(_that);case _Failed() when failed != null:
return failed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  uploading,TResult Function( String downloadUrl)?  uploaded,TResult Function( String message)?  failed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Uploading() when uploading != null:
return uploading();case _Succeed() when uploaded != null:
return uploaded(_that.downloadUrl);case _Failed() when failed != null:
return failed(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  uploading,required TResult Function( String downloadUrl)  uploaded,required TResult Function( String message)  failed,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Uploading():
return uploading();case _Succeed():
return uploaded(_that.downloadUrl);case _Failed():
return failed(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  uploading,TResult? Function( String downloadUrl)?  uploaded,TResult? Function( String message)?  failed,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Uploading() when uploading != null:
return uploading();case _Succeed() when uploaded != null:
return uploaded(_that.downloadUrl);case _Failed() when failed != null:
return failed(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements UploadDonationServiceIconState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UploadDonationServiceIconState.initial()';
}


}




/// @nodoc


class _Uploading implements UploadDonationServiceIconState {
  const _Uploading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Uploading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UploadDonationServiceIconState.uploading()';
}


}




/// @nodoc


class _Succeed implements UploadDonationServiceIconState {
  const _Succeed(this.downloadUrl);
  

 final  String downloadUrl;

/// Create a copy of UploadDonationServiceIconState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SucceedCopyWith<_Succeed> get copyWith => __$SucceedCopyWithImpl<_Succeed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Succeed&&(identical(other.downloadUrl, downloadUrl) || other.downloadUrl == downloadUrl));
}


@override
int get hashCode => Object.hash(runtimeType,downloadUrl);

@override
String toString() {
  return 'UploadDonationServiceIconState.uploaded(downloadUrl: $downloadUrl)';
}


}

/// @nodoc
abstract mixin class _$SucceedCopyWith<$Res> implements $UploadDonationServiceIconStateCopyWith<$Res> {
  factory _$SucceedCopyWith(_Succeed value, $Res Function(_Succeed) _then) = __$SucceedCopyWithImpl;
@useResult
$Res call({
 String downloadUrl
});




}
/// @nodoc
class __$SucceedCopyWithImpl<$Res>
    implements _$SucceedCopyWith<$Res> {
  __$SucceedCopyWithImpl(this._self, this._then);

  final _Succeed _self;
  final $Res Function(_Succeed) _then;

/// Create a copy of UploadDonationServiceIconState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? downloadUrl = null,}) {
  return _then(_Succeed(
null == downloadUrl ? _self.downloadUrl : downloadUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Failed implements UploadDonationServiceIconState {
  const _Failed(this.message);
  

 final  String message;

/// Create a copy of UploadDonationServiceIconState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailedCopyWith<_Failed> get copyWith => __$FailedCopyWithImpl<_Failed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Failed&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'UploadDonationServiceIconState.failed(message: $message)';
}


}

/// @nodoc
abstract mixin class _$FailedCopyWith<$Res> implements $UploadDonationServiceIconStateCopyWith<$Res> {
  factory _$FailedCopyWith(_Failed value, $Res Function(_Failed) _then) = __$FailedCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$FailedCopyWithImpl<$Res>
    implements _$FailedCopyWith<$Res> {
  __$FailedCopyWithImpl(this._self, this._then);

  final _Failed _self;
  final $Res Function(_Failed) _then;

/// Create a copy of UploadDonationServiceIconState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Failed(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
