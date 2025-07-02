import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safe_zone/application/auth/auth_cubit.dart';
import 'package:safe_zone/presentation/router/app_router.dart';
import 'package:safe_zone/presentation/widgets/toast.dart';

@RoutePage()
class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          authenticatedAdmin:
              () => context.router.replaceAll([AdminDashboardRoute()]),
          authenticatedOrg:
              (org) => context.router.replaceAll([OrgDashboardRoute()]),
          authenticatedUser: (user) => context.router.replaceAll([HomeRoute()]),
          unAuthenticated: () => context.router.replaceAll([SigninRoute()]),
          requireRegUser:
              (_, _) => context.router.replaceAll([
                UpdateUserRoute(isOnboarding: true),
              ]),
          requireRegOrg:
              (uid, phone) => context.router.replaceAll([UpdateOrgRoute()]),
          failed: (message) => showFailedToast(context, message),
          orElse: () => Unit,
        );
      },
      child: Scaffold(
        body: Center(
          child: Image.asset("assets/images/logo.png", width: 100, height: 100),
        ),
      ),
    );
  }
}
