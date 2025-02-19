// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrganizationAddressImpl _$$OrganizationAddressImplFromJson(
  Map<String, dynamic> json,
) => _$OrganizationAddressImpl(
  organizationId: json['organizationId'] as String,
  province: json['province'] as String,
  city: json['city'] as String,
  address: json['address'] as String,
  createdAt: (json['createdAt'] as num).toInt(),
);

Map<String, dynamic> _$$OrganizationAddressImplToJson(
  _$OrganizationAddressImpl instance,
) => <String, dynamic>{
  'organizationId': instance.organizationId,
  'province': instance.province,
  'city': instance.city,
  'address': instance.address,
  'createdAt': instance.createdAt,
};
