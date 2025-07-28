import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:safe_zone/presentation/screens/admin/dashboard/admin_dashboard_page.dart';
import 'package:safe_zone/presentation/screens/admin/new_service/admin_new_service_page.dart';
import 'package:safe_zone/presentation/screens/admin/new_threat/admin_new_threat_page.dart';
import 'package:safe_zone/presentation/screens/admin/new_threat_category/admin_new_threat_category_page.dart';
import 'package:safe_zone/presentation/screens/admin/orgs/admin_orgs_page.dart';
import 'package:safe_zone/presentation/screens/admin/services/admin_donation_services_page.dart';
import 'package:safe_zone/presentation/screens/admin/threat_categories/admin_threat_categories_page.dart';
import 'package:safe_zone/presentation/screens/admin/users/admin_users_page.dart';
import 'package:safe_zone/presentation/screens/organization/dashboard_v2/dashboard_page_v2.dart';
import 'package:safe_zone/presentation/screens/organization/select_services/select_services_page.dart';
import 'package:safe_zone/presentation/screens/signin/sign_in_org_page.dart';
import 'package:safe_zone/presentation/screens/user/home/user_main_page.dart';
import 'package:safe_zone/presentation/screens/organization/update_bank_details/update_bank_details_page.dart';
import 'package:safe_zone/presentation/screens/organization/update_org/update_org_page.dart';
import 'package:safe_zone/presentation/screens/organization/update_org_address/update_org_address_page.dart';
import 'package:safe_zone/presentation/screens/signin/signin_page.dart';
import 'package:safe_zone/presentation/screens/user/update_user_address/update_user_address_page.dart';
import 'package:safe_zone/presentation/screens/user/update_user/update_user_page.dart';
import '/presentation/screens/landing/landing_page.dart';
part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.material();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: LandingRoute.page, path: "/"),
    AutoRoute(page: SigninRoute.page, path: "/signin"),
    AutoRoute(page: SignInOrgRoute.page, path: "/signin-org"),
    AutoRoute(page: UserMainRoute.page, path: "/main"),
    AutoRoute(page: UpdateUserRoute.page, path: "/user/update"),
    AutoRoute(page: UpdateUserAddressRoute.page, path: "/user/update-address"),

    // Admin Routes
    AutoRoute(page: AdminDashboardRoute.page, path: "/admin"),
    AutoRoute(page: AdminUsersRoute.page, path: "/admin/users"),
    AutoRoute(page: AdminOrgsRoute.page, path: "/admin/orgs"),
    AutoRoute(
      page: AdminThreatCategoriesRoute.page,
      path: "/admin/threat-categories",
    ),
    AutoRoute(page: AdminDonationServicesRoute.page, path: "/admin/services"),
    AutoRoute(page: AdminNewServiceRoute.page, path: "/admin/services/new"),
    AutoRoute(
      page: AdminNewThreatCategoryRoute.page,
      path: "/admin/threat-categories/new",
    ),
    AutoRoute(page: AdminNewThreatRoute.page, path: "/admin/threats/new"),

    // Organization Routes
    AutoRoute(page: OrgDashboardV2Route.page, path: "/org/v2"),
    AutoRoute(page: UpdateOrgRoute.page, path: "/org/update"),
    AutoRoute(page: UpdateOrgAddressRoute.page, path: "/org/update-address"),
    AutoRoute(
      page: UpdateBankDetailsRoute.page,
      path: "/org/update-bank-details",
    ),
    AutoRoute(page: SelectServicesOrgRoute.page, path: "/org/select-services"),
  ];
}
