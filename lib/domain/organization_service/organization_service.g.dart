// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrganizationService _$OrganizationServiceFromJson(Map<String, dynamic> json) =>
    _OrganizationService(
      id: json['id'] as String,
      serviceId: json['serviceId'] as String,
      orgId: json['orgId'] as String,
      createdAt: (json['createdAt'] as num).toInt(),
    );

Map<String, dynamic> _$OrganizationServiceToJson(
  _OrganizationService instance,
) => <String, dynamic>{
  'id': instance.id,
  'serviceId': instance.serviceId,
  'orgId': instance.orgId,
  'createdAt': instance.createdAt,
};
