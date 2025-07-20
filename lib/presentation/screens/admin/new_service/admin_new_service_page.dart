import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safe_zone/application/new_donation_service/new_donation_service_cubit.dart';
import 'package:safe_zone/application/upload_donation_service_icon/upload_donation_service_icon_cubit.dart';
import 'package:safe_zone/core/mutable_object.dart';
import 'package:safe_zone/domain/service/service.dart';
import 'package:safe_zone/injection.dart';
import 'package:safe_zone/presentation/widgets/space.dart';
import 'package:safe_zone/presentation/widgets/toast.dart';

@RoutePage()
class AdminNewServicePage extends StatelessWidget implements AutoRouteWrapper {
  AdminNewServicePage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
    create: (context) => getIt<NewDonationServiceCubit>(),
    child: this,
  );

  final MutableObject<DonationService> service = MutableObject(
    DonationService.empty(),
  );

  @override
  Widget build(BuildContext context) {
    return BlocListener<NewDonationServiceCubit, NewDonationServiceState>(
      listener:
          (context, state) => state.maybeWhen(
            succeed: () => context.router.maybePop(),
            failed: (message) => showFailedToast(context, message),
            orElse: () => Unit,
          ),
      child: Scaffold(
        appBar: AppBar(title: const Text('Create New Donation Service')),
        body: SingleChildScrollView(
          child: Card(
            margin: const EdgeInsets.symmetric(horizontal: 400, vertical: 40),
            child: Padding(
              padding: const EdgeInsets.all(40),

              child: Column(
                children: [
                  UploadDonationServiceIcon(
                    onUploaded:
                        (downloadUrl) =>
                            service.value = service.value.copyWith(
                              icon: downloadUrl,
                            ),
                  ),
                  const VGap(gap: 40),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Service Title'),
                    onChanged:
                        (value) =>
                            service.value = service.value.copyWith(
                              title: value,
                            ),
                  ),

                  const VGap(gap: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Approximate Unit Cost',
                    ),
                    keyboardType: TextInputType.number,
                    onChanged:
                        (value) =>
                            service.value = service.value.copyWith(
                              approximateUnitPrice: int.tryParse(value) ?? 0,
                            ),
                  ),
                  const VGap(gap: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Service Description',
                    ),
                    onChanged:
                        (value) =>
                            service.value = service.value.copyWith(
                              description: value,
                            ),
                  ),
                  const VGap(gap: 20),
                  BlocBuilder<NewDonationServiceCubit, NewDonationServiceState>(
                    builder:
                        (context, state) => state.maybeWhen(
                          loading:
                              () => Center(child: CircularProgressIndicator()),
                          orElse:
                              () => FilledButton(
                                onPressed: () {
                                  context
                                      .read<NewDonationServiceCubit>()
                                      .createDonationService(service.value);
                                },
                                child: const Text('Create Service'),
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

class UploadDonationServiceIcon extends StatelessWidget {
  final Function(String downloadUrl) onUploaded;

  const UploadDonationServiceIcon({super.key, required this.onUploaded});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocProvider(
      create: (context) => getIt<UploadDonationServiceIconCubit>(),
      child: BlocConsumer<
        UploadDonationServiceIconCubit,
        UploadDonationServiceIconState
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
                                .read<UploadDonationServiceIconCubit>()
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
