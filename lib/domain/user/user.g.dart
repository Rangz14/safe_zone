// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SafeZoneUserImpl _$$SafeZoneUserImplFromJson(Map<String, dynamic> json) =>
    _$SafeZoneUserImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      phone: json['phone'] as String,
      image: json['image'] as String,
      createdAt: (json['createdAt'] as num).toInt(),
    );

Map<String, dynamic> _$$SafeZoneUserImplToJson(_$SafeZoneUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'image': instance.image,
      'createdAt': instance.createdAt,
    };
