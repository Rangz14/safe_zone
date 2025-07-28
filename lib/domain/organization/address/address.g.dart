// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrganizationAddress _$OrganizationAddressFromJson(Map<String, dynamic> json) =>
    _OrganizationAddress(
      organizationId: json['organizationId'] as String,
      townId: json['townId'] as String,
      address: json['address'] as String,
      createdAt: (json['createdAt'] as num).toInt(),
    );

Map<String, dynamic> _$OrganizationAddressToJson(
  _OrganizationAddress instance,
) => <String, dynamic>{
  'organizationId': instance.organizationId,
  'townId': instance.townId,
  'address': instance.address,
  'createdAt': instance.createdAt,
};
