import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safe_zone/application/update_org_service/update_org_service_cubit.dart';
import 'package:safe_zone/application/watch_donation_services/watch_donation_services_cubit.dart';
import 'package:safe_zone/application/watch_service_is_selected_org/watch_service_is_selected_org_cubit.dart';
import 'package:safe_zone/domain/service/service.dart';
import 'package:safe_zone/injection.dart';
import 'package:safe_zone/presentation/router/app_router.dart';
import 'package:safe_zone/presentation/widgets/space.dart';
import 'package:safe_zone/presentation/widgets/text.dart';

@RoutePage()
class SelectServicesOrgPage extends StatelessWidget
    implements AutoRouteWrapper {
  const SelectServicesOrgPage({super.key});

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
      appBar: AppBar(title: Text("Select Services")),
      body: Column(
        children: [
          const VGap(gap: 20),
          Row(
            children: [
              const HGap(gap: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextMedium(
                      "Select the services you want to provide as an organization. ",
                      bold: true,
                    ),
                    const VGap(gap: 5),
                    TextRegular("You can select multiple services. "),
                  ],
                ),
              ),
              HGap(gap: 20),
              FilledButton.icon(
                onPressed:
                    () => context.router.replaceAll([OrgDashboardRoute()]),
                label: Text("Done"),
                icon: const Icon(Icons.check_circle),
              ),
              const HGap(gap: 20),
            ],
          ),

          const VGap(gap: 20),
          Expanded(
            child: BlocBuilder<
              WatchDonationServicesCubit,
              WatchDonationServicesState
            >(
              builder:
                  (context, state) => state.maybeWhen(
                    loading:
                        () => const Center(child: CircularProgressIndicator()),
                    watching:
                        (services) => ListView.builder(
                          itemCount: services.length,
                          itemBuilder:
                              (context, index) =>
                                  _ServiceCard(service: services[index]),
                        ),

                    orElse:
                        () =>
                            Center(child: TextSmall("Unknown Error Occurred")),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ServiceCard extends StatelessWidget {
  final DonationService service;

  const _ServiceCard({required this.service});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (context) =>
                  getIt<WatchServiceIsSelectedOrgCubit>()
                    ..watchServiceIsSelected(service.id),
        ),
        BlocProvider(create: (context) => getIt<UpdateOrgServiceCubit>()),
      ],
      child: BlocBuilder<WatchServiceIsSelectedOrgCubit, bool>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
            child: InkWell(
              borderRadius: BorderRadius.circular(10),
              onTap:
                  () => context.read<UpdateOrgServiceCubit>().updateOrgService(
                    service.id,
                    state,
                  ),
              child: Card(
                margin: EdgeInsets.zero,
                color:
                    state
                        ? Colors.green.withAlpha(50)
                        : Colors.white.withAlpha(50),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.network(service.icon, height: 50, width: 50),
                          const HGap(gap: 20),
                          TextMedium(service.title, bold: true),
                        ],
                      ),
                      const VGap(gap: 5),
                      Divider(),
                      const VGap(gap: 5),
                      TextSmall(service.description),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
