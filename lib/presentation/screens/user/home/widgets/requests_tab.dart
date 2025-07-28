// lib/presentation/user/main/widgets/requests_tab.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:safe_zone/application/watch_donation_service/watch_donation_service_cubit.dart';
import 'package:safe_zone/application/watch_org/watch_org_cubit.dart';
import 'package:safe_zone/application/watch_threat/watch_threat_cubit.dart';
import 'package:safe_zone/application/watch_user_requests/watch_user_requests_cubit.dart';
import 'package:safe_zone/core/constants.dart';
import 'package:safe_zone/domain/donation_request/donation_request.dart';
import 'package:safe_zone/injection.dart';

class RequestsTab extends StatelessWidget {
  const RequestsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<WatchUserRequestsCubit>()..watch(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('My Donation Requests'),
          centerTitle: false,
        ),
        // 3. Handle the case where the user has no requests
        body: BlocBuilder<WatchUserRequestsCubit, WatchUserRequestsState>(
          builder:
              (context, state) => state.maybeWhen(
                watching:
                    (requests) =>
                        requests.isEmpty
                            ? Center(
                              child: Text(
                                'You haven\'t made any requests yet.',
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            )
                            : ListView.builder(
                              padding: const EdgeInsets.all(12.0),
                              itemCount: requests.length,
                              itemBuilder: (context, index) {
                                return _DonationRequestCard(
                                  request: requests[index],
                                );
                              },
                            ),
                orElse: () => SizedBox(),
              ),
        ),
      ),
    );
  }
}

// --- Main Widget for the Request Card (No changes needed here) ---

class _DonationRequestCard extends StatelessWidget {
  final DonationRequest request;
  const _DonationRequestCard({required this.request});

  String _formatTimestamp(int timestamp) {
    final dateTime = DateTime.fromMillisecondsSinceEpoch(timestamp);
    return DateFormat.yMMMd().format(dateTime);
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlocProvider(
              create:
                  (context) =>
                      getIt<WatchDonationServiceCubit>()
                        ..watch(request.donationServiceId),
              child: BlocBuilder<
                WatchDonationServiceCubit,
                WatchDonationServiceState
              >(
                builder:
                    (context, state) => state.maybeWhen(
                      watching:
                          (service) => Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                backgroundColor:
                                    Theme.of(
                                      context,
                                    ).colorScheme.secondaryContainer,
                                child: Image.asset(
                                  service.icon,
                                  width: 24,
                                  height: 24,
                                ),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Text(
                                  service.title,
                                  style: textTheme.titleMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              _StatusBadge(state: request.state),
                            ],
                          ),
                      orElse: () => SizedBox(),
                    ),
              ),
            ),
            const Divider(height: 24),
            _InfoRow(
              icon: Icons.inventory_2_outlined,
              text: 'Requesting: ${request.units} units',
            ),
            const SizedBox(height: 8),
            BlocProvider(
              create:
                  (context) =>
                      getIt<WatchThreatCubit>()..watch(request.threatId),
              child: BlocBuilder<WatchThreatCubit, WatchThreatState>(
                builder:
                    (context, state) => state.maybeWhen(
                      watching:
                          (threat) => _InfoRow(
                            icon: Icons.location_on_outlined,
                            text: 'Location: ${threat.town.town}',
                          ),
                      orElse: () => SizedBox(),
                    ),
              ),
            ),
            const SizedBox(height: 8),
            _InfoRow(
              icon: Icons.calendar_today_outlined,
              text: 'Date: ${_formatTimestamp(request.createdAt)}',
            ),
            BlocBuilder<WatchOrgCubit, WatchOrgState>(
              builder:
                  (context, state) => state.maybeWhen(
                    watching:
                        (organization) => Column(
                          children: [
                            const Divider(height: 24),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 14,
                                  backgroundImage: AssetImage(
                                    organization.logo,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: Text.rich(
                                    TextSpan(
                                      text: 'Accepted by: ',
                                      style: textTheme.bodySmall,
                                      children: [
                                        TextSpan(
                                          text: organization.name,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                    orElse: () => SizedBox(),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

// --- Helper widget for the status chip (No changes needed here) ---

class _StatusBadge extends StatelessWidget {
  final DonationRequestState state;
  const _StatusBadge({required this.state});

  @override
  Widget build(BuildContext context) {
    final (Color bgColor, Color fgColor) = switch (state) {
      DonationRequestState.pending => (
        Colors.orange.shade100,
        Colors.orange.shade800,
      ),
      DonationRequestState.accepted => (
        Colors.blue.shade100,
        Colors.blue.shade800,
      ),
      DonationRequestState.fundRaised => (
        Colors.green.shade100,
        Colors.green.shade800,
      ),
      DonationRequestState.donated => (
        Colors.purple.shade100,
        Colors.purple.shade800,
      ),
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
      side: BorderSide.none,
    );
  }
}

// --- Helper widget for consistent info rows (No changes needed here) ---

class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String text;
  const _InfoRow({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 16,
          color: Theme.of(context).colorScheme.onSurfaceVariant,
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(text, style: Theme.of(context).textTheme.bodyMedium),
        ),
      ],
    );
  }
}
