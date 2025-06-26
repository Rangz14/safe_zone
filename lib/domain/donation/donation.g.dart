// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'donation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DonationImpl _$$DonationImplFromJson(Map<String, dynamic> json) =>
    _$DonationImpl(
      id: json['id'] as String,
      organizationId: json['organizationId'] as String,
      userId: json['userId'] as String,
      payslip: json['payslip'] as String,
      state: $enumDecode(_$DonationStateEnumMap, json['state']),
      donationServiceId: json['donationServiceId'] as String,
      units: (json['units'] as num).toInt(),
      createdAt: (json['createdAt'] as num).toInt(),
      updatedAt: (json['updatedAt'] as num).toInt(),
    );

Map<String, dynamic> _$$DonationImplToJson(_$DonationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'organizationId': instance.organizationId,
      'userId': instance.userId,
      'payslip': instance.payslip,
      'state': _$DonationStateEnumMap[instance.state]!,
      'donationServiceId': instance.donationServiceId,
      'units': instance.units,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

const _$DonationStateEnumMap = {
  DonationState.pending: 'pending',
  DonationState.accepted: 'accepted',
  DonationState.declined: 'declined',
};
