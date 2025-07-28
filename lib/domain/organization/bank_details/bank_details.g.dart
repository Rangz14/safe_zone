// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrganizationBankDetails _$OrganizationBankDetailsFromJson(
  Map<String, dynamic> json,
) => _OrganizationBankDetails(
  organizationId: json['organizationId'] as String,
  bankName: json['bankName'] as String,
  bankBranch: json['bankBranch'] as String,
  accountName: json['accountName'] as String,
  accountNumber: json['accountNumber'] as String,
  createdAt: (json['createdAt'] as num).toInt(),
);

Map<String, dynamic> _$OrganizationBankDetailsToJson(
  _OrganizationBankDetails instance,
) => <String, dynamic>{
  'organizationId': instance.organizationId,
  'bankName': instance.bankName,
  'bankBranch': instance.bankBranch,
  'accountName': instance.accountName,
  'accountNumber': instance.accountNumber,
  'createdAt': instance.createdAt,
};
