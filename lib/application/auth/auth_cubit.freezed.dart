// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState()';
}


}

/// @nodoc
class $AuthStateCopyWith<$Res>  {
$AuthStateCopyWith(AuthState _, $Res Function(AuthState) __);
}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _AuthenticatedUser value)?  authenticatedUser,TResult Function( _AuthenticatedOrg value)?  authenticatedOrg,TResult Function( _AuthenticatedAdmin value)?  authenticatedAdmin,TResult Function( _Loading value)?  loading,TResult Function( _Unauthenticated value)?  unAuthenticated,TResult Function( _RequireRegUser value)?  requireRegUser,TResult Function( _RequireRegOrg value)?  requireRegOrg,TResult Function( _Failed value)?  failed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthenticatedUser() when authenticatedUser != null:
return authenticatedUser(_that);case _AuthenticatedOrg() when authenticatedOrg != null:
return authenticatedOrg(_that);case _AuthenticatedAdmin() when authenticatedAdmin != null:
return authenticatedAdmin(_that);case _Loading() when loading != null:
return loading(_that);case _Unauthenticated() when unAuthenticated != null:
return unAuthenticated(_that);case _RequireRegUser() when requireRegUser != null:
return requireRegUser(_that);case _RequireRegOrg() when requireRegOrg != null:
return requireRegOrg(_that);case _Failed() when failed != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _AuthenticatedUser value)  authenticatedUser,required TResult Function( _AuthenticatedOrg value)  authenticatedOrg,required TResult Function( _AuthenticatedAdmin value)  authenticatedAdmin,required TResult Function( _Loading value)  loading,required TResult Function( _Unauthenticated value)  unAuthenticated,required TResult Function( _RequireRegUser value)  requireRegUser,required TResult Function( _RequireRegOrg value)  requireRegOrg,required TResult Function( _Failed value)  failed,}){
final _that = this;
switch (_that) {
case _AuthenticatedUser():
return authenticatedUser(_that);case _AuthenticatedOrg():
return authenticatedOrg(_that);case _AuthenticatedAdmin():
return authenticatedAdmin(_that);case _Loading():
return loading(_that);case _Unauthenticated():
return unAuthenticated(_that);case _RequireRegUser():
return requireRegUser(_that);case _RequireRegOrg():
return requireRegOrg(_that);case _Failed():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _AuthenticatedUser value)?  authenticatedUser,TResult? Function( _AuthenticatedOrg value)?  authenticatedOrg,TResult? Function( _AuthenticatedAdmin value)?  authenticatedAdmin,TResult? Function( _Loading value)?  loading,TResult? Function( _Unauthenticated value)?  unAuthenticated,TResult? Function( _RequireRegUser value)?  requireRegUser,TResult? Function( _RequireRegOrg value)?  requireRegOrg,TResult? Function( _Failed value)?  failed,}){
final _that = this;
switch (_that) {
case _AuthenticatedUser() when authenticatedUser != null:
return authenticatedUser(_that);case _AuthenticatedOrg() when authenticatedOrg != null:
return authenticatedOrg(_that);case _AuthenticatedAdmin() when authenticatedAdmin != null:
return authenticatedAdmin(_that);case _Loading() when loading != null:
return loading(_that);case _Unauthenticated() when unAuthenticated != null:
return unAuthenticated(_that);case _RequireRegUser() when requireRegUser != null:
return requireRegUser(_that);case _RequireRegOrg() when requireRegOrg != null:
return requireRegOrg(_that);case _Failed() when failed != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( SafeZoneUser user)?  authenticatedUser,TResult Function( Organization org)?  authenticatedOrg,TResult Function()?  authenticatedAdmin,TResult Function()?  loading,TResult Function()?  unAuthenticated,TResult Function( String uid,  String phone)?  requireRegUser,TResult Function( String uid,  String phone)?  requireRegOrg,TResult Function( String message)?  failed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthenticatedUser() when authenticatedUser != null:
return authenticatedUser(_that.user);case _AuthenticatedOrg() when authenticatedOrg != null:
return authenticatedOrg(_that.org);case _AuthenticatedAdmin() when authenticatedAdmin != null:
return authenticatedAdmin();case _Loading() when loading != null:
return loading();case _Unauthenticated() when unAuthenticated != null:
return unAuthenticated();case _RequireRegUser() when requireRegUser != null:
return requireRegUser(_that.uid,_that.phone);case _RequireRegOrg() when requireRegOrg != null:
return requireRegOrg(_that.uid,_that.phone);case _Failed() when failed != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( SafeZoneUser user)  authenticatedUser,required TResult Function( Organization org)  authenticatedOrg,required TResult Function()  authenticatedAdmin,required TResult Function()  loading,required TResult Function()  unAuthenticated,required TResult Function( String uid,  String phone)  requireRegUser,required TResult Function( String uid,  String phone)  requireRegOrg,required TResult Function( String message)  failed,}) {final _that = this;
switch (_that) {
case _AuthenticatedUser():
return authenticatedUser(_that.user);case _AuthenticatedOrg():
return authenticatedOrg(_that.org);case _AuthenticatedAdmin():
return authenticatedAdmin();case _Loading():
return loading();case _Unauthenticated():
return unAuthenticated();case _RequireRegUser():
return requireRegUser(_that.uid,_that.phone);case _RequireRegOrg():
return requireRegOrg(_that.uid,_that.phone);case _Failed():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( SafeZoneUser user)?  authenticatedUser,TResult? Function( Organization org)?  authenticatedOrg,TResult? Function()?  authenticatedAdmin,TResult? Function()?  loading,TResult? Function()?  unAuthenticated,TResult? Function( String uid,  String phone)?  requireRegUser,TResult? Function( String uid,  String phone)?  requireRegOrg,TResult? Function( String message)?  failed,}) {final _that = this;
switch (_that) {
case _AuthenticatedUser() when authenticatedUser != null:
return authenticatedUser(_that.user);case _AuthenticatedOrg() when authenticatedOrg != null:
return authenticatedOrg(_that.org);case _AuthenticatedAdmin() when authenticatedAdmin != null:
return authenticatedAdmin();case _Loading() when loading != null:
return loading();case _Unauthenticated() when unAuthenticated != null:
return unAuthenticated();case _RequireRegUser() when requireRegUser != null:
return requireRegUser(_that.uid,_that.phone);case _RequireRegOrg() when requireRegOrg != null:
return requireRegOrg(_that.uid,_that.phone);case _Failed() when failed != null:
return failed(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _AuthenticatedUser implements AuthState {
  const _AuthenticatedUser({required this.user});
  

 final  SafeZoneUser user;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthenticatedUserCopyWith<_AuthenticatedUser> get copyWith => __$AuthenticatedUserCopyWithImpl<_AuthenticatedUser>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthenticatedUser&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'AuthState.authenticatedUser(user: $user)';
}


}

/// @nodoc
abstract mixin class _$AuthenticatedUserCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthenticatedUserCopyWith(_AuthenticatedUser value, $Res Function(_AuthenticatedUser) _then) = __$AuthenticatedUserCopyWithImpl;
@useResult
$Res call({
 SafeZoneUser user
});


$SafeZoneUserCopyWith<$Res> get user;

}
/// @nodoc
class __$AuthenticatedUserCopyWithImpl<$Res>
    implements _$AuthenticatedUserCopyWith<$Res> {
  __$AuthenticatedUserCopyWithImpl(this._self, this._then);

  final _AuthenticatedUser _self;
  final $Res Function(_AuthenticatedUser) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(_AuthenticatedUser(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as SafeZoneUser,
  ));
}

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SafeZoneUserCopyWith<$Res> get user {
  
  return $SafeZoneUserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class _AuthenticatedOrg implements AuthState {
  const _AuthenticatedOrg({required this.org});
  

 final  Organization org;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthenticatedOrgCopyWith<_AuthenticatedOrg> get copyWith => __$AuthenticatedOrgCopyWithImpl<_AuthenticatedOrg>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthenticatedOrg&&(identical(other.org, org) || other.org == org));
}


@override
int get hashCode => Object.hash(runtimeType,org);

@override
String toString() {
  return 'AuthState.authenticatedOrg(org: $org)';
}


}

/// @nodoc
abstract mixin class _$AuthenticatedOrgCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthenticatedOrgCopyWith(_AuthenticatedOrg value, $Res Function(_AuthenticatedOrg) _then) = __$AuthenticatedOrgCopyWithImpl;
@useResult
$Res call({
 Organization org
});


$OrganizationCopyWith<$Res> get org;

}
/// @nodoc
class __$AuthenticatedOrgCopyWithImpl<$Res>
    implements _$AuthenticatedOrgCopyWith<$Res> {
  __$AuthenticatedOrgCopyWithImpl(this._self, this._then);

  final _AuthenticatedOrg _self;
  final $Res Function(_AuthenticatedOrg) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? org = null,}) {
  return _then(_AuthenticatedOrg(
org: null == org ? _self.org : org // ignore: cast_nullable_to_non_nullable
as Organization,
  ));
}

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrganizationCopyWith<$Res> get org {
  
  return $OrganizationCopyWith<$Res>(_self.org, (value) {
    return _then(_self.copyWith(org: value));
  });
}
}

/// @nodoc


class _AuthenticatedAdmin implements AuthState {
  const _AuthenticatedAdmin();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthenticatedAdmin);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.authenticatedAdmin()';
}


}




/// @nodoc


class _Loading implements AuthState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.loading()';
}


}




/// @nodoc


class _Unauthenticated implements AuthState {
  const _Unauthenticated();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Unauthenticated);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.unAuthenticated()';
}


}




/// @nodoc


class _RequireRegUser implements AuthState {
  const _RequireRegUser(this.uid, this.phone);
  

 final  String uid;
 final  String phone;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequireRegUserCopyWith<_RequireRegUser> get copyWith => __$RequireRegUserCopyWithImpl<_RequireRegUser>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequireRegUser&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.phone, phone) || other.phone == phone));
}


@override
int get hashCode => Object.hash(runtimeType,uid,phone);

@override
String toString() {
  return 'AuthState.requireRegUser(uid: $uid, phone: $phone)';
}


}

/// @nodoc
abstract mixin class _$RequireRegUserCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$RequireRegUserCopyWith(_RequireRegUser value, $Res Function(_RequireRegUser) _then) = __$RequireRegUserCopyWithImpl;
@useResult
$Res call({
 String uid, String phone
});




}
/// @nodoc
class __$RequireRegUserCopyWithImpl<$Res>
    implements _$RequireRegUserCopyWith<$Res> {
  __$RequireRegUserCopyWithImpl(this._self, this._then);

  final _RequireRegUser _self;
  final $Res Function(_RequireRegUser) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? phone = null,}) {
  return _then(_RequireRegUser(
null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _RequireRegOrg implements AuthState {
  const _RequireRegOrg(this.uid, this.phone);
  

 final  String uid;
 final  String phone;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequireRegOrgCopyWith<_RequireRegOrg> get copyWith => __$RequireRegOrgCopyWithImpl<_RequireRegOrg>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequireRegOrg&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.phone, phone) || other.phone == phone));
}


@override
int get hashCode => Object.hash(runtimeType,uid,phone);

@override
String toString() {
  return 'AuthState.requireRegOrg(uid: $uid, phone: $phone)';
}


}

/// @nodoc
abstract mixin class _$RequireRegOrgCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$RequireRegOrgCopyWith(_RequireRegOrg value, $Res Function(_RequireRegOrg) _then) = __$RequireRegOrgCopyWithImpl;
@useResult
$Res call({
 String uid, String phone
});




}
/// @nodoc
class __$RequireRegOrgCopyWithImpl<$Res>
    implements _$RequireRegOrgCopyWith<$Res> {
  __$RequireRegOrgCopyWithImpl(this._self, this._then);

  final _RequireRegOrg _self;
  final $Res Function(_RequireRegOrg) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? phone = null,}) {
  return _then(_RequireRegOrg(
null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Failed implements AuthState {
  const _Failed({required this.message});
  

 final  String message;

/// Create a copy of AuthState
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
  return 'AuthState.failed(message: $message)';
}


}

/// @nodoc
abstract mixin class _$FailedCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
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

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Failed(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
