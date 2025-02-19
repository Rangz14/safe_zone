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
  userId: json['userId'] as String,
  longitude: (json['longitude'] as num).toInt(),
  latitude: (json['latitude'] as num).toInt(),
  status: json['status'] as String,
  acceptedOrganizationId: json['acceptedOrganizationId'] as String?,
  createdAt: (json['createdAt'] as num).toInt(),
  updatedAt: (json['updatedAt'] as num).toInt(),
);

Map<String, dynamic> _$$DonationRequestImplToJson(
  _$DonationRequestImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'donationServiceId': instance.donationServiceId,
  'userId': instance.userId,
  'longitude': instance.longitude,
  'latitude': instance.latitude,
  'status': instance.status,
  'acceptedOrganizationId': instance.acceptedOrganizationId,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
};
