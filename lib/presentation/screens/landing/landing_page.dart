import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safe_zone/application/auth/auth_cubit.dart';
import 'package:safe_zone/presentation/router/app_router.dart';

@RoutePage()
class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          authenticated: (user) => context.router.replaceAll([HomeRoute()]),
          unAuthenticated: () => context.router.replaceAll([SigninRoute()]),
          orElse: () {},
        );
      },
      child: Scaffold(body: Center(child: Text("SAFE ZONE"))),
    );
  }
}
