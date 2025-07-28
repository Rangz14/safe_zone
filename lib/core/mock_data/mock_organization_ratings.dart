import 'package:safe_zone/domain/organization/rating/rating.dart';

final List<OrganizationRating> mockOrganizationRatings = [
  OrganizationRating(
    id: 'rating_01',
    organizationId: 'org_otara_foundation',
    donationRequestId: 'dr_02', // Related to Nisansala's request
    userId: 'user_nisansala',
    rating: 5,
    review:
        'The Otara Foundation was amazing. They responded quickly and provided everything we needed. Thank you so much!',
    createdAt:
        DateTime.now()
            .subtract(const Duration(days: 14))
            .millisecondsSinceEpoch,
  ),
  OrganizationRating(
    id: 'rating_02',
    organizationId: 'org_otara_foundation',
    donationRequestId: 'dr_past_01', // A different, past request
    userId: 'user_kasun',
    rating: 4,
    review:
        'Good service and very helpful team. The process was mostly smooth.',
    createdAt:
        DateTime.now()
            .subtract(const Duration(days: 45))
            .millisecondsSinceEpoch,
  ),
  OrganizationRating(
    id: 'rating_03',
    organizationId: 'org_otara_foundation',
    donationRequestId: 'dr_past_02', // Another past request
    userId: 'user_fernando',
    rating: 5,
    review: null, // To test how your UI handles a rating with no review text
    createdAt:
        DateTime.now()
            .subtract(const Duration(days: 60))
            .millisecondsSinceEpoch,
  ),
];
