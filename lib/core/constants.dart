enum StakeHolder { admin, safeZoneUser, organization }

enum DonationRequestState {
  pending,
  accepted,
  rejectedByAdmin,
  fundRaised,
  donated,
}

enum DonationState { pending, accepted, declined }

enum UploadImageType { cover, logo }

enum SelectTownFieldType { province, district, city, town }

enum AdminStatsType {
  organizations,
  donations,
  users,
  services,
  threatCategories,
}
