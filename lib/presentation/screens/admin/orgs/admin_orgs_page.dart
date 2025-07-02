import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safe_zone/application/watch_org_address/watch_org_address_cubit.dart';
import 'package:safe_zone/application/watch_org_bank_details/watch_org_bank_details_cubit.dart';
import 'package:safe_zone/application/watch_org_ratings/watch_org_ratings_cubit.dart';
import 'package:safe_zone/application/watch_orgs/watch_orgs_cubit.dart';
import 'package:safe_zone/domain/organization/organization.dart';
import 'package:safe_zone/domain/organization/rating/rating.dart';
import 'package:safe_zone/domain/town/i_town_repo.dart';
import 'package:safe_zone/injection.dart';
import 'package:safe_zone/presentation/widgets/space.dart';
import 'package:safe_zone/presentation/widgets/text.dart';
import 'package:safe_zone/presentation/widgets/toast.dart';

@RoutePage()
class AdminOrgsPage extends StatelessWidget implements AutoRouteWrapper {
  const AdminOrgsPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
    create: (context) => getIt<WatchOrgsCubit>()..watchAll(),
    child: this,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Organizations')),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 40)),

          // Header Row
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextMedium("All Registered Organizations", bold: true),
            ),
          ),

          SliverToBoxAdapter(child: SizedBox(height: 40)),

          // Bloc Builder
          BlocConsumer<WatchOrgsCubit, WatchOrgsState>(
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
                  watching: (organizations) {
                    if (organizations.isEmpty) {
                      return SliverToBoxAdapter(
                        child: Center(
                          child: Text("No organization registered."),
                        ),
                      );
                    }

                    return SliverList(
                      delegate: SliverChildBuilderDelegate((context, index) {
                        final org = organizations[index];
                        return _OrganizationCard(organization: org);
                      }, childCount: organizations.length),
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

class _OrganizationCard extends StatelessWidget {
  final Organization organization;

  const _OrganizationCard({required this.organization});

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
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(organization.logo),
                  ),
                  const HGap(gap: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextLarge(organization.name, bold: true),
                      TextRegular(organization.email),
                    ],
                  ),
                  const Spacer(),
                  OrgRatingsWidget(orgId: organization.id),
                ],
              ),
              const VGap(gap: 5),
              Divider(),
              const VGap(gap: 5),

              SizedBox(
                height: 200,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Flexible(
                      child: OrgDetailsWidget(organization: organization),
                    ),
                    const HGap(gap: 20),
                    Flexible(child: OrgAddressWidget(orgId: organization.id)),
                    const HGap(gap: 20),
                    Flexible(
                      child: OrgBankDetailsWidget(orgId: organization.id),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
              const VGap(gap: 5),
              Divider(),
              const VGap(gap: 5),
              TextRegular(
                organization.description,
                overflow: true,
                maxLines: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OrgDetailsWidget extends StatelessWidget {
  final Organization organization;

  const OrgDetailsWidget({super.key, required this.organization});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: Colors.green.withAlpha(25),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextRegular(organization.email),
                  TextRegular(organization.phone),
                  TextRegular(organization.website),
                ],
              ),
            ),

            Divider(color: Colors.green),
            const VGap(gap: 5),
            Row(
              children: [
                Icon(Icons.business, color: Colors.green),
                const HGap(gap: 10),
                TextRegular(organization.name, bold: true),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class OrgAddressWidget extends StatelessWidget {
  final String orgId;

  const OrgAddressWidget({super.key, required this.orgId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<WatchOrgAddressCubit>()..watchByOrgId(orgId),
      child: BlocBuilder<WatchOrgAddressCubit, WatchOrgAddressState>(
        builder:
            (context, state) => state.maybeWhen(
              loading: () => TextSmall("Loading..."),
              watching: (address) {
                final town = getIt<ITownRepo>().get(address.townId);
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Colors.blue.withAlpha(25),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              TextRegular(town.province),
                              TextRegular(town.city),
                              TextRegular(town.town),
                              TextRegular(address.address),
                            ],
                          ),
                        ),

                        Divider(color: Colors.blue),
                        const VGap(gap: 5),
                        Row(
                          children: [
                            Icon(Icons.location_on, color: Colors.blue),
                            const HGap(gap: 10),
                            TextRegular("Organization Address", bold: true),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
              orElse: () => TextMedium("Failed to load address."),
            ),
      ),
    );
  }
}

class OrgBankDetailsWidget extends StatelessWidget {
  final String orgId;

  const OrgBankDetailsWidget({super.key, required this.orgId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) => getIt<WatchOrgBankDetailsCubit>()..watchByOrgId(orgId),
      child: BlocBuilder<WatchOrgBankDetailsCubit, WatchOrgBankDetailsState>(
        builder:
            (context, state) => state.maybeWhen(
              loading: () => TextSmall("Loading..."),
              watching: (bankDetails) {
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Colors.yellow.withAlpha(25),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextRegular(bankDetails.accountName),
                              TextRegular(bankDetails.bankName),
                              TextRegular(bankDetails.accountNumber),
                              TextRegular(bankDetails.bankBranch),
                            ],
                          ),
                        ),

                        Divider(color: Colors.yellow),
                        const VGap(gap: 5),
                        Row(
                          children: [
                            Icon(Icons.account_balance, color: Colors.yellow),
                            const HGap(gap: 10),
                            TextRegular("Bank Details", bold: true),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
              orElse: () => TextMedium("Failed to load bank details."),
            ),
      ),
    );
  }
}

class OrgRatingsWidget extends StatelessWidget {
  final String orgId;

  const OrgRatingsWidget({super.key, required this.orgId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<WatchOrgRatingsCubit>()..watchByOrgId(orgId),
      child: BlocBuilder<WatchOrgRatingsCubit, WatchOrgRatingsState>(
        builder:
            (context, state) => state.maybeWhen(
              loading: () => TextSmall("Loading..."),
              watching: (ratings) {
                final (total, average) = OrganizationRating.summarized(ratings);
                return Row(
                  children: [
                    TextRegular("($total)"),
                    const HGap(gap: 20),
                    RatingStars(rating: average),
                  ],
                );
              },
              orElse: () => TextMedium("Failed to load ratings."),
            ),
      ),
    );
  }
}

class RatingStars extends StatelessWidget {
  final double rating;

  const RatingStars({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    final fullStars = rating.floor();
    final halfStar = (rating - fullStars) >= 0.5 ? 1 : 0;
    final emptyStars = 5 - fullStars - halfStar;

    return Row(
      children: [
        ...List.generate(
          fullStars,
          (_) => Icon(Icons.star, color: Colors.amber),
        ),
        ...List.generate(
          halfStar,
          (_) => Icon(Icons.star_half, color: Colors.amber),
        ),
        ...List.generate(
          emptyStars,
          (_) => Icon(Icons.star_border, color: Colors.amber),
        ),
      ],
    );
  }
}
