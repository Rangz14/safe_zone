enum StakeHolder { admin, safeZoneUser, organization }

enum DonationRequestState {
  pending("Pending"),
  accepted("Accepted"),
  fundRaised("Fund Raised"),
  donated("Donated");

  final String value;
  const DonationRequestState(this.value);
}

<<<<<<< HEAD
enum DonationState {
  pending("Pending"),
  accepted("Accepted"),
  declined("Declined");

  final String value;
  const DonationState(this.value);
}
=======
enum DonationState { pending, accepted, declined }
>>>>>>> 06cf0e830f53098c42d45cb028fd7934c4138392

enum UploadImageType { cover, logo }

enum SelectTownFieldType { province, district, city, town }

enum AdminStatsType {
  organizations,
  donations,
  users,
  services,
  threatCategories,
}
<<<<<<< HEAD

enum OrgMenuState {
  requests("Requests"),
  donations("Donations");

  final String value;
  const OrgMenuState(this.value);
}
=======
>>>>>>> 06cf0e830f53098c42d45cb028fd7934c4138392
