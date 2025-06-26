// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SafeZoneUser user) authenticatedUser,
    required TResult Function(Organization org) authenticatedOrg,
    required TResult Function() authenticatedAdmin,
    required TResult Function() loading,
    required TResult Function() unAuthenticated,
    required TResult Function(String uid, String phone) requireRegUser,
    required TResult Function(String message) failed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SafeZoneUser user)? authenticatedUser,
    TResult? Function(Organization org)? authenticatedOrg,
    TResult? Function()? authenticatedAdmin,
    TResult? Function()? loading,
    TResult? Function()? unAuthenticated,
    TResult? Function(String uid, String phone)? requireRegUser,
    TResult? Function(String message)? failed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SafeZoneUser user)? authenticatedUser,
    TResult Function(Organization org)? authenticatedOrg,
    TResult Function()? authenticatedAdmin,
    TResult Function()? loading,
    TResult Function()? unAuthenticated,
    TResult Function(String uid, String phone)? requireRegUser,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticatedUser value) authenticatedUser,
    required TResult Function(_AuthenticatedOrg value) authenticatedOrg,
    required TResult Function(_AuthenticatedAdmin value) authenticatedAdmin,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Unauthenticated value) unAuthenticated,
    required TResult Function(_RequireRegUser value) requireRegUser,
    required TResult Function(_Failed value) failed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticatedUser value)? authenticatedUser,
    TResult? Function(_AuthenticatedOrg value)? authenticatedOrg,
    TResult? Function(_AuthenticatedAdmin value)? authenticatedAdmin,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Unauthenticated value)? unAuthenticated,
    TResult? Function(_RequireRegUser value)? requireRegUser,
    TResult? Function(_Failed value)? failed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticatedUser value)? authenticatedUser,
    TResult Function(_AuthenticatedOrg value)? authenticatedOrg,
    TResult Function(_AuthenticatedAdmin value)? authenticatedAdmin,
    TResult Function(_Loading value)? loading,
    TResult Function(_Unauthenticated value)? unAuthenticated,
    TResult Function(_RequireRegUser value)? requireRegUser,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AuthenticatedUserImplCopyWith<$Res> {
  factory _$$AuthenticatedUserImplCopyWith(
    _$AuthenticatedUserImpl value,
    $Res Function(_$AuthenticatedUserImpl) then,
  ) = __$$AuthenticatedUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SafeZoneUser user});

  $SafeZoneUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$AuthenticatedUserImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthenticatedUserImpl>
    implements _$$AuthenticatedUserImplCopyWith<$Res> {
  __$$AuthenticatedUserImplCopyWithImpl(
    _$AuthenticatedUserImpl _value,
    $Res Function(_$AuthenticatedUserImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? user = null}) {
    return _then(
      _$AuthenticatedUserImpl(
        user:
            null == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                    as SafeZoneUser,
      ),
    );
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafeZoneUserCopyWith<$Res> get user {
    return $SafeZoneUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$AuthenticatedUserImpl implements _AuthenticatedUser {
  const _$AuthenticatedUserImpl({required this.user});

  @override
  final SafeZoneUser user;

  @override
  String toString() {
    return 'AuthState.authenticatedUser(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatedUserImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticatedUserImplCopyWith<_$AuthenticatedUserImpl> get copyWith =>
      __$$AuthenticatedUserImplCopyWithImpl<_$AuthenticatedUserImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SafeZoneUser user) authenticatedUser,
    required TResult Function(Organization org) authenticatedOrg,
    required TResult Function() authenticatedAdmin,
    required TResult Function() loading,
    required TResult Function() unAuthenticated,
    required TResult Function(String uid, String phone) requireRegUser,
    required TResult Function(String message) failed,
  }) {
    return authenticatedUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SafeZoneUser user)? authenticatedUser,
    TResult? Function(Organization org)? authenticatedOrg,
    TResult? Function()? authenticatedAdmin,
    TResult? Function()? loading,
    TResult? Function()? unAuthenticated,
    TResult? Function(String uid, String phone)? requireRegUser,
    TResult? Function(String message)? failed,
  }) {
    return authenticatedUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SafeZoneUser user)? authenticatedUser,
    TResult Function(Organization org)? authenticatedOrg,
    TResult Function()? authenticatedAdmin,
    TResult Function()? loading,
    TResult Function()? unAuthenticated,
    TResult Function(String uid, String phone)? requireRegUser,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (authenticatedUser != null) {
      return authenticatedUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticatedUser value) authenticatedUser,
    required TResult Function(_AuthenticatedOrg value) authenticatedOrg,
    required TResult Function(_AuthenticatedAdmin value) authenticatedAdmin,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Unauthenticated value) unAuthenticated,
    required TResult Function(_RequireRegUser value) requireRegUser,
    required TResult Function(_Failed value) failed,
  }) {
    return authenticatedUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticatedUser value)? authenticatedUser,
    TResult? Function(_AuthenticatedOrg value)? authenticatedOrg,
    TResult? Function(_AuthenticatedAdmin value)? authenticatedAdmin,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Unauthenticated value)? unAuthenticated,
    TResult? Function(_RequireRegUser value)? requireRegUser,
    TResult? Function(_Failed value)? failed,
  }) {
    return authenticatedUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticatedUser value)? authenticatedUser,
    TResult Function(_AuthenticatedOrg value)? authenticatedOrg,
    TResult Function(_AuthenticatedAdmin value)? authenticatedAdmin,
    TResult Function(_Loading value)? loading,
    TResult Function(_Unauthenticated value)? unAuthenticated,
    TResult Function(_RequireRegUser value)? requireRegUser,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (authenticatedUser != null) {
      return authenticatedUser(this);
    }
    return orElse();
  }
}

abstract class _AuthenticatedUser implements AuthState {
  const factory _AuthenticatedUser({required final SafeZoneUser user}) =
      _$AuthenticatedUserImpl;

  SafeZoneUser get user;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticatedUserImplCopyWith<_$AuthenticatedUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticatedOrgImplCopyWith<$Res> {
  factory _$$AuthenticatedOrgImplCopyWith(
    _$AuthenticatedOrgImpl value,
    $Res Function(_$AuthenticatedOrgImpl) then,
  ) = __$$AuthenticatedOrgImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Organization org});

  $OrganizationCopyWith<$Res> get org;
}

/// @nodoc
class __$$AuthenticatedOrgImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthenticatedOrgImpl>
    implements _$$AuthenticatedOrgImplCopyWith<$Res> {
  __$$AuthenticatedOrgImplCopyWithImpl(
    _$AuthenticatedOrgImpl _value,
    $Res Function(_$AuthenticatedOrgImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? org = null}) {
    return _then(
      _$AuthenticatedOrgImpl(
        org:
            null == org
                ? _value.org
                : org // ignore: cast_nullable_to_non_nullable
                    as Organization,
      ),
    );
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrganizationCopyWith<$Res> get org {
    return $OrganizationCopyWith<$Res>(_value.org, (value) {
      return _then(_value.copyWith(org: value));
    });
  }
}

/// @nodoc

class _$AuthenticatedOrgImpl implements _AuthenticatedOrg {
  const _$AuthenticatedOrgImpl({required this.org});

  @override
  final Organization org;

  @override
  String toString() {
    return 'AuthState.authenticatedOrg(org: $org)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatedOrgImpl &&
            (identical(other.org, org) || other.org == org));
  }

  @override
  int get hashCode => Object.hash(runtimeType, org);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticatedOrgImplCopyWith<_$AuthenticatedOrgImpl> get copyWith =>
      __$$AuthenticatedOrgImplCopyWithImpl<_$AuthenticatedOrgImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SafeZoneUser user) authenticatedUser,
    required TResult Function(Organization org) authenticatedOrg,
    required TResult Function() authenticatedAdmin,
    required TResult Function() loading,
    required TResult Function() unAuthenticated,
    required TResult Function(String uid, String phone) requireRegUser,
    required TResult Function(String message) failed,
  }) {
    return authenticatedOrg(org);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SafeZoneUser user)? authenticatedUser,
    TResult? Function(Organization org)? authenticatedOrg,
    TResult? Function()? authenticatedAdmin,
    TResult? Function()? loading,
    TResult? Function()? unAuthenticated,
    TResult? Function(String uid, String phone)? requireRegUser,
    TResult? Function(String message)? failed,
  }) {
    return authenticatedOrg?.call(org);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SafeZoneUser user)? authenticatedUser,
    TResult Function(Organization org)? authenticatedOrg,
    TResult Function()? authenticatedAdmin,
    TResult Function()? loading,
    TResult Function()? unAuthenticated,
    TResult Function(String uid, String phone)? requireRegUser,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (authenticatedOrg != null) {
      return authenticatedOrg(org);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticatedUser value) authenticatedUser,
    required TResult Function(_AuthenticatedOrg value) authenticatedOrg,
    required TResult Function(_AuthenticatedAdmin value) authenticatedAdmin,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Unauthenticated value) unAuthenticated,
    required TResult Function(_RequireRegUser value) requireRegUser,
    required TResult Function(_Failed value) failed,
  }) {
    return authenticatedOrg(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticatedUser value)? authenticatedUser,
    TResult? Function(_AuthenticatedOrg value)? authenticatedOrg,
    TResult? Function(_AuthenticatedAdmin value)? authenticatedAdmin,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Unauthenticated value)? unAuthenticated,
    TResult? Function(_RequireRegUser value)? requireRegUser,
    TResult? Function(_Failed value)? failed,
  }) {
    return authenticatedOrg?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticatedUser value)? authenticatedUser,
    TResult Function(_AuthenticatedOrg value)? authenticatedOrg,
    TResult Function(_AuthenticatedAdmin value)? authenticatedAdmin,
    TResult Function(_Loading value)? loading,
    TResult Function(_Unauthenticated value)? unAuthenticated,
    TResult Function(_RequireRegUser value)? requireRegUser,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (authenticatedOrg != null) {
      return authenticatedOrg(this);
    }
    return orElse();
  }
}

abstract class _AuthenticatedOrg implements AuthState {
  const factory _AuthenticatedOrg({required final Organization org}) =
      _$AuthenticatedOrgImpl;

  Organization get org;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticatedOrgImplCopyWith<_$AuthenticatedOrgImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticatedAdminImplCopyWith<$Res> {
  factory _$$AuthenticatedAdminImplCopyWith(
    _$AuthenticatedAdminImpl value,
    $Res Function(_$AuthenticatedAdminImpl) then,
  ) = __$$AuthenticatedAdminImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticatedAdminImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthenticatedAdminImpl>
    implements _$$AuthenticatedAdminImplCopyWith<$Res> {
  __$$AuthenticatedAdminImplCopyWithImpl(
    _$AuthenticatedAdminImpl _value,
    $Res Function(_$AuthenticatedAdminImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthenticatedAdminImpl implements _AuthenticatedAdmin {
  const _$AuthenticatedAdminImpl();

  @override
  String toString() {
    return 'AuthState.authenticatedAdmin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthenticatedAdminImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SafeZoneUser user) authenticatedUser,
    required TResult Function(Organization org) authenticatedOrg,
    required TResult Function() authenticatedAdmin,
    required TResult Function() loading,
    required TResult Function() unAuthenticated,
    required TResult Function(String uid, String phone) requireRegUser,
    required TResult Function(String message) failed,
  }) {
    return authenticatedAdmin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SafeZoneUser user)? authenticatedUser,
    TResult? Function(Organization org)? authenticatedOrg,
    TResult? Function()? authenticatedAdmin,
    TResult? Function()? loading,
    TResult? Function()? unAuthenticated,
    TResult? Function(String uid, String phone)? requireRegUser,
    TResult? Function(String message)? failed,
  }) {
    return authenticatedAdmin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SafeZoneUser user)? authenticatedUser,
    TResult Function(Organization org)? authenticatedOrg,
    TResult Function()? authenticatedAdmin,
    TResult Function()? loading,
    TResult Function()? unAuthenticated,
    TResult Function(String uid, String phone)? requireRegUser,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (authenticatedAdmin != null) {
      return authenticatedAdmin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticatedUser value) authenticatedUser,
    required TResult Function(_AuthenticatedOrg value) authenticatedOrg,
    required TResult Function(_AuthenticatedAdmin value) authenticatedAdmin,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Unauthenticated value) unAuthenticated,
    required TResult Function(_RequireRegUser value) requireRegUser,
    required TResult Function(_Failed value) failed,
  }) {
    return authenticatedAdmin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticatedUser value)? authenticatedUser,
    TResult? Function(_AuthenticatedOrg value)? authenticatedOrg,
    TResult? Function(_AuthenticatedAdmin value)? authenticatedAdmin,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Unauthenticated value)? unAuthenticated,
    TResult? Function(_RequireRegUser value)? requireRegUser,
    TResult? Function(_Failed value)? failed,
  }) {
    return authenticatedAdmin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticatedUser value)? authenticatedUser,
    TResult Function(_AuthenticatedOrg value)? authenticatedOrg,
    TResult Function(_AuthenticatedAdmin value)? authenticatedAdmin,
    TResult Function(_Loading value)? loading,
    TResult Function(_Unauthenticated value)? unAuthenticated,
    TResult Function(_RequireRegUser value)? requireRegUser,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (authenticatedAdmin != null) {
      return authenticatedAdmin(this);
    }
    return orElse();
  }
}

abstract class _AuthenticatedAdmin implements AuthState {
  const factory _AuthenticatedAdmin() = _$AuthenticatedAdminImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
    _$LoadingImpl value,
    $Res Function(_$LoadingImpl) then,
  ) = __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SafeZoneUser user) authenticatedUser,
    required TResult Function(Organization org) authenticatedOrg,
    required TResult Function() authenticatedAdmin,
    required TResult Function() loading,
    required TResult Function() unAuthenticated,
    required TResult Function(String uid, String phone) requireRegUser,
    required TResult Function(String message) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SafeZoneUser user)? authenticatedUser,
    TResult? Function(Organization org)? authenticatedOrg,
    TResult? Function()? authenticatedAdmin,
    TResult? Function()? loading,
    TResult? Function()? unAuthenticated,
    TResult? Function(String uid, String phone)? requireRegUser,
    TResult? Function(String message)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SafeZoneUser user)? authenticatedUser,
    TResult Function(Organization org)? authenticatedOrg,
    TResult Function()? authenticatedAdmin,
    TResult Function()? loading,
    TResult Function()? unAuthenticated,
    TResult Function(String uid, String phone)? requireRegUser,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticatedUser value) authenticatedUser,
    required TResult Function(_AuthenticatedOrg value) authenticatedOrg,
    required TResult Function(_AuthenticatedAdmin value) authenticatedAdmin,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Unauthenticated value) unAuthenticated,
    required TResult Function(_RequireRegUser value) requireRegUser,
    required TResult Function(_Failed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticatedUser value)? authenticatedUser,
    TResult? Function(_AuthenticatedOrg value)? authenticatedOrg,
    TResult? Function(_AuthenticatedAdmin value)? authenticatedAdmin,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Unauthenticated value)? unAuthenticated,
    TResult? Function(_RequireRegUser value)? requireRegUser,
    TResult? Function(_Failed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticatedUser value)? authenticatedUser,
    TResult Function(_AuthenticatedOrg value)? authenticatedOrg,
    TResult Function(_AuthenticatedAdmin value)? authenticatedAdmin,
    TResult Function(_Loading value)? loading,
    TResult Function(_Unauthenticated value)? unAuthenticated,
    TResult Function(_RequireRegUser value)? requireRegUser,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$UnauthenticatedImplCopyWith<$Res> {
  factory _$$UnauthenticatedImplCopyWith(
    _$UnauthenticatedImpl value,
    $Res Function(_$UnauthenticatedImpl) then,
  ) = __$$UnauthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthenticatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UnauthenticatedImpl>
    implements _$$UnauthenticatedImplCopyWith<$Res> {
  __$$UnauthenticatedImplCopyWithImpl(
    _$UnauthenticatedImpl _value,
    $Res Function(_$UnauthenticatedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnauthenticatedImpl implements _Unauthenticated {
  const _$UnauthenticatedImpl();

  @override
  String toString() {
    return 'AuthState.unAuthenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnauthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SafeZoneUser user) authenticatedUser,
    required TResult Function(Organization org) authenticatedOrg,
    required TResult Function() authenticatedAdmin,
    required TResult Function() loading,
    required TResult Function() unAuthenticated,
    required TResult Function(String uid, String phone) requireRegUser,
    required TResult Function(String message) failed,
  }) {
    return unAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SafeZoneUser user)? authenticatedUser,
    TResult? Function(Organization org)? authenticatedOrg,
    TResult? Function()? authenticatedAdmin,
    TResult? Function()? loading,
    TResult? Function()? unAuthenticated,
    TResult? Function(String uid, String phone)? requireRegUser,
    TResult? Function(String message)? failed,
  }) {
    return unAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SafeZoneUser user)? authenticatedUser,
    TResult Function(Organization org)? authenticatedOrg,
    TResult Function()? authenticatedAdmin,
    TResult Function()? loading,
    TResult Function()? unAuthenticated,
    TResult Function(String uid, String phone)? requireRegUser,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticatedUser value) authenticatedUser,
    required TResult Function(_AuthenticatedOrg value) authenticatedOrg,
    required TResult Function(_AuthenticatedAdmin value) authenticatedAdmin,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Unauthenticated value) unAuthenticated,
    required TResult Function(_RequireRegUser value) requireRegUser,
    required TResult Function(_Failed value) failed,
  }) {
    return unAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticatedUser value)? authenticatedUser,
    TResult? Function(_AuthenticatedOrg value)? authenticatedOrg,
    TResult? Function(_AuthenticatedAdmin value)? authenticatedAdmin,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Unauthenticated value)? unAuthenticated,
    TResult? Function(_RequireRegUser value)? requireRegUser,
    TResult? Function(_Failed value)? failed,
  }) {
    return unAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticatedUser value)? authenticatedUser,
    TResult Function(_AuthenticatedOrg value)? authenticatedOrg,
    TResult Function(_AuthenticatedAdmin value)? authenticatedAdmin,
    TResult Function(_Loading value)? loading,
    TResult Function(_Unauthenticated value)? unAuthenticated,
    TResult Function(_RequireRegUser value)? requireRegUser,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated implements AuthState {
  const factory _Unauthenticated() = _$UnauthenticatedImpl;
}

/// @nodoc
abstract class _$$RequireRegUserImplCopyWith<$Res> {
  factory _$$RequireRegUserImplCopyWith(
    _$RequireRegUserImpl value,
    $Res Function(_$RequireRegUserImpl) then,
  ) = __$$RequireRegUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String uid, String phone});
}

/// @nodoc
class __$$RequireRegUserImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$RequireRegUserImpl>
    implements _$$RequireRegUserImplCopyWith<$Res> {
  __$$RequireRegUserImplCopyWithImpl(
    _$RequireRegUserImpl _value,
    $Res Function(_$RequireRegUserImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? uid = null, Object? phone = null}) {
    return _then(
      _$RequireRegUserImpl(
        null == uid
            ? _value.uid
            : uid // ignore: cast_nullable_to_non_nullable
                as String,
        null == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$RequireRegUserImpl implements _RequireRegUser {
  const _$RequireRegUserImpl(this.uid, this.phone);

  @override
  final String uid;
  @override
  final String phone;

  @override
  String toString() {
    return 'AuthState.requireRegUser(uid: $uid, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequireRegUserImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid, phone);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequireRegUserImplCopyWith<_$RequireRegUserImpl> get copyWith =>
      __$$RequireRegUserImplCopyWithImpl<_$RequireRegUserImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SafeZoneUser user) authenticatedUser,
    required TResult Function(Organization org) authenticatedOrg,
    required TResult Function() authenticatedAdmin,
    required TResult Function() loading,
    required TResult Function() unAuthenticated,
    required TResult Function(String uid, String phone) requireRegUser,
    required TResult Function(String message) failed,
  }) {
    return requireRegUser(uid, phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SafeZoneUser user)? authenticatedUser,
    TResult? Function(Organization org)? authenticatedOrg,
    TResult? Function()? authenticatedAdmin,
    TResult? Function()? loading,
    TResult? Function()? unAuthenticated,
    TResult? Function(String uid, String phone)? requireRegUser,
    TResult? Function(String message)? failed,
  }) {
    return requireRegUser?.call(uid, phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SafeZoneUser user)? authenticatedUser,
    TResult Function(Organization org)? authenticatedOrg,
    TResult Function()? authenticatedAdmin,
    TResult Function()? loading,
    TResult Function()? unAuthenticated,
    TResult Function(String uid, String phone)? requireRegUser,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (requireRegUser != null) {
      return requireRegUser(uid, phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticatedUser value) authenticatedUser,
    required TResult Function(_AuthenticatedOrg value) authenticatedOrg,
    required TResult Function(_AuthenticatedAdmin value) authenticatedAdmin,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Unauthenticated value) unAuthenticated,
    required TResult Function(_RequireRegUser value) requireRegUser,
    required TResult Function(_Failed value) failed,
  }) {
    return requireRegUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticatedUser value)? authenticatedUser,
    TResult? Function(_AuthenticatedOrg value)? authenticatedOrg,
    TResult? Function(_AuthenticatedAdmin value)? authenticatedAdmin,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Unauthenticated value)? unAuthenticated,
    TResult? Function(_RequireRegUser value)? requireRegUser,
    TResult? Function(_Failed value)? failed,
  }) {
    return requireRegUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticatedUser value)? authenticatedUser,
    TResult Function(_AuthenticatedOrg value)? authenticatedOrg,
    TResult Function(_AuthenticatedAdmin value)? authenticatedAdmin,
    TResult Function(_Loading value)? loading,
    TResult Function(_Unauthenticated value)? unAuthenticated,
    TResult Function(_RequireRegUser value)? requireRegUser,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (requireRegUser != null) {
      return requireRegUser(this);
    }
    return orElse();
  }
}

abstract class _RequireRegUser implements AuthState {
  const factory _RequireRegUser(final String uid, final String phone) =
      _$RequireRegUserImpl;

  String get uid;
  String get phone;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequireRegUserImplCopyWith<_$RequireRegUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
    _$FailedImpl value,
    $Res Function(_$FailedImpl) then,
  ) = __$$FailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
    _$FailedImpl _value,
    $Res Function(_$FailedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$FailedImpl(
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.failed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SafeZoneUser user) authenticatedUser,
    required TResult Function(Organization org) authenticatedOrg,
    required TResult Function() authenticatedAdmin,
    required TResult Function() loading,
    required TResult Function() unAuthenticated,
    required TResult Function(String uid, String phone) requireRegUser,
    required TResult Function(String message) failed,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SafeZoneUser user)? authenticatedUser,
    TResult? Function(Organization org)? authenticatedOrg,
    TResult? Function()? authenticatedAdmin,
    TResult? Function()? loading,
    TResult? Function()? unAuthenticated,
    TResult? Function(String uid, String phone)? requireRegUser,
    TResult? Function(String message)? failed,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SafeZoneUser user)? authenticatedUser,
    TResult Function(Organization org)? authenticatedOrg,
    TResult Function()? authenticatedAdmin,
    TResult Function()? loading,
    TResult Function()? unAuthenticated,
    TResult Function(String uid, String phone)? requireRegUser,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticatedUser value) authenticatedUser,
    required TResult Function(_AuthenticatedOrg value) authenticatedOrg,
    required TResult Function(_AuthenticatedAdmin value) authenticatedAdmin,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Unauthenticated value) unAuthenticated,
    required TResult Function(_RequireRegUser value) requireRegUser,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticatedUser value)? authenticatedUser,
    TResult? Function(_AuthenticatedOrg value)? authenticatedOrg,
    TResult? Function(_AuthenticatedAdmin value)? authenticatedAdmin,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Unauthenticated value)? unAuthenticated,
    TResult? Function(_RequireRegUser value)? requireRegUser,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticatedUser value)? authenticatedUser,
    TResult Function(_AuthenticatedOrg value)? authenticatedOrg,
    TResult Function(_AuthenticatedAdmin value)? authenticatedAdmin,
    TResult Function(_Loading value)? loading,
    TResult Function(_Unauthenticated value)? unAuthenticated,
    TResult Function(_RequireRegUser value)? requireRegUser,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements AuthState {
  const factory _Failed({required final String message}) = _$FailedImpl;

  String get message;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
