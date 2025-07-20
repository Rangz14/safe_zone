import 'package:flutter/material.dart';
import 'package:safe_zone/presentation/screens/organization/dashboard_v2/dashboard_page_v2.dart';

class LeftSideNav extends StatelessWidget {
  final DashboardView currentView;
  final ValueChanged<DashboardView> onViewChanged;

  const LeftSideNav({
    super.key,
    required this.currentView,
    required this.onViewChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      height: double.infinity,
      // Removed direct padding to allow ListTile to fill width
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Added padding back here for the top section
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              child: Column(
                children: [
                  _buildProfileSection(context),
                  const SizedBox(height: 20),
                  _buildInfoActions(context),
                ],
              ),
            ),
            const Divider(indent: 20, endIndent: 20, height: 40),
            // Navigation menu is now its own column to manage padding
            _buildNavigationMenu(context),
            const Divider(indent: 20, endIndent: 20, height: 40),
            // Added padding for the bottom section
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              child: _buildServicesList(context),
            ),
          ],
        ),
      ),
    );
  }

  // Organization Profile (Cover, Logo, Name, Email)
  Widget _buildProfileSection(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.bottomCenter,
          children: [
            // Cover Photo
            Container(
              height: 120,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/cover.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Organization Logo
            Positioned(
              bottom: -40,
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                child: const CircleAvatar(
                  radius: 38,
                  backgroundImage: AssetImage('assets/images/avatar.png'),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 50), // Space for the overlapping logo
        const Text(
          "Charity Foundation",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        Text(
          "contact@charityfoundation.org",
          style: TextStyle(
            fontSize: 14,
            color: Theme.of(context).textTheme.bodySmall?.color,
          ),
        ),
      ],
    );
  }

  // Address and Bank Details Icons
  Widget _buildInfoActions(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: () => _showAddressDialog(context),
          icon: Icon(
            Icons.location_on_outlined,
            color: Theme.of(context).iconTheme.color,
          ),
          tooltip: 'View Address',
        ),
        IconButton(
          onPressed: () => _showBankDialog(context),
          icon: Icon(
            Icons.account_balance_outlined,
            color: Theme.of(context).iconTheme.color,
          ),
          tooltip: 'View Bank Details',
        ),
      ],
    );
  }

  /// ## Main Navigation Links (Updated)
  /// This now passes a `badgeCount` to the items that need a notification badge.
  Widget _buildNavigationMenu(BuildContext context) {
    return Column(
      children: [
        _buildNavItem(
          context,
          icon: Icons.volunteer_activism_outlined,
          title: 'Donation Requests',
          view: DashboardView.donationRequests,
          // --- Badge Added ---
          badgeCount: 2,
        ),
        _buildNavItem(
          context,
          icon: Icons.favorite_border,
          title: 'Donations',
          view: DashboardView.donations,
          // --- Badge Added ---
          badgeCount: 5,
        ),
        _buildNavItem(
          context,
          icon: Icons.star_border_outlined,
          title: 'Ratings',
          view: DashboardView.ratings,
        ),
      ],
    );
  }

  /// ## Reusable Navigation Item Widget (Updated)
  /// Now includes an optional `badgeCount` parameter to display a badge.
  Widget _buildNavItem(
    BuildContext context, {
    required IconData icon,
    required String title,
    required DashboardView view,
    int? badgeCount,
  }) {
    final bool isSelected = currentView == view;
    final Color activeColor = Theme.of(context).colorScheme.primary;
    final Color inactiveColor = Colors.grey.shade600;

    return ListTile(
      leading: Icon(icon, color: isSelected ? activeColor : inactiveColor),
      title: Text(
        title,
        style: TextStyle(
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          color: isSelected ? activeColor : inactiveColor,
        ),
      ),
      // --- Badge Widget Added to Trailing ---
      trailing:
          badgeCount != null && badgeCount > 0
              ? Badge(label: Text('$badgeCount'))
              : null,
      tileColor: isSelected ? activeColor.withAlpha(25) : null,
      onTap: () => onViewChanged(view),
    );
  }

  // List of Services
  Widget _buildServicesList(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            "Our Services",
            style: TextStyle(
              color: Theme.of(context).textTheme.bodySmall?.color,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
        const SizedBox(height: 10),
        _buildServiceItem(icon: Icons.food_bank_outlined, title: 'Food Drives'),
        _buildServiceItem(icon: Icons.school_outlined, title: 'Education'),
        _buildServiceItem(
          icon: Icons.medical_services_outlined,
          title: 'Healthcare',
        ),
      ],
    );
  }

  // Reusable Service Item Widget
  Widget _buildServiceItem({required IconData icon, required String title}) {
    return ListTile(
      dense: true,
      leading: Icon(icon, size: 20, color: Colors.blueGrey),
      title: Text(title, style: TextStyle(color: Colors.blueGrey)),
      onTap: () {
        // Optional: Add logic for service items
      },
    );
  }

  // Dialog for Address
  void _showAddressDialog(BuildContext context) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: const Text('Organization Address'),
            content: const SelectableText(
              "123 Charity Lane,\nKindness City, 10100,\nSri Lanka",
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Close'),
              ),
            ],
          ),
    );
  }

  // Dialog for Bank Details
  void _showBankDialog(BuildContext context) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: const Text('Bank Details'),
            content: const SelectableText(
              "Bank Name: Bank of Kindness\nAccount Name: Charity Foundation\nAccount Number: 123-456-7890",
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Close'),
              ),
            ],
          ),
    );
  }
}
