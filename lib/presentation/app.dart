import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safe_zone/application/auth/auth_cubit.dart';
import 'package:safe_zone/injection.dart';

import 'router/app_router.dart';

class App extends StatelessWidget {
  App({super.key});

  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthCubit>(),
      child: MaterialApp.router(
        title: "Safe Zone",
        debugShowCheckedModeBanner: false,
        theme: FlexThemeData.light(scheme: FlexScheme.wasabi),
        darkTheme: FlexThemeData.dark(scheme: FlexScheme.wasabi),
        themeMode: ThemeMode.system,
        routerConfig: _router.config(),
      ),
    );
  }
}
