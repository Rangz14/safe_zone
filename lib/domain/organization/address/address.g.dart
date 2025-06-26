// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrganizationAddressImpl _$$OrganizationAddressImplFromJson(
  Map<String, dynamic> json,
) => _$OrganizationAddressImpl(
  organizationId: json['organizationId'] as String,
  townId: json['townId'] as String,
  address: json['address'] as String,
  createdAt: (json['createdAt'] as num).toInt(),
);

Map<String, dynamic> _$$OrganizationAddressImplToJson(
  _$OrganizationAddressImpl instance,
) => <String, dynamic>{
  'organizationId': instance.organizationId,
  'townId': instance.townId,
  'address': instance.address,
  'createdAt': instance.createdAt,
};
