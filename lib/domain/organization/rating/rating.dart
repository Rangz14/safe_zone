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
    required String? review,
    required int createdAt,
  }) = _OrganizationRating;
  factory OrganizationRating.fromJson(Map<String, Object?> json) =>
      _$OrganizationRatingFromJson(json);

  factory OrganizationRating.empty() {
    return OrganizationRating(
      id: "",
      organizationId: "",
      donationRequestId: "",
      userId: "",
      rating: 0,
      review: null,
      createdAt: DateTime.now().millisecondsSinceEpoch,
    );
  }

  static (int total, double average) summarized(
    List<OrganizationRating> ratings,
  ) {
    if (ratings.isEmpty) {
      return (0, 0.0);
    }
    final total = ratings.length;
    final average =
        ratings.map((e) => e.rating).reduce((a, b) => a + b) / total;
    return (total, average);
  }
}
