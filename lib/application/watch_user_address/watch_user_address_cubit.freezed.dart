// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'watch_user_address_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$WatchUserAddressState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(SafeZoneUserAddress address) watching,
    required TResult Function() failed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(SafeZoneUserAddress address)? watching,
    TResult? Function()? failed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(SafeZoneUserAddress address)? watching,
    TResult Function()? failed,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Watching value) watching,
    required TResult Function(_Failed value) failed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Watching value)? watching,
    TResult? Function(_Failed value)? failed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Watching value)? watching,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatchUserAddressStateCopyWith<$Res> {
  factory $WatchUserAddressStateCopyWith(
    WatchUserAddressState value,
    $Res Function(WatchUserAddressState) then,
  ) = _$WatchUserAddressStateCopyWithImpl<$Res, WatchUserAddressState>;
}

/// @nodoc
class _$WatchUserAddressStateCopyWithImpl<
  $Res,
  $Val extends WatchUserAddressState
>
    implements $WatchUserAddressStateCopyWith<$Res> {
  _$WatchUserAddressStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WatchUserAddressState
  /// with the given fields replaced by the non-null parameter values.
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
    extends _$WatchUserAddressStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WatchUserAddressState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'WatchUserAddressState.loading()';
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
    required TResult Function() loading,
    required TResult Function(SafeZoneUserAddress address) watching,
    required TResult Function() failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(SafeZoneUserAddress address)? watching,
    TResult? Function()? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(SafeZoneUserAddress address)? watching,
    TResult Function()? failed,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Watching value) watching,
    required TResult Function(_Failed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Watching value)? watching,
    TResult? Function(_Failed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Watching value)? watching,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements WatchUserAddressState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$WatchingImplCopyWith<$Res> {
  factory _$$WatchingImplCopyWith(
    _$WatchingImpl value,
    $Res Function(_$WatchingImpl) then,
  ) = __$$WatchingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SafeZoneUserAddress address});

  $SafeZoneUserAddressCopyWith<$Res> get address;
}

/// @nodoc
class __$$WatchingImplCopyWithImpl<$Res>
    extends _$WatchUserAddressStateCopyWithImpl<$Res, _$WatchingImpl>
    implements _$$WatchingImplCopyWith<$Res> {
  __$$WatchingImplCopyWithImpl(
    _$WatchingImpl _value,
    $Res Function(_$WatchingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WatchUserAddressState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? address = null}) {
    return _then(
      _$WatchingImpl(
        null == address
            ? _value.address
            : address // ignore: cast_nullable_to_non_nullable
                as SafeZoneUserAddress,
      ),
    );
  }

  /// Create a copy of WatchUserAddressState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafeZoneUserAddressCopyWith<$Res> get address {
    return $SafeZoneUserAddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value));
    });
  }
}

/// @nodoc

class _$WatchingImpl implements _Watching {
  const _$WatchingImpl(this.address);

  @override
  final SafeZoneUserAddress address;

  @override
  String toString() {
    return 'WatchUserAddressState.watching(address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WatchingImpl &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address);

  /// Create a copy of WatchUserAddressState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WatchingImplCopyWith<_$WatchingImpl> get copyWith =>
      __$$WatchingImplCopyWithImpl<_$WatchingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(SafeZoneUserAddress address) watching,
    required TResult Function() failed,
  }) {
    return watching(address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(SafeZoneUserAddress address)? watching,
    TResult? Function()? failed,
  }) {
    return watching?.call(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(SafeZoneUserAddress address)? watching,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (watching != null) {
      return watching(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Watching value) watching,
    required TResult Function(_Failed value) failed,
  }) {
    return watching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Watching value)? watching,
    TResult? Function(_Failed value)? failed,
  }) {
    return watching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Watching value)? watching,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (watching != null) {
      return watching(this);
    }
    return orElse();
  }
}

abstract class _Watching implements WatchUserAddressState {
  const factory _Watching(final SafeZoneUserAddress address) = _$WatchingImpl;

  SafeZoneUserAddress get address;

  /// Create a copy of WatchUserAddressState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WatchingImplCopyWith<_$WatchingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
    _$FailedImpl value,
    $Res Function(_$FailedImpl) then,
  ) = __$$FailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$WatchUserAddressStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
    _$FailedImpl _value,
    $Res Function(_$FailedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WatchUserAddressState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl();

  @override
  String toString() {
    return 'WatchUserAddressState.failed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(SafeZoneUserAddress address) watching,
    required TResult Function() failed,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(SafeZoneUserAddress address)? watching,
    TResult? Function()? failed,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(SafeZoneUserAddress address)? watching,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Watching value) watching,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Watching value)? watching,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Watching value)? watching,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements WatchUserAddressState {
  const factory _Failed() = _$FailedImpl;
}
