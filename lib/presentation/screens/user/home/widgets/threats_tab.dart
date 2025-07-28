// lib/presentation/user/main/widgets/threats_tab.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safe_zone/application/watch_both_threats/watch_both_threats_cubit.dart';
import 'package:safe_zone/application/watch_threat_category/watch_threat_category_cubit.dart';
import 'package:safe_zone/domain/threat/threat.dart';
import 'package:safe_zone/injection.dart';

class ThreatsTab extends StatelessWidget {
  const ThreatsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<WatchBothThreatsCubit>()..watch(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Threats & Alerts'), // Updated title
        ),
        body: BlocBuilder<WatchBothThreatsCubit, WatchBothThreatsState>(
          builder:
              (context, state) => state.maybeWhen(
                loading: () => const Center(child: CircularProgressIndicator()),
                watching:
                    (ongoing, previous) => CustomScrollView(
                      slivers: [
                        // --- Ongoing Threats Section ---
                        const _SectionHeader(title: 'Ongoing Threats'),
                        if (ongoing.isEmpty)
                          const _EmptyStateMessage(
                            message: 'No active threats right now. Stay safe!',
                          )
                        else
                          SliverPadding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12.0,
                            ),
                            sliver: SliverList.builder(
                              itemCount: ongoing.length,
                              itemBuilder: (context, index) {
                                return _ThreatCard(
                                  threat: ongoing[index],
                                  isActive: true,
                                );
                              },
                            ),
                          ),

                        // --- Previous Threats Section ---
                        const _SectionHeader(
                          title: 'Previous Threats',
                          topPadding: 32,
                        ),
                        if (previous.isEmpty)
                          const _EmptyStateMessage(
                            message: 'No previously recorded threats.',
                          )
                        else
                          SliverPadding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12.0,
                            ),
                            sliver: SliverList.builder(
                              itemCount: previous.length,
                              itemBuilder: (context, index) {
                                return _ThreatCard(
                                  threat: previous[index],
                                  isActive: false,
                                );
                              },
                            ),
                          ),
                      ],
                    ),
                orElse: () => SizedBox(),
              ),
        ),
      ),
    );
  }
}

// --- Main Widget for the Threat Card (UPDATED) ---

class _ThreatCard extends StatelessWidget {
  final SafeZoneThreat threat;
  final bool isActive;

  const _ThreatCard({required this.threat, required this.isActive});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final location = '${threat.town.town}, ${threat.town.district}';

    // --- Conditional Styling based on the 'isActive' flag ---
    final cardColor =
        isActive ? Colors.red.shade50 : Theme.of(context).cardTheme.color;
    final headerColor =
        isActive ? Colors.red.shade800 : textTheme.titleLarge?.color;
    final statusIcon =
        isActive ? Icons.autorenew_rounded : Icons.check_circle_outline;
    final statusColor = isActive ? Colors.red.shade700 : Colors.green.shade700;
    final statusText =
        isActive ? 'Status: Ongoing' : 'Ended: ${threat.endedAgo}';

    return BlocProvider(
      create:
          (context) =>
              getIt<WatchThreatCategoryCubit>()
                ..watchCategory(threat.categoryId),
      child: BlocBuilder<WatchThreatCategoryCubit, WatchThreatCategoryState>(
        builder:
            (context, state) => state.maybeWhen(
              watching:
                  (category) => Card(
                    margin: const EdgeInsets.only(bottom: 16),
                    color: cardColor,
                    elevation: isActive ? 2 : 1,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.network(
                                category.icon,
                                width: 40,
                                height: 40,
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Text(
                                  category.name,
                                  style: textTheme.titleLarge?.copyWith(
                                    color: headerColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Text(
                            category.description,
                            style: textTheme.bodyMedium,
                          ),
                          const Divider(height: 24),
                          _InfoRow(
                            icon: Icons.location_on_outlined,
                            text: location,
                          ),
                          const SizedBox(height: 8),
                          _InfoRow(
                            icon: Icons.play_circle_outline,
                            text: 'Started: ${threat.startedAgo}',
                          ),
                          const SizedBox(height: 8),
                          _InfoRow(
                            icon: statusIcon,
                            text: statusText,
                            highlightColor: statusColor,
                          ),
                        ],
                      ),
                    ),
                  ),
              orElse: () => SizedBox(),
            ),
      ),
    );
  }
}

// --- Helper Widgets ---

class _SectionHeader extends StatelessWidget {
  final String title;
  final double topPadding;
  const _SectionHeader({required this.title, this.topPadding = 16.0});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.fromLTRB(16.0, topPadding, 16.0, 16.0),
        child: Text(
          title,
          style: Theme.of(
            context,
          ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class _EmptyStateMessage extends StatelessWidget {
  final String message;
  const _EmptyStateMessage({required this.message});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
          child: Text(message, style: Theme.of(context).textTheme.bodyMedium),
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color? highlightColor;

  const _InfoRow({required this.icon, required this.text, this.highlightColor});

  @override
  Widget build(BuildContext context) {
    final defaultColor = Theme.of(context).colorScheme.onSurfaceVariant;
    final color = highlightColor ?? defaultColor;
    final fontWeight =
        highlightColor != null ? FontWeight.bold : FontWeight.normal;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 16, color: color),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: color,
              fontWeight: fontWeight,
            ),
          ),
        ),
      ],
    );
  }
}
