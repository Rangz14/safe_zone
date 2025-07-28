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
      return WrappedRoute(child: const AdminDashboardPage());
    },
  );
}

/// generated route for
/// [AdminDonationServicesPage]
class AdminDonationServicesRoute extends PageRouteInfo<void> {
  const AdminDonationServicesRoute({List<PageRouteInfo>? children})
    : super(AdminDonationServicesRoute.name, initialChildren: children);

  static const String name = 'AdminDonationServicesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const AdminDonationServicesPage());
    },
  );
}

/// generated route for
/// [AdminNewServicePage]
class AdminNewServiceRoute extends PageRouteInfo<AdminNewServiceRouteArgs> {
  AdminNewServiceRoute({Key? key, List<PageRouteInfo>? children})
    : super(
        AdminNewServiceRoute.name,
        args: AdminNewServiceRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'AdminNewServiceRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AdminNewServiceRouteArgs>(
        orElse: () => const AdminNewServiceRouteArgs(),
      );
      return WrappedRoute(child: AdminNewServicePage(key: args.key));
    },
  );
}

class AdminNewServiceRouteArgs {
  const AdminNewServiceRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'AdminNewServiceRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! AdminNewServiceRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [AdminNewThreatCategoryPage]
class AdminNewThreatCategoryRoute
    extends PageRouteInfo<AdminNewThreatCategoryRouteArgs> {
  AdminNewThreatCategoryRoute({Key? key, List<PageRouteInfo>? children})
    : super(
        AdminNewThreatCategoryRoute.name,
        args: AdminNewThreatCategoryRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'AdminNewThreatCategoryRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AdminNewThreatCategoryRouteArgs>(
        orElse: () => const AdminNewThreatCategoryRouteArgs(),
      );
      return WrappedRoute(child: AdminNewThreatCategoryPage(key: args.key));
    },
  );
}

class AdminNewThreatCategoryRouteArgs {
  const AdminNewThreatCategoryRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'AdminNewThreatCategoryRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! AdminNewThreatCategoryRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [AdminNewThreatPage]
class AdminNewThreatRoute extends PageRouteInfo<AdminNewThreatRouteArgs> {
  AdminNewThreatRoute({Key? key, List<PageRouteInfo>? children})
    : super(
        AdminNewThreatRoute.name,
        args: AdminNewThreatRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'AdminNewThreatRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AdminNewThreatRouteArgs>(
        orElse: () => const AdminNewThreatRouteArgs(),
      );
      return WrappedRoute(child: AdminNewThreatPage(key: args.key));
    },
  );
}

class AdminNewThreatRouteArgs {
  const AdminNewThreatRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'AdminNewThreatRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! AdminNewThreatRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [AdminOrgsPage]
class AdminOrgsRoute extends PageRouteInfo<void> {
  const AdminOrgsRoute({List<PageRouteInfo>? children})
    : super(AdminOrgsRoute.name, initialChildren: children);

  static const String name = 'AdminOrgsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const AdminOrgsPage());
    },
  );
}

/// generated route for
/// [AdminThreatCategoriesPage]
class AdminThreatCategoriesRoute extends PageRouteInfo<void> {
  const AdminThreatCategoriesRoute({List<PageRouteInfo>? children})
    : super(AdminThreatCategoriesRoute.name, initialChildren: children);

  static const String name = 'AdminThreatCategoriesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const AdminThreatCategoriesPage());
    },
  );
}

/// generated route for
/// [AdminUsersPage]
class AdminUsersRoute extends PageRouteInfo<void> {
  const AdminUsersRoute({List<PageRouteInfo>? children})
    : super(AdminUsersRoute.name, initialChildren: children);

  static const String name = 'AdminUsersRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const AdminUsersPage());
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
/// [OrgDashboardV2Page]
class OrgDashboardV2Route extends PageRouteInfo<void> {
  const OrgDashboardV2Route({List<PageRouteInfo>? children})
    : super(OrgDashboardV2Route.name, initialChildren: children);

  static const String name = 'OrgDashboardV2Route';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const OrgDashboardV2Page();
    },
  );
}

/// generated route for
/// [SelectServicesOrgPage]
class SelectServicesOrgRoute extends PageRouteInfo<void> {
  const SelectServicesOrgRoute({List<PageRouteInfo>? children})
    : super(SelectServicesOrgRoute.name, initialChildren: children);

  static const String name = 'SelectServicesOrgRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const SelectServicesOrgPage());
    },
  );
}

/// generated route for
/// [SignInOrgPage]
class SignInOrgRoute extends PageRouteInfo<void> {
  const SignInOrgRoute({List<PageRouteInfo>? children})
    : super(SignInOrgRoute.name, initialChildren: children);

  static const String name = 'SignInOrgRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const SignInOrgPage());
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
/// [UpdateBankDetailsPage]
class UpdateBankDetailsRoute extends PageRouteInfo<UpdateBankDetailsRouteArgs> {
  UpdateBankDetailsRoute({Key? key, List<PageRouteInfo>? children})
    : super(
        UpdateBankDetailsRoute.name,
        args: UpdateBankDetailsRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'UpdateBankDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UpdateBankDetailsRouteArgs>(
        orElse: () => const UpdateBankDetailsRouteArgs(),
      );
      return WrappedRoute(child: UpdateBankDetailsPage(key: args.key));
    },
  );
}

class UpdateBankDetailsRouteArgs {
  const UpdateBankDetailsRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'UpdateBankDetailsRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! UpdateBankDetailsRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [UpdateOrgAddressPage]
class UpdateOrgAddressRoute extends PageRouteInfo<UpdateOrgAddressRouteArgs> {
  UpdateOrgAddressRoute({Key? key, List<PageRouteInfo>? children})
    : super(
        UpdateOrgAddressRoute.name,
        args: UpdateOrgAddressRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'UpdateOrgAddressRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UpdateOrgAddressRouteArgs>(
        orElse: () => const UpdateOrgAddressRouteArgs(),
      );
      return WrappedRoute(child: UpdateOrgAddressPage(key: args.key));
    },
  );
}

class UpdateOrgAddressRouteArgs {
  const UpdateOrgAddressRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'UpdateOrgAddressRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! UpdateOrgAddressRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [UpdateOrgPage]
class UpdateOrgRoute extends PageRouteInfo<void> {
  const UpdateOrgRoute({List<PageRouteInfo>? children})
    : super(UpdateOrgRoute.name, initialChildren: children);

  static const String name = 'UpdateOrgRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const UpdateOrgPage());
    },
  );
}

/// generated route for
/// [UpdateUserAddressPage]
class UpdateUserAddressRoute extends PageRouteInfo<UpdateUserAddressRouteArgs> {
  UpdateUserAddressRoute({Key? key, List<PageRouteInfo>? children})
    : super(
        UpdateUserAddressRoute.name,
        args: UpdateUserAddressRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'UpdateUserAddressRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UpdateUserAddressRouteArgs>(
        orElse: () => const UpdateUserAddressRouteArgs(),
      );
      return WrappedRoute(child: UpdateUserAddressPage(key: args.key));
    },
  );
}

class UpdateUserAddressRouteArgs {
  const UpdateUserAddressRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'UpdateUserAddressRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! UpdateUserAddressRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
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

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! UpdateUserRouteArgs) return false;
    return key == other.key && isOnboarding == other.isOnboarding;
  }

  @override
  int get hashCode => key.hashCode ^ isOnboarding.hashCode;
}

/// generated route for
/// [UserMainPage]
class UserMainRoute extends PageRouteInfo<void> {
  const UserMainRoute({List<PageRouteInfo>? children})
    : super(UserMainRoute.name, initialChildren: children);

  static const String name = 'UserMainRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const UserMainPage();
    },
  );
}
