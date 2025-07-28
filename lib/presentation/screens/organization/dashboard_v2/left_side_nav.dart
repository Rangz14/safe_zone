import 'package:flutter/material.dart';
import 'package:safe_zone/core/constants.dart';
import 'package:safe_zone/core/mock_data/mock_donation_requests.dart';
import 'package:safe_zone/core/mock_data/mock_donation_services.dart';
import 'package:safe_zone/core/mock_data/mock_donations.dart';
import 'package:safe_zone/core/mock_data/mock_organization_details.dart';
import 'package:safe_zone/core/mock_data/mock_organizations.dart';
import 'package:safe_zone/domain/organization/address/address.dart';
import 'package:safe_zone/domain/organization/bank_details/bank_details.dart';
import 'package:safe_zone/domain/organization/organization.dart';
import 'package:safe_zone/domain/service/service.dart';

// Your dashboard view enum
import 'package:safe_zone/presentation/screens/organization/dashboard_v2/dashboard_page_v2.dart';

class LeftSideNav extends StatelessWidget {
  // The constructor is now simple again
  final DashboardView currentView;
  final ValueChanged<DashboardView> onViewChanged;

  const LeftSideNav({
    super.key,
    required this.currentView,
    required this.onViewChanged,
  });

  @override
  Widget build(BuildContext context) {
    // --- All data is fetched and prepared right here ---
    final organization = mockOrganizations.first;
    final address = mockOrganizationAddresses.firstWhere(
      (a) => a.organizationId == organization.id,
    );
    final bankDetails = mockOrganizationBankDetailsList.firstWhere(
      (b) => b.organizationId == organization.id,
    );
    final services = mockDonationServices.sublist(0, 3); // Limit to 3 services
    final pendingRequestCount =
        mockDonationRequests
            .where((r) => r.state == DonationRequestState.pending)
            .length;
    final pendingDonationCount =
        mockDonations.where((d) => d.state == DonationState.pending).length;

    return SizedBox(
      width: 280,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              child: Column(
                children: [
                  _buildProfileSection(context, organization),
                  const SizedBox(height: 20),
                  _buildInfoActions(context, address, bankDetails),
                ],
              ),
            ),
            const Divider(indent: 20, endIndent: 20, height: 40),
            _buildNavigationMenu(
              context,
              pendingRequestCount,
              pendingDonationCount,
            ),
            const Divider(indent: 20, endIndent: 20, height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              child: _buildServicesList(context, services),
            ),
          ],
        ),
      ),
    );
  }

  // Uses the Organization object to display profile info
  Widget _buildProfileSection(BuildContext context, Organization org) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 120,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(org.coverImage), // From model
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: -40,
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                child: CircleAvatar(
                  radius: 38,
                  backgroundImage: AssetImage(org.logo), // From model
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 50),
        Text(
          org.name, // From model
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 4),
        Text(
          org.email, // From model
          style: TextStyle(
            fontSize: 14,
            color: Theme.of(context).textTheme.bodySmall?.color,
          ),
        ),
      ],
    );
  }

  // Uses Address and BankDetails objects to populate dialogs
  Widget _buildInfoActions(
    BuildContext context,
    OrganizationAddress addr,
    OrganizationBankDetails bank,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: () => _showAddressDialog(context, addr),
          icon: Icon(
            Icons.location_on_outlined,
            color: Theme.of(context).iconTheme.color,
          ),
          tooltip: 'View Address',
        ),
        IconButton(
          onPressed: () => _showBankDialog(context, bank),
          icon: Icon(
            Icons.account_balance_outlined,
            color: Theme.of(context).iconTheme.color,
          ),
          tooltip: 'View Bank Details',
        ),
      ],
    );
  }

  // Uses the calculated pending counts for the badges
  Widget _buildNavigationMenu(
    BuildContext context,
    int requestCount,
    int donationCount,
  ) {
    return Column(
      children: [
        _buildNavItem(
          context,
          icon: Icons.volunteer_activism_outlined,
          title: 'Donation Requests',
          view: DashboardView.donationRequests,
          badgeCount: requestCount, // From parameter
        ),
        _buildNavItem(
          context,
          icon: Icons.favorite_border,
          title: 'Donations',
          view: DashboardView.donations,
          badgeCount: donationCount, // From parameter
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

  // This is your existing navigation item widget, no changes needed here.
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

  // Builds the list of services dynamically from the DonationService list
  Widget _buildServicesList(
    BuildContext context,
    List<DonationService> serviceList,
  ) {
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
        // Create a list item for each service in the provided list
        for (var service in serviceList) _buildServiceItem(service),
      ],
    );
  }

  // Reusable Service Item Widget, now takes a DonationService object
  Widget _buildServiceItem(DonationService service) {
    return ListTile(
      dense: true,
      // Use Image.asset for the icon
      leading: Image.asset(
        service.icon,
        width: 20,
        height: 20,
        color: Colors.blueGrey,
      ),
      title: Text(
        service.title,
        style: const TextStyle(color: Colors.blueGrey),
      ),
      onTap: () {},
    );
  }

  // Dialog for Address, now populated from data models
  void _showAddressDialog(BuildContext context, OrganizationAddress addr) {
    final fullAddress =
        "${addr.address}\n${addr.town.city}, ${addr.town.district}\n${addr.town.province}, Sri Lanka";
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: const Text('Organization Address'),
            content: SelectableText(fullAddress),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Close'),
              ),
            ],
          ),
    );
  }

  // Dialog for Bank Details, now populated from the data model
  void _showBankDialog(BuildContext context, OrganizationBankDetails bank) {
    final bankInfo =
        "Bank Name: ${bank.bankName}\nBranch: ${bank.bankBranch}\nAccount Name: ${bank.accountName}\nAccount Number: ${bank.accountNumber}";
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: const Text('Bank Details'),
            content: SelectableText(bankInfo),
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
