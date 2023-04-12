import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route', deferredLoading: true)
class AppRouter extends $AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: AuthenticationRoute.page, path: '/authentication'),
    AutoRoute(page: DashboardRoute.page, path: '/'),
  ];
}
