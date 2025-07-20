enum StakeHolder { admin, safeZoneUser, organization }

enum DonationRequestState {
  pending("Pending"),
  accepted("Accepted"),
  fundRaised("Fund Raised"),
  donated("Donated");

  final String value;
  const DonationRequestState(this.value);
}

enum DonationState {
  pending("Pending"),
  accepted("Accepted"),
  declined("Declined");

  final String value;
  const DonationState(this.value);
}

enum UploadImageType { cover, logo }

enum SelectTownFieldType { province, district, city, town }

enum AdminStatsType {
  organizations,
  donations,
  users,
  services,
  threatCategories,
}

enum OrgMenuState {
  requests("Requests"),
  donations("Donations");

  final String value;
  const OrgMenuState(this.value);
}
