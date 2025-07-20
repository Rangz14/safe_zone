// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'watch_threats_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$WatchThreatsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<SafeZoneThreat> threats) watching,
    required TResult Function(String message) failed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<SafeZoneThreat> threats)? watching,
    TResult? Function(String message)? failed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<SafeZoneThreat> threats)? watching,
    TResult Function(String message)? failed,
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
abstract class $WatchThreatsStateCopyWith<$Res> {
  factory $WatchThreatsStateCopyWith(
    WatchThreatsState value,
    $Res Function(WatchThreatsState) then,
  ) = _$WatchThreatsStateCopyWithImpl<$Res, WatchThreatsState>;
}

/// @nodoc
class _$WatchThreatsStateCopyWithImpl<$Res, $Val extends WatchThreatsState>
    implements $WatchThreatsStateCopyWith<$Res> {
  _$WatchThreatsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WatchThreatsState
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
    extends _$WatchThreatsStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WatchThreatsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'WatchThreatsState.loading()';
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
    required TResult Function(List<SafeZoneThreat> threats) watching,
    required TResult Function(String message) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<SafeZoneThreat> threats)? watching,
    TResult? Function(String message)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<SafeZoneThreat> threats)? watching,
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

abstract class _Loading implements WatchThreatsState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$WatchingImplCopyWith<$Res> {
  factory _$$WatchingImplCopyWith(
    _$WatchingImpl value,
    $Res Function(_$WatchingImpl) then,
  ) = __$$WatchingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SafeZoneThreat> threats});
}

/// @nodoc
class __$$WatchingImplCopyWithImpl<$Res>
    extends _$WatchThreatsStateCopyWithImpl<$Res, _$WatchingImpl>
    implements _$$WatchingImplCopyWith<$Res> {
  __$$WatchingImplCopyWithImpl(
    _$WatchingImpl _value,
    $Res Function(_$WatchingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WatchThreatsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? threats = null}) {
    return _then(
      _$WatchingImpl(
        null == threats
            ? _value._threats
            : threats // ignore: cast_nullable_to_non_nullable
                as List<SafeZoneThreat>,
      ),
    );
  }
}

/// @nodoc

class _$WatchingImpl implements _Watching {
  const _$WatchingImpl(final List<SafeZoneThreat> threats) : _threats = threats;

  final List<SafeZoneThreat> _threats;
  @override
  List<SafeZoneThreat> get threats {
    if (_threats is EqualUnmodifiableListView) return _threats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_threats);
  }

  @override
  String toString() {
    return 'WatchThreatsState.watching(threats: $threats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WatchingImpl &&
            const DeepCollectionEquality().equals(other._threats, _threats));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_threats));

  /// Create a copy of WatchThreatsState
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
    required TResult Function(List<SafeZoneThreat> threats) watching,
    required TResult Function(String message) failed,
  }) {
    return watching(threats);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<SafeZoneThreat> threats)? watching,
    TResult? Function(String message)? failed,
  }) {
    return watching?.call(threats);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<SafeZoneThreat> threats)? watching,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (watching != null) {
      return watching(threats);
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

abstract class _Watching implements WatchThreatsState {
  const factory _Watching(final List<SafeZoneThreat> threats) = _$WatchingImpl;

  List<SafeZoneThreat> get threats;

  /// Create a copy of WatchThreatsState
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
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$WatchThreatsStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
    _$FailedImpl _value,
    $Res Function(_$FailedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WatchThreatsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$FailedImpl(
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
  const _$FailedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'WatchThreatsState.failed(message: $message)';
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

  /// Create a copy of WatchThreatsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<SafeZoneThreat> threats) watching,
    required TResult Function(String message) failed,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<SafeZoneThreat> threats)? watching,
    TResult? Function(String message)? failed,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<SafeZoneThreat> threats)? watching,
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

abstract class _Failed implements WatchThreatsState {
  const factory _Failed(final String message) = _$FailedImpl;

  String get message;

  /// Create a copy of WatchThreatsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
