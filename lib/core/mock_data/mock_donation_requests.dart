import 'package:safe_zone/core/constants.dart';
import 'package:safe_zone/domain/donation_request/donation_request.dart';
import 'package:dartz/dartz.dart';

final List<DonationRequest> mockDonationRequests = [
  // A pending request from Kasun for food in Galle
  DonationRequest(
    id: 'dr_01',
    donationServiceId: 'ds_food', // Emergency Food Pack
    units: 15,
    userId: 'user_kasun', // Kasun
    threatId: 'threat_01', // Flood in Galle
    longitude: 80.2170,
    latitude: 6.0535,
    state: DonationRequestState.pending, // Corrected enum
    acceptedOrgId: none(), // Not accepted yet
    createdAt:
        DateTime.now()
            .subtract(const Duration(hours: 10))
            .millisecondsSinceEpoch,
    updatedAt:
        DateTime.now()
            .subtract(const Duration(hours: 10))
            .millisecondsSinceEpoch,
  ),
  // An accepted request from Nisansala
  DonationRequest(
    id: 'dr_02',
    donationServiceId: 'ds_medicine', // First-Aid Kit
    units: 20,
    userId: 'user_nisansala', // Nisansala
    threatId: 'threat_02', // Landslide in Kandy
    longitude: 80.6337,
    latitude: 7.2906,
    state: DonationRequestState.accepted, // Corrected enum
    acceptedOrgId: some('org_otara_foundation'), // Accepted by Otara Foundation
    createdAt:
        DateTime.now()
            .subtract(const Duration(days: 18))
            .millisecondsSinceEpoch,
    updatedAt:
        DateTime.now()
            .subtract(const Duration(days: 17))
            .millisecondsSinceEpoch,
  ),
];
