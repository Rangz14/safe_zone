import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:safe_zone/presentation/screens/organization/dashboard_v2/donation_requests_container.dart';
import 'package:safe_zone/presentation/screens/organization/dashboard_v2/donations_container.dart';
import 'package:safe_zone/presentation/screens/organization/dashboard_v2/left_side_nav.dart';
import 'package:safe_zone/presentation/screens/organization/dashboard_v2/ratings_container.dart';
import 'package:safe_zone/presentation/widgets/text.dart';

// Enum to manage the current view in the main container
enum DashboardView { donationRequests, donations, ratings }

@RoutePage()
class OrgDashboardV2Page extends StatefulWidget {
  const OrgDashboardV2Page({super.key});

  @override
  State<OrgDashboardV2Page> createState() => _OrgDashboardV2PageState();
}

class _OrgDashboardV2PageState extends State<OrgDashboardV2Page> {
  // State variable to track the current view
  DashboardView _currentView = DashboardView.donationRequests;

  // Callback function to update the view from the side navigation
  void _onViewChanged(DashboardView view) {
    setState(() {
      _currentView = view;
    });
  }

  // Helper method to build the currently selected main container
  Widget _buildMainContainer() {
    switch (_currentView) {
      case DashboardView.donationRequests:
        return const DonationRequestsContainer();
      case DashboardView.donations:
        return const DonationsContainer();
      case DashboardView.ratings:
        return RatingsContainer();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // The top Title Bar (AppBar)
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset('assets/images/logo.png', height: 42),
            const SizedBox(width: 12),
            const TextMedium('Safe Zone', bold: true),
          ],
        ),
        actions: [
          TextButton.icon(
            onPressed: () {
              // TODO: Implement sign out logic
            },
            icon: const Icon(Icons.logout, color: Colors.white),
            label: const Text('Sign Out'),
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.red,
            ),
          ),
        ],
      ),
      // The main body of the screen
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Left Side Navigation Column
          LeftSideNav(currentView: _currentView, onViewChanged: _onViewChanged),
          // Main Content Area (this will change based on navigation)
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: _buildMainContainer(),
            ),
          ),
        ],
      ),
    );
  }
}
