import 'package:flutter/material.dart';
import 'package:safe_zone/presentation/screens/organization/dashboard_v2/donation.dart';
import 'package:safe_zone/presentation/widgets/text.dart';

class DonationCard extends StatelessWidget {
  final Donation donation;

  const DonationCard({super.key, required this.donation});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white.withAlpha(25),
      margin: const EdgeInsets.only(bottom: 16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // User Info
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(donation.user.avatarUrl),
                  onBackgroundImageError: (_, __) {},
                ),
                const SizedBox(width: 12),
                TextRegular(donation.user.name),
              ],
            ),
            const Divider(height: 24),

            // Donation Details
            _buildInfoRow(
              Theme.of(context),
              icon: donation.serviceIcon,
              title: "${donation.serviceTitle} (x${donation.unitCount})",
            ),

            // Payslip and Actions
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton.icon(
                  onPressed:
                      () => _showPayslipDialog(context, donation.payslipUrl),
                  icon: const Icon(Icons.receipt_long_outlined, size: 18),
                  label: const Text("View Payslip"),
                ),
                _buildActionButtons(context),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(
    ThemeData theme, {
    required IconData icon,
    required String title,
  }) {
    return Row(
      children: [
        Icon(icon, size: 18, color: theme.colorScheme.primary),
        const SizedBox(width: 12),
        Expanded(child: Text(title, style: theme.textTheme.bodyMedium)),
      ],
    );
  }

  // Shows the payslip in a dialog
  void _showPayslipDialog(BuildContext context, String imageUrl) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            contentPadding: const EdgeInsets.all(8),
            content: Image.asset(imageUrl),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text("Close"),
              ),
            ],
          ),
    );
  }

  // Builds the correct action buttons based on the state
  Widget _buildActionButtons(BuildContext context) {
    switch (donation.state) {
      case DonationState.pending:
        return Row(
          children: [
            TextButton(
              onPressed: () {
                /* TODO: Implement Decline Logic */
              },
              style: TextButton.styleFrom(
                foregroundColor: Theme.of(context).colorScheme.error,
              ),
              child: const Text("Decline"),
            ),
            const SizedBox(width: 8),
            FilledButton(
              onPressed: () {
                /* TODO: Implement Accept Logic */
              },
              child: const Text("Accept"),
            ),
          ],
        );
      case DonationState.accepted:
        return Chip(
          label: const Text("Accepted"),
          avatar: const Icon(Icons.check_circle_outline),
          labelStyle: TextStyle(color: Colors.green.shade100),
          backgroundColor: Colors.green.shade900.withAlpha(25),
        );
      case DonationState.declined:
        return Chip(
          label: const Text("Declined"),
          avatar: const Icon(Icons.cancel_outlined),
          labelStyle: TextStyle(color: Colors.red.shade100),
          backgroundColor: Theme.of(
            context,
          ).colorScheme.errorContainer.withAlpha(50),
        );
    }
  }
}
