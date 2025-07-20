import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/core/constants.dart';
import 'package:safe_zone/injection.dart';

import 'router/app_router.dart';

@injectable
class App extends StatelessWidget {
  final AppRouter _router;
  const App._(this._router);

  @factoryMethod
  static App create(AppRouter router) {
    return App._(router);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Safe Zone",
      debugShowCheckedModeBanner: false,
      theme: FlexThemeData.light(scheme: FlexScheme.wasabi),
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.wasabi),
      themeMode:
          getIt<StakeHolder>() == StakeHolder.safeZoneUser
              ? ThemeMode.light
              : ThemeMode.dark,
      routerConfig: _router.config(),
    );
  }
}
