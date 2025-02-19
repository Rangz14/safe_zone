import 'package:freezed_annotation/freezed_annotation.dart';
part 'donation_request.freezed.dart';
part 'donation_request.g.dart';

@freezed
abstract class DonationRequest with _$DonationRequest {
  const factory DonationRequest({
    required String id,
    required String donationServiceId,
    required String userId,
    required int longitude,
    required int latitude,
    required String status, // PENDING, ACCEPTED, REJECTED_BY_ADMIN, DONATED
    required String? acceptedOrganizationId,
    required int createdAt,
    required int updatedAt,
  }) = _DonationRequest;
  factory DonationRequest.fromJson(Map<String, Object?> json) =>
      _$DonationRequestFromJson(json);
}
