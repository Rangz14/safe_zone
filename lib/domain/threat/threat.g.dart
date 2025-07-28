// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'threat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SafeZoneThreat _$SafeZoneThreatFromJson(Map<String, dynamic> json) =>
    _SafeZoneThreat(
      id: json['id'] as String,
      townId: json['townId'] as String,
      startedAt: (json['startedAt'] as num).toInt(),
      endedAt: (json['endedAt'] as num).toInt(),
      categoryId: json['categoryId'] as String,
      createdAt: (json['createdAt'] as num).toInt(),
    );

Map<String, dynamic> _$SafeZoneThreatToJson(_SafeZoneThreat instance) =>
    <String, dynamic>{
      'id': instance.id,
      'townId': instance.townId,
      'startedAt': instance.startedAt,
      'endedAt': instance.endedAt,
      'categoryId': instance.categoryId,
      'createdAt': instance.createdAt,
    };
