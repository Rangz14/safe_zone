// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'threat_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ThreatCategory _$ThreatCategoryFromJson(Map<String, dynamic> json) =>
    _ThreatCategory(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      icon: json['icon'] as String,
      createdAt: (json['createdAt'] as num).toInt(),
    );

Map<String, dynamic> _$ThreatCategoryToJson(_ThreatCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'icon': instance.icon,
      'createdAt': instance.createdAt,
    };
