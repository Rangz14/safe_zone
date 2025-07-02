import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safe_zone/application/watch_threat_categories/watch_threat_categories_cubit.dart';
import 'package:safe_zone/domain/threat/threat_category/threat_category.dart';
import 'package:safe_zone/injection.dart';
import 'package:safe_zone/presentation/router/app_router.dart';
import 'package:safe_zone/presentation/widgets/space.dart';
import 'package:safe_zone/presentation/widgets/text.dart';
import 'package:safe_zone/presentation/widgets/toast.dart';

@RoutePage()
class AdminThreatCategoriesPage extends StatelessWidget
    implements AutoRouteWrapper {
  const AdminThreatCategoriesPage({super.key});
  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
    create: (context) => getIt<WatchThreatCategoriesCubit>()..watchCategories(),
    child: this,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Threat Categories')),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 40)),

          // Header Row
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                children: [
                  TextMedium("Threat Categories", bold: true),
                  Spacer(),
                  FilledButton.icon(
                    onPressed:
                        () =>
                            context.router.push(AdminNewThreatCategoryRoute()),
                    label: Text("Add New Category"),
                    icon: Icon(Icons.add),
                  ),
                ],
              ),
            ),
          ),

          SliverToBoxAdapter(child: SizedBox(height: 40)),

          // Bloc Builder
          BlocConsumer<WatchThreatCategoriesCubit, WatchThreatCategoriesState>(
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
                          child: Text("No threat categories available."),
                        ),
                      );
                    }

                    return SliverList(
                      delegate: SliverChildBuilderDelegate((context, index) {
                        final service = services[index];
                        return ThreatCategoryCard(category: service);
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

class ThreatCategoryCard extends StatelessWidget {
  final ThreatCategory category;

  const ThreatCategoryCard({super.key, required this.category});

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
                  Image.network(category.icon, width: 50, height: 50),
                  const HGap(gap: 10),
                  TextMedium(category.name, bold: true),
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
              TextRegular(category.description, overflow: true, maxLines: 3),
            ],
          ),
        ),
      ),
    );
  }
}
