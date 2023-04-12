import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../core/app_router.gr.dart';
import '../../global/components/components.dart';

@RoutePage()
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        BusinessServicesRoute(),
        AlertsRoute(),
        IncidentsRoute(),
        NotificationsRoute(),
        UserRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) => tabsRouter.setActiveIndex(index),
            items: const [
              BottomNavigationBarItem(label: 'Services', icon: Icon(Icons.accessible_rounded)),
              BottomNavigationBarItem(label: 'Alerts', icon: Icon(Icons.accessible_rounded)),
              BottomNavigationBarItem(label: 'Incidents', icon: Icon(Icons.accessible_rounded)),
              BottomNavigationBarItem(label: 'Notifications', icon: Icon(Icons.accessible_rounded)),
              BottomNavigationBarItem(label: 'User', icon: Icon(Icons.accessible_rounded)),
            ],
          ),
        );
      },
    );
  }
}
