// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrganizationRatingImpl _$$OrganizationRatingImplFromJson(
  Map<String, dynamic> json,
) => _$OrganizationRatingImpl(
  id: json['id'] as String,
  organizationId: json['organizationId'] as String,
  donationRequestId: json['donationRequestId'] as String,
  userId: json['userId'] as String,
  rating: (json['rating'] as num).toInt(),
  review: json['review'] as String,
  createdAt: (json['createdAt'] as num).toInt(),
);

Map<String, dynamic> _$$OrganizationRatingImplToJson(
  _$OrganizationRatingImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'organizationId': instance.organizationId,
  'donationRequestId': instance.donationRequestId,
  'userId': instance.userId,
  'rating': instance.rating,
  'review': instance.review,
  'createdAt': instance.createdAt,
};
