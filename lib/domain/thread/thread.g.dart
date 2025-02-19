// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thread.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SafeZoneThreadImpl _$$SafeZoneThreadImplFromJson(Map<String, dynamic> json) =>
    _$SafeZoneThreadImpl(
      id: json['id'] as String,
      state: json['state'] as String,
      city: json['city'] as String,
      startedAt: (json['startedAt'] as num).toInt(),
      endedAt: (json['endedAt'] as num).toInt(),
      threadCategoryId: json['threadCategoryId'] as String,
      createdAt: (json['createdAt'] as num).toInt(),
    );

Map<String, dynamic> _$$SafeZoneThreadImplToJson(
  _$SafeZoneThreadImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'state': instance.state,
  'city': instance.city,
  'startedAt': instance.startedAt,
  'endedAt': instance.endedAt,
  'threadCategoryId': instance.threadCategoryId,
  'createdAt': instance.createdAt,
};
