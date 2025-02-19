// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DonationServiceImpl _$$DonationServiceImplFromJson(
  Map<String, dynamic> json,
) => _$DonationServiceImpl(
  id: json['id'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  icon: json['icon'] as String,
  approximateUnitPrice: (json['approximateUnitPrice'] as num).toInt(),
  createdAt: (json['createdAt'] as num).toInt(),
);

Map<String, dynamic> _$$DonationServiceImplToJson(
  _$DonationServiceImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'description': instance.description,
  'icon': instance.icon,
  'approximateUnitPrice': instance.approximateUnitPrice,
  'createdAt': instance.createdAt,
};
