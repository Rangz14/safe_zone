import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:safe_zone/core/constants.dart';
import 'package:safe_zone/core/extensions/dartz_x.dart';
import 'package:safe_zone/core/option_string_converter.dart';
import 'package:safe_zone/domain/auth/i_auth_repo.dart';
import 'package:safe_zone/injection.dart';
part 'donation_request.freezed.dart';
part 'donation_request.g.dart';

@freezed
abstract class DonationRequest with _$DonationRequest {
  const factory DonationRequest({
    required String id,
    required String donationServiceId,
    required int units,
    required String userId,
    required String threatId,
    required double longitude,
    required double latitude,
    // PENDING, ACCEPTED, FUND_RAISED, DONATED
    required DonationRequestState state,
    @OptionStringConverter() required Option<String> acceptedOrgId,
    required int createdAt,
    required int updatedAt,
  }) = _DonationRequest;
  factory DonationRequest.fromJson(Map<String, Object?> json) =>
      _$DonationRequestFromJson(json);

  factory DonationRequest.inti(String donationServiceId, String threatId) =>
      DonationRequest(
        id: "",
        threatId: threatId,
        donationServiceId: donationServiceId,
        units: 1,
        userId: getIt<IAuthRepo>().getUid().getOrCrash(),
        longitude: 79.8612,
        latitude: 6.9271,
        state: DonationRequestState.pending,
        acceptedOrgId: none(),
        createdAt: DateTime.now().millisecondsSinceEpoch,
        updatedAt: DateTime.now().millisecondsSinceEpoch,
      );
}
