// lib/presentation/user/main/widgets/home_tab.dart

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safe_zone/application/auth/auth_cubit.dart';
import 'package:safe_zone/application/watch_donation_services/watch_donation_services_cubit.dart';
import 'package:safe_zone/application/watch_threat_category/watch_threat_category_cubit.dart';
import 'package:safe_zone/application/watch_user_threats/watch_user_threats_cubit.dart';
import 'package:safe_zone/core/mock_data/mock_carousel.dart';
import 'package:safe_zone/injection.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<WatchUserThreatsCubit>()..watch(),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              transitionBuilder: (child, animation) {
                return FadeTransition(opacity: animation, child: child);
              },
              child: BlocBuilder<WatchUserThreatsCubit, WatchUserThreatsState>(
                builder:
                    (context, state) => state.maybeWhen(
                      watching: (threats) {
                        if (threats.isNotEmpty) {
                          return _ThreatModeView();
                        }
                        return _NormalModeView();
                      },
                      orElse: () => _NormalModeView(),
                    ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// --- UI for Normal Mode ---

class _NormalModeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _UserHeader(),
        const SizedBox(height: 24),
        _HomeCarousel(),
        const SizedBox(height: 24),
        Text(
          'Donate for a Cause ❤️',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 16),
        _DonationServiceList(),
      ],
    );
  }
}

// --- UI for Threat Mode ---

class _ThreatModeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _UserHeader(),
        const SizedBox(height: 24),
        const _ThreatWarningCard(),
        const SizedBox(height: 24),
        Text(
          'Active Threats Nearby',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 16),
        _ActiveThreatsList(), // Show first 3 threats
        const SizedBox(height: 24),
        Text(
          'Request Emergency Service 🙏',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 16),
        _ServiceRequestGrid(),
      ],
    );
  }
}

// --- Component Widgets (ideally in their own files) ---

class _UserHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder:
          (context, state) => state.maybeWhen(
            authenticatedUser:
                (user) => Row(
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundImage: NetworkImage(
                        user.image,
                      ), // Using user's image from mock data
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello, Welcome back 👋',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          Text(
                            user.name, // Using user's name from mock data
                            style: Theme.of(context).textTheme.titleLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
            orElse: () => SizedBox(),
          ),
    );
  }
}

class _HomeCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final items = mockCarousel;

    return CarouselSlider.builder(
      itemCount: items.length,
      itemBuilder: (context, index, realIndex) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: AssetImage(items[index]), // Using coverImage
              fit: BoxFit.cover,
            ),
          ),
        );
      },
      options: CarouselOptions(
        height: 180.0,
        autoPlay: true,
        enlargeCenterPage: true,
        viewportFraction: 1,
      ),
    );
  }
}

class _DonationServiceList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) =>
              getIt<WatchDonationServicesCubit>()..watchDonationServices(),
      child: BlocBuilder<
        WatchDonationServicesCubit,
        WatchDonationServicesState
      >(
        builder:
            (context, state) => state.maybeWhen(
              watching:
                  (services) => ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: services.length,
                    itemBuilder: (context, index) {
                      final service = services[index];
                      return Card(
                        margin: const EdgeInsets.only(bottom: 12),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor:
                                Theme.of(context).colorScheme.primaryContainer,
                            child: Image.network(
                              service.icon,
                              width: 24,
                              height: 24,
                            ),
                          ),
                          title: Text(
                            service.title,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            'Approx. LKR ${service.approximateUnitPrice} /unit',
                          ),
                          trailing: ElevatedButton(
                            onPressed: () {
                              /* TODO: Implement navigation to donation page */
                            },
                            child: const Text('Donate'),
                          ),
                        ),
                      );
                    },
                  ),

              orElse: () => SizedBox(),
            ),
      ),
    );
  }
}

class _ThreatWarningCard extends StatelessWidget {
  const _ThreatWarningCard();

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red.shade700,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            const Icon(Icons.warning_rounded, color: Colors.white, size: 32),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                'Active Threat Alert in Your Area. Stay Safe!',
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ActiveThreatsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<WatchUserThreatsCubit>()..watch(),
      child: BlocBuilder<WatchUserThreatsCubit, WatchUserThreatsState>(
        builder:
            (context, state) => state.maybeWhen(
              watching:
                  (threats) => Column(
                    children:
                        threats.map((threat) {
                          return BlocProvider(
                            create:
                                (context) =>
                                    getIt<WatchThreatCategoryCubit>()
                                      ..watchCategory(threat.categoryId),
                            child: BlocBuilder<
                              WatchThreatCategoryCubit,
                              WatchThreatCategoryState
                            >(
                              builder:
                                  (context, state) => state.maybeWhen(
                                    watching:
                                        (category) => Card(
                                          color: Colors.red.shade50,
                                          margin: const EdgeInsets.only(
                                            bottom: 8,
                                          ),
                                          child: ListTile(
                                            leading: Image.network(
                                              category.icon,
                                              width: 40,
                                              height: 40,
                                            ),
                                            title: Text(
                                              category.name,
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            subtitle: Text(
                                              'Location: ${threat.town.town} | ${threat.startedAgo}',
                                            ),
                                          ),
                                        ),
                                    orElse: () => SizedBox(),
                                  ),
                            ),
                          );
                        }).toList(),
                  ),
              orElse: () => SizedBox(),
            ),
      ),
    );
  }
}

class _ServiceRequestGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) =>
              getIt<WatchDonationServicesCubit>()..watchDonationServices(),
      child: BlocBuilder<
        WatchDonationServicesCubit,
        WatchDonationServicesState
      >(
        builder:
            (context, state) => state.maybeWhen(
              watching:
                  (services) => GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 16,
                          childAspectRatio: 3 / 2,
                        ),
                    itemCount: services.length,
                    itemBuilder: (context, index) {
                      final service = services[index];
                      return Card(
                        child: InkWell(
                          onTap: () {
                            /* TODO: Implement navigation to service request page */
                          },
                          borderRadius: BorderRadius.circular(12),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.network(
                                service.icon,
                                width: 48,
                                height: 48,
                              ),
                              const SizedBox(height: 12),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                ),
                                child: Text(
                                  service.title,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
              orElse: () => SizedBox(),
            ),
      ),
    );
  }
}
