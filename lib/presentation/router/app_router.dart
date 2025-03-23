import 'package:auto_route/auto_route.dart';
import 'package:safe_zone/presentation/screens/home/home_page.dart';
import 'package:safe_zone/presentation/screens/signin/signin_page.dart';
import 'package:safe_zone/presentation/screens/update_address/update_address_page.dart';
import 'package:safe_zone/presentation/screens/update_user/update_user_page.dart';
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
    AutoRoute(page: HomeRoute.page, path: "/home"),
    AutoRoute(page: UpdateUserRoute.page, path: "/update-user"),
    AutoRoute(page: UpdateAddressRoute.page, path: "/update-address"),
  ];
}
