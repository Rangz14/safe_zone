import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safe_zone/application/auth/auth_cubit.dart';
import 'package:safe_zone/application/update_org/update_org_cubit.dart';
import 'package:safe_zone/application/upload_org_images/upload_org_images_cubit.dart';
import 'package:safe_zone/core/constants.dart';
import 'package:safe_zone/core/mutable_object.dart';
import 'package:safe_zone/domain/organization/organization.dart';
import 'package:safe_zone/injection.dart';
import 'package:safe_zone/presentation/router/app_router.dart';
import 'package:safe_zone/presentation/widgets/space.dart';
import 'package:safe_zone/presentation/widgets/text.dart';
import 'package:safe_zone/presentation/widgets/toast.dart';

@RoutePage()
class UpdateOrgPage extends StatelessWidget implements AutoRouteWrapper {
  const UpdateOrgPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) =>
      BlocProvider(create: (context) => getIt<UpdateOrgCubit>(), child: this);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder:
          (context, state) => state.maybeWhen(
            orElse: () => Center(child: CircularProgressIndicator()),
            authenticatedOrg:
                (org) => UpdateOrgForm(organization: MutableObject(org)),
            requireRegOrg:
                (orgId, phone) => UpdateOrgForm(
                  organization: MutableObject(
                    Organization.empty().copyWith(id: orgId, phone: phone),
                  ),
                ),
          ),
    );
  }
}

class UpdateOrgForm extends StatelessWidget {
  final MutableObject<Organization> organization;
  const UpdateOrgForm({super.key, required this.organization});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocListener<UpdateOrgCubit, UpdateOrgState>(
      listener:
          (context, state) => state.maybeWhen(
            succeed: () => context.router.replaceAll([UpdateOrgAddressRoute()]),
            failed: (message) => showFailedToast(context, message),
            orElse: () => Unit,
          ),
      child: Scaffold(
        appBar: AppBar(title: const Text("Update Organization Details")),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 200),
          child: Column(
            children: [
              const VGap(gap: 20),
              UploadCover(
                onUploaded:
                    (image) =>
                        organization.value = organization.value.copyWith(
                          coverImage: image,
                        ),
              ),
              const VGap(gap: 20),
              UploadLogo(
                onUploaded:
                    (image) =>
                        organization.value = organization.value.copyWith(
                          logo: image,
                        ),
              ),
              const VGap(gap: 40),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 200),
                padding: const EdgeInsets.all(40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: theme.colorScheme.surfaceContainer,
                ),
                child: Column(
                  children: [
                    TextRegular("Your Organization Phone 011 1234567"),
                    const VGap(gap: 40),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Organization Name",
                      ),
                      initialValue: organization.value.name,
                      onChanged:
                          (value) =>
                              organization.value = organization.value.copyWith(
                                name: value,
                              ),
                    ),
                    const VGap(gap: 20),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Organization Email",
                      ),
                      initialValue: organization.value.email,
                      onChanged:
                          (value) =>
                              organization.value = organization.value.copyWith(
                                email: value,
                              ),
                    ),
                    const VGap(gap: 20),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Organization Website",
                      ),
                      initialValue: organization.value.website,
                      onChanged:
                          (value) =>
                              organization.value = organization.value.copyWith(
                                website: value,
                              ),
                    ),
                    const VGap(gap: 20),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Organization Description",
                      ),
                      maxLines: 3,
                      initialValue: organization.value.description,
                      onChanged:
                          (value) =>
                              organization.value = organization.value.copyWith(
                                description: value,
                              ),
                    ),
                    const VGap(gap: 40),
                    BlocBuilder<UpdateOrgCubit, UpdateOrgState>(
                      builder:
                          (context, state) => state.maybeWhen(
                            loading: () => CircularProgressIndicator(),
                            orElse:
                                () => FilledButton(
                                  onPressed:
                                      () => context
                                          .read<UpdateOrgCubit>()
                                          .update(organization.value),
                                  child: Text("Update Organization Details"),
                                ),
                          ),
                    ),
                  ],
                ),
              ),
              const VGap(gap: 40),
            ],
          ),
        ),
      ),
    );
  }
}

class UploadLogo extends StatelessWidget {
  final Function(String downloadUrl) onUploaded;
  const UploadLogo({super.key, required this.onUploaded});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocProvider(
      create: (context) => getIt<UploadOrgImagesCubit>(),
      child: BlocConsumer<UploadOrgImagesCubit, UploadOrgImagesState>(
        listener:
            (context, state) => state.maybeWhen(
              uploaded: (downloadUrl) => onUploaded(downloadUrl),
              failed: (message) => showFailedToast(context, message),
              orElse: () => Unit,
            ),
        builder:
            (context, state) => state.maybeWhen(
              uploaded:
                  (downloadUrl) => InkWell(
                    customBorder: CircleBorder(),
                    onTap:
                        () => context.read<UploadOrgImagesCubit>().upload(
                          UploadImageType.logo,
                        ),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: theme.colorScheme.surfaceContainer,
                      backgroundImage: NetworkImage(downloadUrl),
                    ),
                  ),
              uploading:
                  () => CircleAvatar(
                    radius: 50,
                    backgroundColor: theme.colorScheme.surfaceContainer,
                    child: Center(child: CircularProgressIndicator()),
                  ),
              orElse:
                  () => InkWell(
                    customBorder: CircleBorder(),
                    onTap:
                        () => context.read<UploadOrgImagesCubit>().upload(
                          UploadImageType.logo,
                        ),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: theme.colorScheme.surfaceContainer,
                      child: Icon(
                        Icons.image,
                        size: 50,
                        color: theme.colorScheme.onPrimaryContainer,
                      ),
                    ),
                  ),
            ),
      ),
    );
  }
}

class UploadCover extends StatelessWidget {
  final Function(String downloadUrl) onUploaded;
  final String? initialImageUrl;

  const UploadCover({
    super.key,
    required this.onUploaded,
    this.initialImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocProvider(
      create: (context) => getIt<UploadOrgImagesCubit>(),
      child: BlocConsumer<UploadOrgImagesCubit, UploadOrgImagesState>(
        listener:
            (context, state) => state.maybeWhen(
              uploaded: (downloadUrl) => onUploaded(downloadUrl),
              failed: (message) => showFailedToast(context, message),
              orElse: () => Unit,
            ),
        builder:
            (context, state) => state.maybeWhen(
              uploaded:
                  (downloadUrl) => InkWell(
                    customBorder: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    onTap:
                        () => context.read<UploadOrgImagesCubit>().upload(
                          UploadImageType.cover,
                        ),
                    child: Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.surfaceContainer,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: NetworkImage(downloadUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
              uploading:
                  () => Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.surfaceContainer,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(child: CircularProgressIndicator()),
                  ),
              orElse:
                  () => InkWell(
                    customBorder: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    onTap:
                        () => context.read<UploadOrgImagesCubit>().upload(
                          UploadImageType.cover,
                        ),
                    child: Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.surfaceContainer,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.image,
                        size: 50,
                        color: theme.colorScheme.onPrimaryContainer,
                      ),
                    ),
                  ),
            ),
      ),
    );
  }
}
