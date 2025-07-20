// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'donation_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DonationRequestImpl _$$DonationRequestImplFromJson(
  Map<String, dynamic> json,
) => _$DonationRequestImpl(
  id: json['id'] as String,
  donationServiceId: json['donationServiceId'] as String,
  units: (json['units'] as num).toInt(),
  userId: json['userId'] as String,
  threatId: json['threatId'] as String,
  longitude: (json['longitude'] as num).toDouble(),
  latitude: (json['latitude'] as num).toDouble(),
  state: $enumDecode(_$DonationRequestStateEnumMap, json['state']),
  acceptedOrgId: const OptionStringConverter().fromJson(
    json['acceptedOrgId'] as String?,
  ),
  createdAt: (json['createdAt'] as num).toInt(),
  updatedAt: (json['updatedAt'] as num).toInt(),
);

Map<String, dynamic> _$$DonationRequestImplToJson(
  _$DonationRequestImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'donationServiceId': instance.donationServiceId,
  'units': instance.units,
  'userId': instance.userId,
  'threatId': instance.threatId,
  'longitude': instance.longitude,
  'latitude': instance.latitude,
  'state': _$DonationRequestStateEnumMap[instance.state]!,
  'acceptedOrgId': const OptionStringConverter().toJson(instance.acceptedOrgId),
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
};

const _$DonationRequestStateEnumMap = {
  DonationRequestState.pending: 'pending',
  DonationRequestState.accepted: 'accepted',
  DonationRequestState.fundRaised: 'fundRaised',
  DonationRequestState.donated: 'donated',
};
