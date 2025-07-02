import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safe_zone/application/watch_donation_services/watch_donation_services_cubit.dart';
import 'package:safe_zone/domain/service/service.dart';
import 'package:safe_zone/injection.dart';
import 'package:safe_zone/presentation/router/app_router.dart';
import 'package:safe_zone/presentation/widgets/space.dart';
import 'package:safe_zone/presentation/widgets/text.dart';
import 'package:safe_zone/presentation/widgets/toast.dart';

@RoutePage()
class AdminDonationServicesPage extends StatelessWidget
    implements AutoRouteWrapper {
  const AdminDonationServicesPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
    create:
        (context) =>
            getIt<WatchDonationServicesCubit>()..watchDonationServices(),
    child: this,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Donation Services')),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 40)),

          // Header Row
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                children: [
                  TextMedium("Donation Services", bold: true),
                  Spacer(),
                  FilledButton.icon(
                    onPressed:
                        () => context.router.push(AdminNewServiceRoute()),
                    label: Text("Add New Service"),
                    icon: Icon(Icons.add),
                  ),
                ],
              ),
            ),
          ),

          SliverToBoxAdapter(child: SizedBox(height: 40)),

          // Bloc Builder
          BlocConsumer<WatchDonationServicesCubit, WatchDonationServicesState>(
            listener:
                (context, state) => state.maybeWhen(
                  failed: (message) => showFailedToast(context, message),
                  orElse: () => Unit,
                ),
            builder:
                (context, state) => state.maybeWhen(
                  loading:
                      () => SliverToBoxAdapter(
                        child: Center(child: CircularProgressIndicator()),
                      ),
                  watching: (services) {
                    if (services.isEmpty) {
                      return SliverToBoxAdapter(
                        child: Center(
                          child: Text("No donation services available."),
                        ),
                      );
                    }

                    return SliverList(
                      delegate: SliverChildBuilderDelegate((context, index) {
                        final service = services[index];
                        return DonationServiceCard(service: service);
                      }, childCount: services.length),
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

class DonationServiceCard extends StatelessWidget {
  final DonationService service;

  const DonationServiceCard({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: theme.colorScheme.surfaceContainer,
        margin: const EdgeInsets.only(bottom: 20),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.network(service.icon, width: 50, height: 50),
                  const HGap(gap: 20),
                  TextMedium(service.title, bold: true),
                  const HGap(gap: 20),
                  Material(
                    shape: StadiumBorder(),
                    color: Colors.green.withAlpha(25),

                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 5,
                      ),
                      child: TextRegular(
                        "Apx Unit Price: LKR ${service.approximateUnitPrice}",
                        color: Colors.green,
                        bold: true,
                      ),
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      // Navigate to edit page
                    },
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
              const VGap(gap: 5),
              Divider(),
              const VGap(gap: 5),
              TextRegular(service.description, overflow: true, maxLines: 3),
            ],
          ),
        ),
      ),
    );
  }
}
