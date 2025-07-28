import 'package:flutter/material.dart';
import 'package:safe_zone/core/constants.dart';
import 'package:safe_zone/domain/donation/donation.dart';
import 'package:safe_zone/domain/service/service.dart';
import 'package:safe_zone/domain/user/user.dart';

class DonationCard extends StatelessWidget {
  // The constructor now takes the required freezed models
  final Donation donation;
  final SafeZoneUser user;
  final DonationService service;

  const DonationCard({
    super.key,
    required this.donation,
    required this.user,
    required this.service,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    // Calculate the total approximate value for display
    final totalValue = donation.units * service.approximateUnitPrice;

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
                  backgroundImage: AssetImage(user.image), // Use user model
                  onBackgroundImageError: (_, __) {},
                ),
                const SizedBox(width: 12),
                Text(
                  user.name,
                  style: theme.textTheme.titleMedium,
                ), // Use user model
              ],
            ),
            const Divider(height: 24),

            // Donation Details
            _buildInfoRow(
              theme,
              // Use Image.asset for the service icon
              icon: Image.asset(service.icon, width: 18, height: 18),
              title: "${service.title} (x${donation.units})",
            ),
            const SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.only(
                left: 30.0,
              ), // Align with the text above
              child: Text(
                'Approx. Value: LKR ${totalValue.toStringAsFixed(2)}',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: Colors.grey.shade600,
                ),
              ),
            ),

            // Payslip and Actions
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton.icon(
                  onPressed:
                      () => _showPayslipDialog(context, donation.payslip),
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

  // Helper updated to accept a Widget for the icon
  Widget _buildInfoRow(
    ThemeData theme, {
    required Widget icon,
    required String title,
  }) {
    return Row(
      children: [
        Theme(
          data: theme.copyWith(
            iconTheme: IconThemeData(color: theme.colorScheme.primary),
          ),
          child: icon,
        ),
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
            content: Image.asset(
              imageUrl,
            ), // Use the path from the donation model
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
    // This logic is already great, just ensure it uses the correct enum
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
          avatar: const Icon(Icons.check_circle_outline, size: 16),
          labelStyle: TextStyle(color: Colors.green.shade100),
          backgroundColor: Colors.green.shade900.withAlpha(50),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        );
      case DonationState.declined:
        return Chip(
          label: const Text("Declined"),
          avatar: const Icon(Icons.cancel_outlined, size: 16),
          labelStyle: TextStyle(color: Colors.red.shade100),
          backgroundColor: Theme.of(
            context,
          ).colorScheme.errorContainer.withAlpha(50),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        );
    }
  }
}
