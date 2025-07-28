import 'package:safe_zone/core/constants.dart';
import 'package:safe_zone/domain/donation/donation.dart';

final List<Donation> mockDonations = [
  // An accepted (verified) donation from Tharushi
  Donation(
    id: 'don_01',
    organizationId: 'org_otara_foundation', // To Otara Foundation
    userId: 'user_tharushi', // From Tharushi
    donationServiceId: 'ds_fund', // Monetary Fund
    units: 5,
    payslip: 'assets/images/payslips/slip_tharushi_01.jpg',
    state: DonationState.accepted, // Corrected enum
    createdAt:
        DateTime.now().subtract(const Duration(days: 4)).millisecondsSinceEpoch,
    updatedAt:
        DateTime.now().subtract(const Duration(days: 3)).millisecondsSinceEpoch,
  ),
  // A pending donation from Fernando
  Donation(
    id: 'don_02',
    organizationId: 'org_otara_foundation',
    userId: 'user_fernando',
    donationServiceId: 'ds_food', // For food packs
    units: 10,
    payslip: 'assets/images/payslips/slip_fernando_01.jpg',
    state: DonationState.pending, // Corrected enum
    createdAt:
        DateTime.now()
            .subtract(const Duration(hours: 2))
            .millisecondsSinceEpoch,
    updatedAt:
        DateTime.now()
            .subtract(const Duration(hours: 2))
            .millisecondsSinceEpoch,
  ),
];
