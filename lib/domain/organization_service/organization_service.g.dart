// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrganizationServiceImpl _$$OrganizationServiceImplFromJson(
  Map<String, dynamic> json,
) => _$OrganizationServiceImpl(
  id: json['id'] as String,
  serviceId: json['serviceId'] as String,
  orgId: json['orgId'] as String,
  createdAt: (json['createdAt'] as num).toInt(),
);

Map<String, dynamic> _$$OrganizationServiceImplToJson(
  _$OrganizationServiceImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'serviceId': instance.serviceId,
  'orgId': instance.orgId,
  'createdAt': instance.createdAt,
};
