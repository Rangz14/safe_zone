import 'package:freezed_annotation/freezed_annotation.dart';
part 'rating.freezed.dart';
part 'rating.g.dart';

@freezed
abstract class OrganizationRating with _$OrganizationRating {
  const factory OrganizationRating({
    required String id,
    required String organizationId,
    required String donationRequestId,
    required String userId,
    required int rating,
    required String review,
    required int createdAt,
  }) = _OrganizationRating;
  factory OrganizationRating.fromJson(Map<String, Object?> json) =>
      _$OrganizationRatingFromJson(json);
}
