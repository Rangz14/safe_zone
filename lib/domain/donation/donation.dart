import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:safe_zone/core/constants.dart';
part 'donation.freezed.dart';
part 'donation.g.dart';

@freezed
abstract class Donation with _$Donation {
  const factory Donation({
    required String id,
    required String organizationId,
    required String userId,
    required String payslip,
    required DonationState state,
    required String donationServiceId,
    required int units,
    required int createdAt,
    required int updatedAt,
  }) = _Donation;
  factory Donation.fromJson(Map<String, Object?> json) =>
      _$DonationFromJson(json);
}
