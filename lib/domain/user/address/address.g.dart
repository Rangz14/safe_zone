// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SafeZoneUserAddressImpl _$$SafeZoneUserAddressImplFromJson(
  Map<String, dynamic> json,
) => _$SafeZoneUserAddressImpl(
  userId: json['userId'] as String,
  province: json['province'] as String,
  city: json['city'] as String,
  address: json['address'] as String,
  createdAt: (json['createdAt'] as num).toInt(),
);

Map<String, dynamic> _$$SafeZoneUserAddressImplToJson(
  _$SafeZoneUserAddressImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'province': instance.province,
  'city': instance.city,
  'address': instance.address,
  'createdAt': instance.createdAt,
};
