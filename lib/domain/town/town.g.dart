// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'town.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Town _$TownFromJson(Map<String, dynamic> json) => _Town(
  id: json['id'] as String,
  town: json['town'] as String,
  city: json['city'] as String,
  district: json['district'] as String,
  province: json['province'] as String,
);

Map<String, dynamic> _$TownToJson(_Town instance) => <String, dynamic>{
  'id': instance.id,
  'town': instance.town,
  'city': instance.city,
  'district': instance.district,
  'province': instance.province,
};
