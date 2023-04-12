import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../global/repositories/repositories.dart';
import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route', deferredLoading: true)
class AppRouter extends $AppRouter implements AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final context = router.navigatorKey.currentContext;
    final authentication = context?.read<IAuthenticationRepository>();
    if (authentication?.session != null || resolver.route.name == AuthenticationRoute.name) {
      resolver.next();
    } else if (resolver.route.name != AuthenticationRoute.name) {
      push(const AuthenticationRoute());
    }
  }

  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: AuthenticationRoute.page, path: '/authentication'),
    AutoRoute(page: DashboardRoute.page, path: '/', children: [
      AutoRoute(page: HomeRoute.page, path: ''),
      AutoRoute(page: AlertsRoute.page, path: 'alerts'),
      AutoRoute(page: BusinessServicesRoute.page, path: 'business_services', children: [
        AutoRoute(page: BusinessServicesBusinessGroupsRoute.page, path: ''),
        AutoRoute(page: BusinessServicesInterestGroupsRoute.page, path: 'interest_groups'),
      ]),
      AutoRoute(page: IncidentsRoute.page, path: 'incidents'),
      AutoRoute(page: NotificationsRoute.page, path: 'notifications'),
      AutoRoute(page: UserRoute.page, path: 'user', children: [
        AutoRoute(page: UserProfileRoute.page, path: ''),
        AutoRoute(page: UserDevicesRoute.page, path: 'devices'),
      ]),
    ]),
  ];
}
