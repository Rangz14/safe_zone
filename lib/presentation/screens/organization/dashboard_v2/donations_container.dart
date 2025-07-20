import 'package:flutter/material.dart';
import 'package:safe_zone/presentation/screens/organization/dashboard_v2/donation.dart';
import 'package:safe_zone/presentation/screens/organization/dashboard_v2/donation_card.dart';
import 'package:safe_zone/presentation/screens/organization/dashboard_v2/donation_request.dart';

class DonationsContainer extends StatefulWidget {
  const DonationsContainer({super.key});

  @override
  State<DonationsContainer> createState() => _DonationsContainerState();
}

class _DonationsContainerState extends State<DonationsContainer>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  // --- DUMMY DATA ---
  final List<Donation> _allDonations = [
    // Pending
    Donation(
      user: User(name: "John Doe", avatarUrl: "assets/images/user6.png"),
      serviceTitle: "Dry Rations",
      serviceIcon: Icons.food_bank_outlined,
      unitCount: 10,
      payslipUrl: "assets/images/payslip.png",
      state: DonationState.pending,
    ),
    Donation(
      user: User(name: "Jane Smith", avatarUrl: "assets/images/user7.png"),
      serviceTitle: "Medicine",
      serviceIcon: Icons.medical_services_outlined,
      unitCount: 5,
      payslipUrl: "assets/images/payslip.png",
      state: DonationState.pending,
    ),

    // Accepted
    Donation(
      user: User(name: "Alex Johnson", avatarUrl: "assets/images/user8.png"),
      serviceTitle: "School Supplies",
      serviceIcon: Icons.school_outlined,
      unitCount: 25,
      payslipUrl: "assets/images/payslip.png",
      state: DonationState.accepted,
    ),

    // Declined
    Donation(
      user: User(name: "Emily White", avatarUrl: "assets/images/user9.png"),
      serviceTitle: "Clean Water",
      serviceIcon: Icons.water_damage,
      unitCount: 100,
      payslipUrl: "assets/images/payslip.png",
      state: DonationState.declined,
    ),
  ];

  late final Map<DonationState, List<Donation>> _donationsByState;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: DonationState.values.length,
      vsync: this,
    );
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
                        return DonationCard(donation: donations[index]);
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
}
