// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bank_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

OrganizationBankDetails _$OrganizationBankDetailsFromJson(
  Map<String, dynamic> json,
) {
  return _OrganizationBankDetails.fromJson(json);
}

/// @nodoc
mixin _$OrganizationBankDetails {
  String get organizationId => throw _privateConstructorUsedError;
  String get bankName => throw _privateConstructorUsedError;
  String get bankBranch => throw _privateConstructorUsedError;
  String get accountName => throw _privateConstructorUsedError;
  String get accountNumber => throw _privateConstructorUsedError;
  int get createdAt => throw _privateConstructorUsedError;

  /// Serializes this OrganizationBankDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrganizationBankDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrganizationBankDetailsCopyWith<OrganizationBankDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizationBankDetailsCopyWith<$Res> {
  factory $OrganizationBankDetailsCopyWith(
    OrganizationBankDetails value,
    $Res Function(OrganizationBankDetails) then,
  ) = _$OrganizationBankDetailsCopyWithImpl<$Res, OrganizationBankDetails>;
  @useResult
  $Res call({
    String organizationId,
    String bankName,
    String bankBranch,
    String accountName,
    String accountNumber,
    int createdAt,
  });
}

/// @nodoc
class _$OrganizationBankDetailsCopyWithImpl<
  $Res,
  $Val extends OrganizationBankDetails
>
    implements $OrganizationBankDetailsCopyWith<$Res> {
  _$OrganizationBankDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrganizationBankDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? organizationId = null,
    Object? bankName = null,
    Object? bankBranch = null,
    Object? accountName = null,
    Object? accountNumber = null,
    Object? createdAt = null,
  }) {
    return _then(
      _value.copyWith(
            organizationId:
                null == organizationId
                    ? _value.organizationId
                    : organizationId // ignore: cast_nullable_to_non_nullable
                        as String,
            bankName:
                null == bankName
                    ? _value.bankName
                    : bankName // ignore: cast_nullable_to_non_nullable
                        as String,
            bankBranch:
                null == bankBranch
                    ? _value.bankBranch
                    : bankBranch // ignore: cast_nullable_to_non_nullable
                        as String,
            accountName:
                null == accountName
                    ? _value.accountName
                    : accountName // ignore: cast_nullable_to_non_nullable
                        as String,
            accountNumber:
                null == accountNumber
                    ? _value.accountNumber
                    : accountNumber // ignore: cast_nullable_to_non_nullable
                        as String,
            createdAt:
                null == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrganizationBankDetailsImplCopyWith<$Res>
    implements $OrganizationBankDetailsCopyWith<$Res> {
  factory _$$OrganizationBankDetailsImplCopyWith(
    _$OrganizationBankDetailsImpl value,
    $Res Function(_$OrganizationBankDetailsImpl) then,
  ) = __$$OrganizationBankDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String organizationId,
    String bankName,
    String bankBranch,
    String accountName,
    String accountNumber,
    int createdAt,
  });
}

/// @nodoc
class __$$OrganizationBankDetailsImplCopyWithImpl<$Res>
    extends
        _$OrganizationBankDetailsCopyWithImpl<
          $Res,
          _$OrganizationBankDetailsImpl
        >
    implements _$$OrganizationBankDetailsImplCopyWith<$Res> {
  __$$OrganizationBankDetailsImplCopyWithImpl(
    _$OrganizationBankDetailsImpl _value,
    $Res Function(_$OrganizationBankDetailsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrganizationBankDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? organizationId = null,
    Object? bankName = null,
    Object? bankBranch = null,
    Object? accountName = null,
    Object? accountNumber = null,
    Object? createdAt = null,
  }) {
    return _then(
      _$OrganizationBankDetailsImpl(
        organizationId:
            null == organizationId
                ? _value.organizationId
                : organizationId // ignore: cast_nullable_to_non_nullable
                    as String,
        bankName:
            null == bankName
                ? _value.bankName
                : bankName // ignore: cast_nullable_to_non_nullable
                    as String,
        bankBranch:
            null == bankBranch
                ? _value.bankBranch
                : bankBranch // ignore: cast_nullable_to_non_nullable
                    as String,
        accountName:
            null == accountName
                ? _value.accountName
                : accountName // ignore: cast_nullable_to_non_nullable
                    as String,
        accountNumber:
            null == accountNumber
                ? _value.accountNumber
                : accountNumber // ignore: cast_nullable_to_non_nullable
                    as String,
        createdAt:
            null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrganizationBankDetailsImpl implements _OrganizationBankDetails {
  const _$OrganizationBankDetailsImpl({
    required this.organizationId,
    required this.bankName,
    required this.bankBranch,
    required this.accountName,
    required this.accountNumber,
    required this.createdAt,
  });

  factory _$OrganizationBankDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrganizationBankDetailsImplFromJson(json);

  @override
  final String organizationId;
  @override
  final String bankName;
  @override
  final String bankBranch;
  @override
  final String accountName;
  @override
  final String accountNumber;
  @override
  final int createdAt;

  @override
  String toString() {
    return 'OrganizationBankDetails(organizationId: $organizationId, bankName: $bankName, bankBranch: $bankBranch, accountName: $accountName, accountNumber: $accountNumber, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrganizationBankDetailsImpl &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.bankBranch, bankBranch) ||
                other.bankBranch == bankBranch) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    organizationId,
    bankName,
    bankBranch,
    accountName,
    accountNumber,
    createdAt,
  );

  /// Create a copy of OrganizationBankDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrganizationBankDetailsImplCopyWith<_$OrganizationBankDetailsImpl>
  get copyWith => __$$OrganizationBankDetailsImplCopyWithImpl<
    _$OrganizationBankDetailsImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrganizationBankDetailsImplToJson(this);
  }
}

abstract class _OrganizationBankDetails implements OrganizationBankDetails {
  const factory _OrganizationBankDetails({
    required final String organizationId,
    required final String bankName,
    required final String bankBranch,
    required final String accountName,
    required final String accountNumber,
    required final int createdAt,
  }) = _$OrganizationBankDetailsImpl;

  factory _OrganizationBankDetails.fromJson(Map<String, dynamic> json) =
      _$OrganizationBankDetailsImpl.fromJson;

  @override
  String get organizationId;
  @override
  String get bankName;
  @override
  String get bankBranch;
  @override
  String get accountName;
  @override
  String get accountNumber;
  @override
  int get createdAt;

  /// Create a copy of OrganizationBankDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrganizationBankDetailsImplCopyWith<_$OrganizationBankDetailsImpl>
  get copyWith => throw _privateConstructorUsedError;
}
