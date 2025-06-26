// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [AdminDashboardPage]
class AdminDashboardRoute extends PageRouteInfo<void> {
  const AdminDashboardRoute({List<PageRouteInfo>? children})
    : super(AdminDashboardRoute.name, initialChildren: children);

  static const String name = 'AdminDashboardRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AdminDashboardPage();
    },
  );
}

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
/// [OrgDashboardPage]
class OrgDashboardRoute extends PageRouteInfo<void> {
  const OrgDashboardRoute({List<PageRouteInfo>? children})
    : super(OrgDashboardRoute.name, initialChildren: children);

  static const String name = 'OrgDashboardRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const OrgDashboardPage();
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
class UpdateAddressRoute extends PageRouteInfo<UpdateAddressRouteArgs> {
  UpdateAddressRoute({Key? key, List<PageRouteInfo>? children})
    : super(
        UpdateAddressRoute.name,
        args: UpdateAddressRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'UpdateAddressRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UpdateAddressRouteArgs>(
        orElse: () => const UpdateAddressRouteArgs(),
      );
      return WrappedRoute(child: UpdateAddressPage(key: args.key));
    },
  );
}

class UpdateAddressRouteArgs {
  const UpdateAddressRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'UpdateAddressRouteArgs{key: $key}';
  }
}

/// generated route for
/// [UpdateUserPage]
class UpdateUserRoute extends PageRouteInfo<UpdateUserRouteArgs> {
  UpdateUserRoute({
    Key? key,
    bool isOnboarding = false,
    List<PageRouteInfo>? children,
  }) : super(
         UpdateUserRoute.name,
         args: UpdateUserRouteArgs(key: key, isOnboarding: isOnboarding),
         initialChildren: children,
       );

  static const String name = 'UpdateUserRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UpdateUserRouteArgs>(
        orElse: () => const UpdateUserRouteArgs(),
      );
      return WrappedRoute(
        child: UpdateUserPage(key: args.key, isOnboarding: args.isOnboarding),
      );
    },
  );
}

class UpdateUserRouteArgs {
  const UpdateUserRouteArgs({this.key, this.isOnboarding = false});

  final Key? key;

  final bool isOnboarding;

  @override
  String toString() {
    return 'UpdateUserRouteArgs{key: $key, isOnboarding: $isOnboarding}';
  }
}
