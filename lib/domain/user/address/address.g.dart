// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SafeZoneUserAddress _$SafeZoneUserAddressFromJson(Map<String, dynamic> json) =>
    _SafeZoneUserAddress(
      userId: json['userId'] as String,
      townId: json['townId'] as String,
      address: json['address'] as String,
      createdAt: (json['createdAt'] as num).toInt(),
    );

Map<String, dynamic> _$SafeZoneUserAddressToJson(
  _SafeZoneUserAddress instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'townId': instance.townId,
  'address': instance.address,
  'createdAt': instance.createdAt,
};
