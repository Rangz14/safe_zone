import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safe_zone/application/auth/auth_cubit.dart';
import 'package:safe_zone/application/update_user/update_user_cubit.dart';
import 'package:safe_zone/application/upload_user_image/upload_user_image_cubit.dart';
import 'package:safe_zone/core/mutable_object.dart';
import 'package:safe_zone/domain/user/user.dart';
import 'package:safe_zone/injection.dart';
import 'package:safe_zone/presentation/router/app_router.dart';
import 'package:safe_zone/presentation/widgets/space.dart';
import 'package:safe_zone/presentation/widgets/text.dart';
import 'package:safe_zone/presentation/widgets/toast.dart';

@RoutePage()
class UpdateUserPage extends StatelessWidget implements AutoRouteWrapper {
  final bool isOnboarding;
  @override
  Widget wrappedRoute(BuildContext context) => MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => getIt<UpdateUserCubit>()),
      BlocProvider(create: (context) => getIt<UploadUserImageCubit>()),
    ],
    child: this,
  );

  UpdateUserPage({super.key, this.isOnboarding = false});

  final MutableObject<SafeZoneUser> user = MutableObject(
    SafeZoneUser.init("", "", ""),
  );

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<UploadUserImageCubit, UploadUserImageState>(
          listener: (context, state) {
            state.maybeWhen(
              uploaded: (imageUrl) {
                user.value = user.value.copyWith(image: imageUrl);
              },
              failed: (message) => showFailedToast(context, message),
              orElse: () {},
            );
          },
        ),
        BlocListener<UpdateUserCubit, UpdateUserState>(
          listener: (context, state) {
            state.maybeWhen(
              succeed: () {
                if (isOnboarding) {
                  context.router.replaceAll([UpdateAddressRoute()]);
                  return;
                }
                context.router.maybePop();
              },
              failed: (message) => showFailedToast(context, message),
              orElse: () {},
            );
          },
        ),
      ],
      child: Scaffold(
        appBar: AppBar(title: Text('Update User')),
        body: BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) {
            return state.maybeWhen(
              requireRegUser: (uid, phone) {
                user.value = user.value.copyWith(id: uid, phone: phone);
                return SingleChildScrollView(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                        onTap:
                            () => context
                                .read<UploadUserImageCubit>()
                                .uploadUserImage(user.value.id),
                        customBorder: CircleBorder(),
                        child: BlocBuilder<
                          UploadUserImageCubit,
                          UploadUserImageState
                        >(
                          builder:
                              (context, state) => state.maybeWhen(
                                uploaded:
                                    (imageUrl) => UserAvatar(
                                      id: user.value.id,
                                      image: imageUrl,
                                    ),
                                uploading:
                                    () => UserAvatar(
                                      id: user.value.id,
                                      isLoading: true,
                                    ),
                                orElse: () => UserAvatar(id: user.value.id),
                              ),
                        ),
                      ),
                      const VGap(gap: 40),
                      TextRegular("Your Phone: $phone"),
                      const VGap(gap: 40),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Enter your name',
                        ),
                        onChanged:
                            (value) =>
                                user.value = user.value.copyWith(name: value),
                      ),
                      const VGap(gap: 40),
                      BlocBuilder<UpdateUserCubit, UpdateUserState>(
                        builder: (context, state) {
                          return state.maybeWhen(
                            loading: () => CircularProgressIndicator(),
                            orElse:
                                () => FilledButton(
                                  onPressed:
                                      () => context
                                          .read<UpdateUserCubit>()
                                          .updateUser(user.value),
                                  child: Text('Update'),
                                ),
                          );
                        },
                      ),
                      const VGap(gap: 40),
                    ],
                  ),
                );
              },

              orElse: () => SizedBox(),
            );
          },
        ),
      ),
    );
  }
}

class UserAvatar extends StatelessWidget {
  final String? image;
  final bool isLoading;
  final String id;

  const UserAvatar({
    super.key,
    this.image,
    this.isLoading = false,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    if (isLoading) {
      return CircleAvatar(
        backgroundColor: theme.primaryColorLight,
        radius: 50,
        child: CircularProgressIndicator(),
      );
    }
    return InkWell(
      onTap: () => context.read<UploadUserImageCubit>().uploadUserImage(id),
      customBorder: CircleBorder(),
      child: CircleAvatar(
        backgroundImage: image != null ? NetworkImage(image!) : null,
        radius: 50,
        child: image == null ? Icon(Icons.person, size: 50) : null,
      ),
    );
  }
}
