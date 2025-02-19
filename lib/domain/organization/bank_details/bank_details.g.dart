// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrganizationBankDetailsImpl _$$OrganizationBankDetailsImplFromJson(
  Map<String, dynamic> json,
) => _$OrganizationBankDetailsImpl(
  id: json['id'] as String,
  organizationId: json['organizationId'] as String,
  bankName: json['bankName'] as String,
  bankBranch: json['bankBranch'] as String,
  accountName: json['accountName'] as String,
  accountNumber: json['accountNumber'] as String,
  createdAt: (json['createdAt'] as num).toInt(),
);

Map<String, dynamic> _$$OrganizationBankDetailsImplToJson(
  _$OrganizationBankDetailsImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'organizationId': instance.organizationId,
  'bankName': instance.bankName,
  'bankBranch': instance.bankBranch,
  'accountName': instance.accountName,
  'accountNumber': instance.accountNumber,
  'createdAt': instance.createdAt,
};
