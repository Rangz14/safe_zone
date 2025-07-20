import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:safe_zone/presentation/screens/organization/dashboard_v2/donation_request.dart';
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

  // --- DUMMY DATA ---
  // In a real app, this would come from a database or API
  final List<DonationRequest> _allRequests = [
    // Pending
    DonationRequest(
      user: User(name: "Nimal Perera", avatarUrl: "assets/images/user1.png"),
      locationAddress: "Galle Rd, Colombo",
      coordinates: LatLng(6.9023, 79.8611),
      serviceTitle: "Dry Rations",
      serviceIcon: Icons.food_bank_outlined,
      unitCount: 5,
      threatCategory: "Economic Crisis",
      threatIcon: Icons.trending_down,
      createdAt: DateTime.now().subtract(const Duration(minutes: 15)),
      state: DonationRequestState.pending,
    ),
    DonationRequest(
      user: User(
        name: "Sunil Jayasuriya",
        avatarUrl: "assets/images/user2.png",
      ),
      locationAddress: "Kandy City Center",
      coordinates: LatLng(7.2906, 80.6337),
      serviceTitle: "School Supplies",
      serviceIcon: Icons.school_outlined,
      unitCount: 10,
      threatCategory: "Flood",
      threatIcon: Icons.water_drop_outlined,
      createdAt: DateTime.now().subtract(const Duration(hours: 2)),
      state: DonationRequestState.pending,
    ),

    // Accepted
    DonationRequest(
      user: User(name: "Fathima Rizwan", avatarUrl: "assets/images/user3.png"),
      locationAddress: "Jaffna",
      coordinates: LatLng(9.6615, 80.0255),
      serviceTitle: "Medicine",
      serviceIcon: Icons.medical_services_outlined,
      unitCount: 3,
      threatCategory: "Medical Emergency",
      threatIcon: Icons.emergency_outlined,
      createdAt: DateTime.now().subtract(const Duration(days: 1)),
      state: DonationRequestState.accepted,
    ),

    // Fund Raised
    DonationRequest(
      user: User(name: "David Silva", avatarUrl: "assets/images/user4.png"),
      locationAddress: "Negombo",
      coordinates: LatLng(7.2008, 79.8737),
      serviceTitle: "Kids Clothes",
      serviceIcon: Icons.checkroom_outlined,
      unitCount: 20,
      threatCategory: "Displacement",
      threatIcon: Icons.house_outlined,
      createdAt: DateTime.now().subtract(const Duration(days: 3)),
      state: DonationRequestState.fundRaised,
    ),

    // Donated
    DonationRequest(
      user: User(name: "Kamala Devi", avatarUrl: "assets/images/user5.png"),
      locationAddress: "Matara",
      coordinates: LatLng(5.9496, 80.5470),
      serviceTitle: "Clean Water",
      serviceIcon: Icons.water_damage,
      unitCount: 50,
      threatCategory: "Drought",
      threatIcon: Icons.wb_sunny_outlined,
      createdAt: DateTime.now().subtract(const Duration(days: 10)),
      state: DonationRequestState.donated,
    ),
  ];

  late final Map<DonationRequestState, List<DonationRequest>> _requestsByState;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: DonationRequestState.values.length,
      vsync: this,
    );
    _requestsByState = {
      for (var state in DonationRequestState.values)
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
    return Card(
      // The Card provides a nice themed background and border
      child: Column(
        children: [
          // Tab Bar with Badges
          TabBar(
            controller: _tabController,
            isScrollable: true, // Good for responsiveness on smaller screens
            tabs:
                DonationRequestState.values.map((state) {
                  final count = _requestsByState[state]!.length;
                  return _buildTabWithBadge(state.value, count);
                }).toList(),
          ),

          // Tab Bar View
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children:
                  DonationRequestState.values.map((state) {
                    final requests = _requestsByState[state]!;
                    if (requests.isEmpty) {
                      return Center(child: Text("No ${state.value} requests."));
                    }
                    return ListView.builder(
                      padding: const EdgeInsets.all(16.0),
                      itemCount: requests.length,
                      itemBuilder: (context, index) {
                        return RequestCard(request: requests[index]);
                      },
                    );
                  }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  // Helper widget to build a tab with a notification-style badge
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
}
