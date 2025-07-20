import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safe_zone/application/new_threat_category/new_threat_category_cubit.dart';
import 'package:safe_zone/application/upload_threat_category_icon/upload_threat_category_icon_cubit.dart';
import 'package:safe_zone/core/mutable_object.dart';
import 'package:safe_zone/domain/threat/threat_category/threat_category.dart';
import 'package:safe_zone/injection.dart';
import 'package:safe_zone/presentation/widgets/space.dart';
import 'package:safe_zone/presentation/widgets/toast.dart';

@RoutePage()
class AdminNewThreatCategoryPage extends StatelessWidget
    implements AutoRouteWrapper {
  AdminNewThreatCategoryPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
    create: (context) => getIt<NewThreatCategoryCubit>(),
    child: this,
  );

  final MutableObject<ThreatCategory> category = MutableObject(
    ThreatCategory.empty(),
  );

  @override
  Widget build(BuildContext context) {
    return BlocListener<NewThreatCategoryCubit, NewThreatCategoryState>(
      listener:
          (context, state) => state.maybeWhen(
            succeed: () => context.router.maybePop(),
            failed: (message) => showFailedToast(context, message),
            orElse: () => Unit,
          ),
      child: Scaffold(
        appBar: AppBar(title: const Text('Create New Threat Category')),
        body: SingleChildScrollView(
          child: Card(
            margin: const EdgeInsets.symmetric(horizontal: 400, vertical: 40),
            child: Padding(
              padding: const EdgeInsets.all(40),

              child: Column(
                children: [
                  UploadThreatCategoryIcon(
                    onUploaded:
                        (downloadUrl) =>
                            category.value = category.value.copyWith(
                              icon: downloadUrl,
                            ),
                  ),
                  const VGap(gap: 40),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Category Title'),
                    onChanged:
                        (value) =>
                            category.value = category.value.copyWith(
                              name: value,
                            ),
                  ),

                  const VGap(gap: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Category Description',
                    ),
                    onChanged:
                        (value) =>
                            category.value = category.value.copyWith(
                              description: value,
                            ),
                  ),
                  const VGap(gap: 20),
                  BlocBuilder<NewThreatCategoryCubit, NewThreatCategoryState>(
                    builder:
                        (context, state) => state.maybeWhen(
                          loading:
                              () => Center(child: CircularProgressIndicator()),
                          orElse:
                              () => FilledButton(
                                onPressed: () {
                                  context
                                      .read<NewThreatCategoryCubit>()
                                      .createCategory(category.value);
                                },
                                child: const Text('Create Category'),
                              ),
                        ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class UploadThreatCategoryIcon extends StatelessWidget {
  final Function(String downloadUrl) onUploaded;

  const UploadThreatCategoryIcon({super.key, required this.onUploaded});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocProvider(
      create: (context) => getIt<UploadThreatCategoryIconCubit>(),
      child: BlocConsumer<
        UploadThreatCategoryIconCubit,
        UploadThreatCategoryIconState
      >(
        listener:
            (context, state) => state.maybeWhen(
              uploaded: (downloadUrl) => onUploaded(downloadUrl),
              orElse: () => Unit,
            ),
        builder:
            (context, state) => state.maybeWhen(
              uploaded:
                  (downloadUrl) => CircleAvatar(
                    radius: 50,
                    backgroundColor: theme.colorScheme.surfaceContainer,
                    backgroundImage: NetworkImage(downloadUrl),
                  ),
              uploading:
                  () => Center(
                    child: CircularProgressIndicator(
                      color: theme.colorScheme.primary,
                    ),
                  ),
              orElse:
                  () => InkWell(
                    onTap:
                        () =>
                            context
                                .read<UploadThreatCategoryIconCubit>()
                                .uploadIcon(),
                    customBorder: CircleBorder(),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: theme.colorScheme.surfaceContainer,
                      child: Icon(
                        Icons.image,
                        color: theme.colorScheme.onSurface,
                        size: 30,
                      ),
                    ),
                  ),
            ),
      ),
    );
  }
}
