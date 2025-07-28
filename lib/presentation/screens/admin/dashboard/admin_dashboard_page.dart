import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safe_zone/application/end_threat/end_threat_cubit.dart';
import 'package:safe_zone/application/watch_admin_stats/watch_admin_stats_cubit.dart';
import 'package:safe_zone/application/watch_threat_category/watch_threat_category_cubit.dart';
import 'package:safe_zone/application/watch_threats/watch_threats_cubit.dart';
import 'package:safe_zone/core/constants.dart';
import 'package:safe_zone/domain/threat/threat.dart';
import 'package:safe_zone/domain/town/town.dart';
import 'package:safe_zone/injection.dart';
import 'package:safe_zone/presentation/router/app_router.dart';
import 'package:safe_zone/presentation/widgets/space.dart';
import 'package:safe_zone/presentation/widgets/text.dart';

@RoutePage()
class AdminDashboardPage extends StatelessWidget implements AutoRouteWrapper {
  const AdminDashboardPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<WatchThreatsCubit>()..watchThreats(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SVGap(gap: 20),
          SliverToBoxAdapter(
            child: Card(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              color: theme.colorScheme.surfaceContainer,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/logo.png",
                      width: 40,
                      height: 40,
                    ),
                    const HGap(gap: 20),
                    TextMedium("Safe Zone Admin", bold: true),
                    Spacer(),
                    TextButton.icon(
                      onPressed: () {},
                      label: Text("Logout"),
                      icon: Icon(Icons.logout, color: theme.colorScheme.error),
                      style: TextButton.styleFrom(
                        foregroundColor: theme.colorScheme.error,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SVGap(gap: 20),

          SliverToBoxAdapter(
            child: Row(
              children: [
                const HGap(gap: 20),
                Expanded(
                  child: StatCard(
                    type: AdminStatsType.users,
                    color: Colors.blue,
                    icon: Icons.group,
                    bgColor: Colors.blue.withAlpha(50),
                    onTap: () => context.router.push(AdminUsersRoute()),
                  ),
                ),
                const HGap(gap: 20),
                Expanded(
                  child: StatCard(
                    type: AdminStatsType.organizations,
                    color: Colors.purple,
                    icon: Icons.business,
                    bgColor: Colors.purple.withAlpha(50),
                    onTap: () => context.router.push(AdminOrgsRoute()),
                  ),
                ),
                const HGap(gap: 20),
                Expanded(
                  child: StatCard(
                    type: AdminStatsType.services,
                    color: Colors.yellow,
                    icon: Icons.volunteer_activism,
                    bgColor: Colors.yellow.withAlpha(50),
                    onTap:
                        () => context.router.push(AdminDonationServicesRoute()),
                  ),
                ),
                const HGap(gap: 20),
                Expanded(
                  child: StatCard(
                    type: AdminStatsType.threatCategories,
                    color: Colors.orange,
                    icon: Icons.landslide,
                    bgColor: Colors.orange.withAlpha(50),
                    onTap:
                        () => context.router.push(AdminThreatCategoriesRoute()),
                  ),
                ),
                const HGap(gap: 20),
                Expanded(
                  child: StatCard(
                    type: AdminStatsType.donations,
                    color: Colors.green,
                    icon: Icons.attach_money,
                    bgColor: Colors.green.withAlpha(50),
                    onTap: () => Unit,
                  ),
                ),
                const HGap(gap: 20),
              ],
            ),
          ),
          const SVGap(gap: 40),
          SliverToBoxAdapter(
            child: Row(
              children: [
                const HGap(gap: 20),
                TextMedium("Active Threats", bold: true),
                Spacer(),
                FilledButton.icon(
                  onPressed: () => context.router.push(AdminNewThreatRoute()),

                  icon: Icon(
                    Icons.emergency,
                    color: theme.colorScheme.onErrorContainer,
                  ),
                  label: Text("Add Threat"),
                  style: FilledButton.styleFrom(
                    backgroundColor: theme.colorScheme.errorContainer,
                    foregroundColor: theme.colorScheme.onErrorContainer,
                  ),
                ),
                const HGap(gap: 20),
              ],
            ),
          ),
          const SVGap(gap: 20),
          BlocBuilder<WatchThreatsCubit, WatchThreatsState>(
            builder:
                (context, state) => state.maybeWhen(
                  loading:
                      () => SliverToBoxAdapter(
                        child: Center(child: CircularProgressIndicator()),
                      ),
                  watching: (threats) {
                    if (threats.isEmpty) {
                      return SliverToBoxAdapter(
                        child: Card(
                          color: Colors.green.withAlpha(50),
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          child: Padding(
                            padding: const EdgeInsets.all(40),
                            child: Center(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(Icons.chalet),
                                  const HGap(gap: 20),
                                  Text("No Ongoing threats!"),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }

                    final activeThreats =
                        threats.where((t) => t.endedAt == 0).toList();
                    if (activeThreats.isEmpty) {
                      return SliverToBoxAdapter(
                        child: Card(
                          color: Colors.green.withAlpha(50),
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          child: Padding(
                            padding: const EdgeInsets.all(40),
                            child: Center(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(Icons.chalet),
                                  const HGap(gap: 20),
                                  Text("No Ongoing threats!"),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }

                    return SliverList(
                      delegate: SliverChildBuilderDelegate((context, index) {
                        return _ActiveThreatCard(threat: activeThreats[index]);
                      }, childCount: activeThreats.length),
                    );
                  },
                  orElse:
                      () => SliverToBoxAdapter(
                        child: Center(child: Text("Unexpected state")),
                      ),
                ),
          ),
          const SVGap(gap: 20),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextMedium("Previous Threats", bold: true),
            ),
          ),
          const SVGap(gap: 20),
          BlocBuilder<WatchThreatsCubit, WatchThreatsState>(
            builder:
                (context, state) => state.maybeWhen(
                  loading:
                      () => SliverToBoxAdapter(
                        child: Center(child: CircularProgressIndicator()),
                      ),
                  watching: (threats) {
                    if (threats.isEmpty) {
                      return SliverToBoxAdapter(
                        child: Center(child: Text("No threats recorded")),
                      );
                    }

                    final previousThreats =
                        threats.where((t) => t.endedAt != 0).toList();
                    if (previousThreats.isEmpty) {
                      return SliverToBoxAdapter(
                        child: Center(child: Text("No threats recorded")),
                      );
                    }

                    return SliverList(
                      delegate: SliverChildBuilderDelegate((context, index) {
                        return _PreviousThreatCard(
                          threat: previousThreats[index],
                        );
                      }, childCount: previousThreats.length),
                    );
                  },
                  orElse:
                      () => SliverToBoxAdapter(
                        child: Center(child: Text("Unexpected state")),
                      ),
                ),
          ),
        ],
      ),
    );
  }
}

class _PreviousThreatCard extends StatelessWidget {
  final SafeZoneThreat threat;

  const _PreviousThreatCard({required this.threat});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            _ThreatCategoryWidget(categoryId: threat.categoryId),
            const HGap(gap: 20),
            _LocationWidget(town: threat.town),
            const HGap(gap: 20),
            Card(
              color: Colors.blue.withAlpha(50),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.alarm, color: Colors.blue),
                    const HGap(gap: 10),
                    TextRegular("Started: ${threat.startedAgo}"),
                  ],
                ),
              ),
            ),
            const HGap(gap: 20),
            Card(
              color: Colors.green.withAlpha(50),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.alarm, color: Colors.green),
                    const HGap(gap: 10),
                    TextRegular("Ended • ${threat.endedAgo}"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ActiveThreatCard extends StatelessWidget {
  final SafeZoneThreat threat;

  const _ActiveThreatCard({required this.threat});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<EndThreatCubit>(),
      child: Card(
        color: Colors.red.withAlpha(25),
        margin: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              _ThreatCategoryWidget(categoryId: threat.categoryId),
              const HGap(gap: 20),
              _LocationWidget(town: threat.town),
              const HGap(gap: 20),
              Card(
                color: Colors.blue.withAlpha(50),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.alarm, color: Colors.blue),
                      const HGap(gap: 10),
                      TextRegular("Started: ${threat.startedAgo}"),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              BlocBuilder<EndThreatCubit, EndThreatState>(
                builder:
                    (context, state) => state.maybeWhen(
                      loading: () => CircularProgressIndicator(),
                      orElse:
                          () => FilledButton.icon(
                            onPressed:
                                () => context.read<EndThreatCubit>().endThreat(
                                  threat,
                                ),
                            icon: Icon(Icons.check_circle, color: Colors.white),
                            label: Text("End Threat"),
                            style: FilledButton.styleFrom(
                              backgroundColor: Colors.green,
                              foregroundColor: Colors.white,
                            ),
                          ),
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StatCard extends StatelessWidget {
  final AdminStatsType type;
  final Color bgColor;
  final Color color;
  final IconData icon;
  final Function()? onTap;

  const StatCard({
    super.key,
    required this.color,
    required this.icon,
    this.onTap,
    required this.bgColor,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<WatchAdminStatsCubit>()..watchStat(type),
      child: BlocBuilder<WatchAdminStatsCubit, WatchAdminStatsState>(
        builder:
            (context, state) => state.maybeWhen(
              loading: () => TextSmall("Loading..."),
              watching:
                  (value, title) => InkWell(
                    onTap: onTap,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: bgColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(icon, size: 40, color: color),
                              const HGap(gap: 10),
                              TextExLarge("$value", bold: true, color: color),
                            ],
                          ),
                          const VGap(gap: 10),
                          TextRegular(title, bold: true),
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

class _LocationWidget extends StatelessWidget {
  final Town town;

  const _LocationWidget({required this.town});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.yellow.withAlpha(50),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.location_on, color: Colors.yellow),
            const HGap(gap: 10),
            TextRegular("${town.province} > ${town.city} > ${town.town}"),
          ],
        ),
      ),
    );
  }
}

class _ThreatCategoryWidget extends StatelessWidget {
  final String categoryId;

  const _ThreatCategoryWidget({required this.categoryId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) =>
              getIt<WatchThreatCategoryCubit>()..watchCategory(categoryId),
      child: BlocBuilder<WatchThreatCategoryCubit, WatchThreatCategoryState>(
        builder:
            (context, state) => state.maybeWhen(
              loading: () => TextSmall("Loading..."),
              watching:
                  (category) => Row(
                    children: [
                      Image.network(category.icon, width: 40, height: 40),
                      const HGap(gap: 20),
                      TextMedium(
                        category
                            .name, // Replace with actual category name lookup
                        bold: true,
                      ),
                    ],
                  ),

              orElse: () => TextSmall("Failed to load data"),
            ),
      ),
    );
  }
}
