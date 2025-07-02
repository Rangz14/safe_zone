import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safe_zone/application/watch_user_address/watch_user_address_cubit.dart';
import 'package:safe_zone/application/watch_users/watch_users_cubit.dart';
import 'package:safe_zone/domain/town/i_town_repo.dart';
import 'package:safe_zone/domain/user/user.dart';
import 'package:safe_zone/injection.dart';
import 'package:safe_zone/presentation/widgets/space.dart';
import 'package:safe_zone/presentation/widgets/text.dart';
import 'package:safe_zone/presentation/widgets/toast.dart';

@RoutePage()
class AdminUsersPage extends StatelessWidget implements AutoRouteWrapper {
  const AdminUsersPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
    create: (context) => getIt<WatchUsersCubit>()..watchAll(),
    child: this,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Safe Zone Users')),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 40)),

          // Header Row
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextMedium("All Registered Users", bold: true),
            ),
          ),

          SliverToBoxAdapter(child: SizedBox(height: 40)),

          // Bloc Builder
          BlocConsumer<WatchUsersCubit, WatchUsersState>(
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
                  watching: (users) {
                    if (users.isEmpty) {
                      return SliverToBoxAdapter(
                        child: Center(child: Text("No users registered.")),
                      );
                    }

                    return SliverList(
                      delegate: SliverChildBuilderDelegate((context, index) {
                        return _SafeZoneUserCard(user: users[index]);
                      }, childCount: users.length),
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

class _SafeZoneUserCard extends StatelessWidget {
  final SafeZoneUser user;

  const _SafeZoneUserCard({required this.user});

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
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(user.image),
              ),
              const HGap(gap: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextMedium(user.name, bold: true),
                  TextRegular(user.phone),
                ],
              ),
              const HGap(gap: 40),
              _UserAddressWidget(userId: user.id),
              Spacer(),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: Colors.green.withAlpha(50),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.check_circle, color: Colors.green),
                      const HGap(gap: 10),
                      TextRegular("ACTIVE", bold: true),
                    ],
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

class _UserAddressWidget extends StatelessWidget {
  final String userId;

  const _UserAddressWidget({required this.userId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<WatchUserAddressCubit>()..watch(userId),
      child: BlocBuilder<WatchUserAddressCubit, WatchUserAddressState>(
        builder:
            (context, state) => state.maybeWhen(
              loading: () => TextSmall("Loading..."),
              watching: (address) {
                final town = getIt<ITownRepo>().get(address.townId);
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Colors.yellow.withAlpha(50),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.location_on, color: Colors.yellow),
                        const HGap(gap: 10),
                        TextRegular(
                          "${town.city} | ${town.town} | ${address.address}",
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
