import 'package:flutter/material.dart';
import 'package:safe_zone/core/mock_data/mock_donation_requests.dart';
import 'package:safe_zone/core/mock_data/mock_donation_services.dart';
import 'package:safe_zone/core/mock_data/mock_organization_ratings.dart';
import 'package:safe_zone/core/mock_data/mock_threat_categories.dart';
import 'package:safe_zone/core/mock_data/mock_threats.dart';
import 'package:safe_zone/core/mock_data/mock_users.dart';
import 'package:safe_zone/domain/donation_request/donation_request.dart';
import 'package:safe_zone/domain/organization/rating/rating.dart';
import 'package:safe_zone/domain/service/service.dart';
import 'package:safe_zone/domain/threat/threat.dart';
import 'package:safe_zone/domain/threat/threat_category/threat_category.dart';
import 'package:safe_zone/domain/user/user.dart';

import 'package:safe_zone/presentation/screens/organization/dashboard_v2/rating_card.dart';

class RatingsContainer extends StatelessWidget {
  RatingsContainer({super.key});

  // Use the real mock data
  final List<OrganizationRating> _allRatings = mockOrganizationRatings;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              "Donor Feedback",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          const Divider(height: 1),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16.0),
              itemCount: _allRatings.length,
              itemBuilder: (context, index) {
                final rating = _allRatings[index];

                // --- Resolve all data relationships ---
                final user = _getUserById(rating.userId);
                final request = _getRequestById(rating.donationRequestId);

                // We need the request to find the other details
                if (user == null || request == null) {
                  return const Card(
                    color: Colors.redAccent,
                    child: ListTile(
                      title: Text("Error: Missing user or request data."),
                    ),
                  );
                }

                final service = _getServiceById(request.donationServiceId);
                final threat = _getThreatById(request.threatId);

                if (service == null || threat == null) {
                  return const Card(
                    color: Colors.redAccent,
                    child: ListTile(
                      title: Text("Error: Missing service or threat data."),
                    ),
                  );
                }

                final threatCategory = _getThreatCategoryById(
                  threat.categoryId,
                );

                if (threatCategory == null) {
                  return const Card(
                    color: Colors.redAccent,
                    child: ListTile(
                      title: Text("Error: Missing threat category data."),
                    ),
                  );
                }

                // Pass the fully resolved data to the card
                return RatingCard(
                  rating: rating,
                  user: user,
                  request: request,
                  service: service,
                  threatCategory: threatCategory,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  // --- HELPER FUNCTIONS TO SIMULATE A REPOSITORY ---

  SafeZoneUser? _getUserById(String id) {
    try {
      return mockUsers.firstWhere((u) => u.id == id);
    } catch (e) {
      return null;
    }
  }

  DonationRequest? _getRequestById(String id) {
    try {
      return mockDonationRequests.firstWhere((r) => r.id == id);
    } catch (e) {
      // It's possible a rating is for an older, archived request
      // not in our current mock list. This is a graceful fallback.
      return mockDonationRequests.first; // Or return null
    }
  }

  DonationService? _getServiceById(String id) {
    try {
      return mockDonationServices.firstWhere((s) => s.id == id);
    } catch (e) {
      return null;
    }
  }

  SafeZoneThreat? _getThreatById(String id) {
    try {
      return mockThreats.firstWhere((t) => t.id == id);
    } catch (e) {
      return null;
    }
  }

  ThreatCategory? _getThreatCategoryById(String id) {
    try {
      return mockThreatCategories.firstWhere((c) => c.id == id);
    } catch (e) {
      return null;
    }
  }
}
