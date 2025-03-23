// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomePage();
    },
  );
}

/// generated route for
/// [LandingPage]
class LandingRoute extends PageRouteInfo<void> {
  const LandingRoute({List<PageRouteInfo>? children})
    : super(LandingRoute.name, initialChildren: children);

  static const String name = 'LandingRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LandingPage();
    },
  );
}

/// generated route for
/// [SigninPage]
class SigninRoute extends PageRouteInfo<void> {
  const SigninRoute({List<PageRouteInfo>? children})
    : super(SigninRoute.name, initialChildren: children);

  static const String name = 'SigninRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const SigninPage());
    },
  );
}

/// generated route for
/// [UpdateAddressPage]
class UpdateAddressRoute extends PageRouteInfo<void> {
  const UpdateAddressRoute({List<PageRouteInfo>? children})
    : super(UpdateAddressRoute.name, initialChildren: children);

  static const String name = 'UpdateAddressRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const UpdateAddressPage();
    },
  );
}

/// generated route for
/// [UpdateUserPage]
class UpdateUserRoute extends PageRouteInfo<void> {
  const UpdateUserRoute({List<PageRouteInfo>? children})
    : super(UpdateUserRoute.name, initialChildren: children);

  static const String name = 'UpdateUserRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const UpdateUserPage();
    },
  );
}
