import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';
import 'package:safe_zone/application/new_threat/new_threat_cubit.dart';
import 'package:safe_zone/application/select_threat_category/select_threat_category_cubit.dart';
import 'package:safe_zone/application/select_threat_time/select_threat_time_cubit.dart';
import 'package:safe_zone/application/select_town/select_town_cubit.dart';
import 'package:safe_zone/application/watch_threat_categories/watch_threat_categories_cubit.dart';
import 'package:safe_zone/core/constants.dart';
import 'package:safe_zone/core/extensions/dartz_x.dart';
import 'package:safe_zone/core/mutable_object.dart';
import 'package:safe_zone/domain/threat/threat.dart';
import 'package:safe_zone/domain/threat/threat_category/threat_category.dart';
import 'package:safe_zone/injection.dart';
import 'package:safe_zone/presentation/widgets/select_down_widget.dart';
import 'package:safe_zone/presentation/widgets/space.dart';
import 'package:safe_zone/presentation/widgets/text.dart';
import 'package:safe_zone/presentation/widgets/toast.dart';

@RoutePage()
class AdminNewThreatPage extends StatelessWidget implements AutoRouteWrapper {
  AdminNewThreatPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) => MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => getIt<NewThreatCubit>()),
      BlocProvider(create: (context) => getIt<SelectTownCubit>()),
      BlocProvider(
        create:
            (context) => getIt<WatchThreatCategoriesCubit>()..watchCategories(),
      ),
      BlocProvider(create: (context) => getIt<SelectThreatCategoryCubit>()),
      BlocProvider(create: (context) => getIt<SelectThreatTimeCubit>()),
    ],
    child: this,
  );

  final MutableObject<SafeZoneThreat> threat = MutableObject(
    SafeZoneThreat.empty(),
  );

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<NewThreatCubit, NewThreatState>(
          listener: (context, state) {
            state.maybeWhen(
              failed: (message) => showFailedToast(context, message),
              succeed: () => context.router.maybePop(),
              orElse: () => Unit,
            );
          },
        ),
        BlocListener<SelectThreatCategoryCubit, Option<String>>(
          listener:
              (context, state) => state.fold(
                () => Unit,
                (categoryId) =>
                    threat.value = threat.value.copyWith(
                      categoryId: categoryId,
                    ),
              ),
        ),
        BlocListener<SelectTownCubit, SelectTownState>(
          listener: (context, state) {
            if (state.selectedTown.isSome()) {
              threat.value = threat.value.copyWith(
                townId: state.selectedTown.getOrCrash().id,
              );
            }
          },
        ),
        BlocListener<SelectThreatTimeCubit, Option<DateTime>>(
          listener:
              (context, state) => state.fold(
                () => Unit,
                (time) =>
                    threat.value = threat.value.copyWith(
                      startedAt: time.millisecondsSinceEpoch,
                    ),
              ),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(title: const Text('Add New Threat')),

        body: Column(
          children: [
            const VGap(gap: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(40),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            TextMedium('Selected Threat Category', bold: true),
                            const VGap(gap: 20),
                            _ThreatCategoriesList(),
                          ],
                        ),
                      ),
                      const HGap(gap: 40),
                      Expanded(
                        child: Column(
                          children: [
                            TextMedium('Select Location & Time', bold: true),
                            TownSelect(
                              type: SelectTownFieldType.province,
                              hint: "Select Province",
                            ),
                            const VGap(gap: 20),
                            TownSelect(
                              type: SelectTownFieldType.district,
                              hint: "Select District",
                            ),
                            const VGap(gap: 20),
                            TownSelect(
                              type: SelectTownFieldType.city,
                              hint: "Select City",
                            ),
                            const VGap(gap: 20),
                            TownSelect(
                              type: SelectTownFieldType.town,
                              hint: "Select Town",
                            ),
                            const VGap(gap: 20),
                            _SelectStartedAt(),
                            const VGap(gap: 20),
                            Align(
                              alignment: Alignment.centerRight,
                              child: BlocBuilder<
                                NewThreatCubit,
                                NewThreatState
                              >(
                                builder:
                                    (context, state) => state.maybeWhen(
                                      loading:
                                          () => CircularProgressIndicator(),
                                      orElse:
                                          () => FilledButton.icon(
                                            onPressed:
                                                () => context
                                                    .read<NewThreatCubit>()
                                                    .createThreat(threat.value),
                                            label: Text('Submit Threat Now'),
                                            icon: const Icon(Icons.public),
                                          ),
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ThreatCategoriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WatchThreatCategoriesCubit, WatchThreatCategoriesState>(
      builder:
          (context, state) => state.maybeWhen(
            loading: () => Center(child: CircularProgressIndicator()),
            watching:
                (categories) => Column(
                  children:
                      categories
                          .map(
                            (category) =>
                                _ThreatCategoryCard(category: category),
                          )
                          .toList(),
                ),

            orElse: () => SizedBox(),
          ),
    );
  }
}

class _ThreatCategoryCard extends StatelessWidget {
  final ThreatCategory category;

  const _ThreatCategoryCard({required this.category});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<SelectThreatCategoryCubit, Option<String>>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
          child: InkWell(
            customBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            onTap:
                () => context.read<SelectThreatCategoryCubit>().selectCategory(
                  category.id,
                ),

            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(
                  color:
                      state.isNone()
                          ? theme.colorScheme.outline
                          : state.getOrCrash() == category.id
                          ? Colors.green
                          : theme.colorScheme.outline,
                ),
              ),
              margin: const EdgeInsets.all(0),
              color:
                  state.isNone()
                      ? theme.colorScheme.surfaceContainer
                      : state.getOrCrash() == category.id
                      ? Colors.green.withAlpha(50)
                      : theme.colorScheme.surfaceContainer,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Image.network(category.icon, width: 40, height: 40),
                    const HGap(gap: 20),
                    Expanded(child: TextRegular(category.name, bold: true)),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _SelectStartedAt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectThreatTimeCubit, Option<DateTime>>(
      builder: (context, state) {
        return TextButton(
          onPressed: () {
            DatePicker.showDateTimePicker(
              context,
              showTitleActions: true,
              onConfirm: (date) {
                context.read<SelectThreatTimeCubit>().selectTime(date);
              },
              currentTime: DateTime.now(),
            );
          },
          child: Text(
            state.fold(
              () => 'Select Threat Time',
              (time) => 'Selected Time: ${time.toLocal()}',
            ),
            style: TextStyle(color: Colors.blue),
          ),
        );
      },
    );
  }
}
