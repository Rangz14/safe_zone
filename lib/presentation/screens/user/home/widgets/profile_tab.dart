// lib/presentation/user/main/widgets/profile_tab.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:safe_zone/application/auth/auth_cubit.dart';
import 'package:safe_zone/application/watch_user_address/watch_user_address_cubit.dart';
import 'package:safe_zone/application/watch_user_donations/watch_user_donations_cubit.dart';
import 'package:safe_zone/core/constants.dart';
import 'package:safe_zone/core/mock_data/mock_donation_services.dart';
import 'package:safe_zone/core/mock_data/mock_organizations.dart';
import 'package:safe_zone/domain/donation/donation.dart';
import 'package:safe_zone/domain/organization/organization.dart';
import 'package:safe_zone/domain/service/service.dart';
import 'package:safe_zone/injection.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      // We use a standard AppBar now
      appBar: AppBar(title: const Text('My Profile')),
      // The body is one continuous scroll view
      body: BlocProvider(
        create: (context) => getIt<WatchUserDonationsCubit>()..watch(),
        child: BlocBuilder<WatchUserDonationsCubit, WatchUserDonationsState>(
          builder:
              (context, state) => state.maybeWhen(
                watching:
                    (donations) => CustomScrollView(
                      slivers: [
                        // The user header is now the first item in the list
                        SliverToBoxAdapter(child: _UserProfileHeader()),

                        // The "Donation History" title
                        SliverToBoxAdapter(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
                            child: Text(
                              'Donation History',
                              style: textTheme.titleLarge,
                            ),
                          ),
                        ),

                        // The list of donations or an empty message
                        if (donations.isEmpty)
                          const SliverFillRemaining(
                            hasScrollBody: false,
                            child: Center(
                              child: Text(
                                'You have not made any donations yet.',
                              ),
                            ),
                          )
                        else
                          SliverList.builder(
                            itemCount: donations.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.fromLTRB(
                                  16,
                                  0,
                                  16,
                                  12,
                                ),
                                child: _DonationHistoryCard(
                                  donation: donations[index],
                                ),
                              );
                            },
                          ),
                      ],
                    ),
                orElse:
                    () => CustomScrollView(
                      slivers: [
                        // The user header is now the first item in the list
                        SliverToBoxAdapter(child: _UserProfileHeader()),

                        // The "Donation History" title
                        SliverToBoxAdapter(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
                            child: Text(
                              'Donation History',
                              style: textTheme.titleLarge,
                            ),
                          ),
                        ),

                        // The list of donations or an empty message
                        const SliverFillRemaining(
                          hasScrollBody: false,
                          child: Center(
                            child: Text('You have not made any donations yet.'),
                          ),
                        ),
                      ],
                    ),
              ),
        ),
      ),
    );
  }
}

// --- User Profile Header Widget (SIMPLIFIED) ---

class _UserProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return BlocBuilder<AuthCubit, AuthState>(
      builder:
          (context, state) => state.maybeWhen(
            authenticatedUser:
                (user) => Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(user.image),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        user.name,
                        style: textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 24),
                      // The info rows are now standard, left-aligned
                      _InfoRow(icon: Icons.phone_outlined, text: user.phone),
                      const SizedBox(height: 8),
                      BlocProvider(
                        create:
                            (context) =>
                                getIt<WatchUserAddressCubit>()..watch(user.id),
                        child: BlocBuilder<
                          WatchUserAddressCubit,
                          WatchUserAddressState
                        >(
                          builder:
                              (context, state) => state.maybeWhen(
                                watching:
                                    (address) => _InfoRow(
                                      icon: Icons.location_on_outlined,
                                      text:
                                          "${address.address}, ${address.town.city}",
                                    ),
                                orElse: () => SizedBox(),
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
            orElse: () => SizedBox(),
          ),
    );
  }
}

// --- Donation History Card Widget (No changes) ---
class _DonationHistoryCard extends StatelessWidget {
  final Donation donation;
  const _DonationHistoryCard({required this.donation});

  DonationService _getService() => mockDonationServices.firstWhere(
    (s) => s.id == donation.donationServiceId,
  );
  Organization _getOrganization() =>
      mockOrganizations.firstWhere((o) => o.id == donation.organizationId);
  String _formatTimestamp(int timestamp) =>
      DateFormat.yMMMd().format(DateTime.fromMillisecondsSinceEpoch(timestamp));

  @override
  Widget build(BuildContext context) {
    final service = _getService();
    final organization = _getOrganization();

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(organization.logo),
                  radius: 16,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'Donated to ${organization.name}',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
              ],
            ),
            const Divider(height: 20),
            Text.rich(
              TextSpan(
                text: 'Donated ',
                children: [
                  TextSpan(
                    text: '${donation.units} units of ${service.title}',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _formatTimestamp(donation.createdAt),
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                _DonationStatusBadge(state: donation.state),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// --- Helper Widgets (SIMPLIFIED) ---

class _DonationStatusBadge extends StatelessWidget {
  final DonationState state;
  const _DonationStatusBadge({required this.state});

  @override
  Widget build(BuildContext context) {
    final (Color bgColor, Color fgColor) = switch (state) {
      DonationState.pending => (Colors.orange.shade100, Colors.orange.shade800),
      DonationState.accepted => (Colors.green.shade100, Colors.green.shade800),
      DonationState.declined => (Colors.red.shade100, Colors.red.shade800),
    };

    return Chip(
      label: Text(state.value),
      labelStyle: TextStyle(
        color: fgColor,
        fontWeight: FontWeight.bold,
        fontSize: 12,
      ),
      backgroundColor: bgColor,
      padding: EdgeInsets.zero,
      visualDensity: VisualDensity.compact,
      side: BorderSide.none,
    );
  }
}

// InfoRow is back to its simple, original form
class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String text;
  const _InfoRow({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          size: 16,
          color: Theme.of(context).colorScheme.onSurfaceVariant,
        ),
        const SizedBox(width: 8),
        Text(text, style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
