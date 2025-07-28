import 'package:flutter/material.dart';
import 'package:safe_zone/core/constants.dart';
import 'package:safe_zone/core/mock_data/mock_donation_services.dart';
import 'package:safe_zone/core/mock_data/mock_donations.dart';
import 'package:safe_zone/core/mock_data/mock_users.dart';
import 'package:safe_zone/domain/donation/donation.dart';
import 'package:safe_zone/domain/service/service.dart';
import 'package:safe_zone/domain/user/user.dart';

// Import the new DonationCard
import 'package:safe_zone/presentation/screens/organization/dashboard_v2/donation_card.dart';

class DonationsContainer extends StatefulWidget {
  const DonationsContainer({super.key});

  @override
  State<DonationsContainer> createState() => _DonationsContainerState();
}

class _DonationsContainerState extends State<DonationsContainer>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  // Use the imported mock data list
  final List<Donation> _allDonations = mockDonations;

  late final Map<DonationState, List<Donation>> _donationsByState;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: DonationState.values.length,
      vsync: this,
    );
    // Group donations by their state
    _donationsByState = {
      for (var state in DonationState.values)
        state: _allDonations.where((d) => d.state == state).toList(),
    };
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          // Tab Bar with Badges
          TabBar(
            controller: _tabController,
            isScrollable: true,
            tabs:
                DonationState.values.map((state) {
                  final count = _donationsByState[state]!.length;
                  return _buildTabWithBadge(state.value, count);
                }).toList(),
          ),

          // Tab Bar View
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children:
                  DonationState.values.map((state) {
                    final donations = _donationsByState[state]!;
                    if (donations.isEmpty) {
                      return Center(
                        child: Text("No ${state.value} donations."),
                      );
                    }
                    return ListView.builder(
                      padding: const EdgeInsets.all(16.0),
                      itemCount: donations.length,
                      itemBuilder: (context, index) {
                        final donation = donations[index];

                        // --- Resolve IDs to get full data objects ---
                        final user = _getUserById(donation.userId);
                        final service = _getServiceById(
                          donation.donationServiceId,
                        );

                        // A safety check for your mock data
                        if (user == null || service == null) {
                          return const Card(
                            color: Colors.redAccent,
                            child: ListTile(
                              title: Text("Error: Incomplete mock data."),
                            ),
                          );
                        }

                        // Pass the resolved data to the new DonationCard
                        return DonationCard(
                          donation: donation,
                          user: user,
                          service: service,
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

  SafeZoneUser? _getUserById(String id) {
    return mockUsers.firstWhere((user) => user.id == id);
  }

  DonationService? _getServiceById(String id) {
    return mockDonationServices.firstWhere((service) => service.id == id);
  }
}
