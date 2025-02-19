// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrganizationServiceImpl _$$OrganizationServiceImplFromJson(
  Map<String, dynamic> json,
) => _$OrganizationServiceImpl(
  id: json['id'] as String,
  organizationId: json['organizationId'] as String,
  donationServiceId: json['donationServiceId'] as String,
  createdAt: (json['createdAt'] as num).toInt(),
);

Map<String, dynamic> _$$OrganizationServiceImplToJson(
  _$OrganizationServiceImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'organizationId': instance.organizationId,
  'donationServiceId': instance.donationServiceId,
  'createdAt': instance.createdAt,
};
