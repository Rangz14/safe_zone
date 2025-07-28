import 'package:flutter/material.dart';
import 'package:safe_zone/core/constants.dart';
import 'package:safe_zone/core/mock_data/mock_donation_requests.dart';
import 'package:safe_zone/core/mock_data/mock_donation_services.dart';
import 'package:safe_zone/core/mock_data/mock_threat_categories.dart';
import 'package:safe_zone/core/mock_data/mock_threats.dart';
import 'package:safe_zone/core/mock_data/mock_users.dart';
import 'package:safe_zone/domain/donation_request/donation_request.dart';
import 'package:safe_zone/domain/service/service.dart';
import 'package:safe_zone/domain/threat/threat.dart';
import 'package:safe_zone/domain/threat/threat_category/threat_category.dart';
import 'package:safe_zone/domain/user/user.dart';

// Import the new RequestCard
import 'package:safe_zone/presentation/screens/organization/dashboard_v2/request_card.dart';

class DonationRequestsContainer extends StatefulWidget {
  const DonationRequestsContainer({super.key});

  @override
  State<DonationRequestsContainer> createState() =>
      _DonationRequestsContainerState();
}

class _DonationRequestsContainerState extends State<DonationRequestsContainer>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  // Use the imported mock data list as the source of truth
  final List<DonationRequest> _allRequests = mockDonationRequests;

  late final Map<DonationRequestState, List<DonationRequest>> _requestsByState;

  @override
  void initState() {
    super.initState();
    // Your enum might have more states than your mock data, so we filter them
    final availableStates =
        DonationRequestState.values
            .where((s) => _allRequests.any((r) => r.state == s))
            .toList();

    _tabController = TabController(length: availableStates.length, vsync: this);

    // Group requests by their state
    _requestsByState = {
      for (var state in availableStates)
        state: _allRequests.where((req) => req.state == state).toList(),
    };
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final availableStates = _requestsByState.keys.toList();

    return Card(
      child: Column(
        children: [
          // Tab Bar with Badges
          TabBar(
            controller: _tabController,
            isScrollable: true,
            tabs:
                availableStates.map((state) {
                  final count = _requestsByState[state]!.length;
                  return _buildTabWithBadge(state.value, count);
                }).toList(),
          ),

          // Tab Bar View
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children:
                  availableStates.map((state) {
                    final requests = _requestsByState[state]!;
                    if (requests.isEmpty) {
                      return Center(child: Text("No ${state.value} requests."));
                    }
                    return ListView.builder(
                      padding: const EdgeInsets.all(16.0),
                      itemCount: requests.length,
                      itemBuilder: (context, index) {
                        final request = requests[index];

                        // --- Resolve IDs to get full data objects ---
                        final user = _getUserById(request.userId);
                        final service = _getServiceById(
                          request.donationServiceId,
                        );
                        final threat = _getThreatById(request.threatId);
                        final threatCategory = _getThreatCategoryById(
                          threat!.categoryId,
                        );

                        // If any data is missing (shouldn't happen with good mock data), show an error
                        if (user == null ||
                            service == null ||
                            threatCategory == null) {
                          return const Card(
                            color: Colors.redAccent,
                            child: ListTile(
                              title: Text(
                                "Error: Incomplete mock data for this request.",
                              ),
                            ),
                          );
                        }

                        // Pass the resolved data to the new RequestCard
                        return RequestCard(
                          request: request,
                          user: user,
                          service: service,
                          threatCategory: threatCategory,
                          town: threat.town,
                        );
                      },
                    );
                  }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabWithBadge(String title, int count) {
    return Tab(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(title),
          if (count > 0) ...[
            const SizedBox(width: 8),
            CircleAvatar(
              radius: 10,
              // Use theme colors for the badge
              backgroundColor: Theme.of(context).colorScheme.primary,
              child: Text(
                count.toString(),
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimary,
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  // --- HELPER FUNCTIONS TO SIMULATE A REPOSITORY ---
  // In a real app, these would be methods in your repository classes that fetch data from an API or local DB.

  SafeZoneUser? _getUserById(String id) {
    return mockUsers.firstWhere((user) => user.id == id);
  }

  DonationService? _getServiceById(String id) {
    return mockDonationServices.firstWhere((service) => service.id == id);
  }

  SafeZoneThreat? _getThreatById(String id) {
    return mockThreats.firstWhere((threat) => threat.id == id);
  }

  ThreatCategory? _getThreatCategoryById(String id) {
    return mockThreatCategories.firstWhere((cat) => cat.id == id);
  }
}
