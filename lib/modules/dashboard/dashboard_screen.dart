import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../core/app_router.gr.dart';
import '../../core/themes/themes.dart';
import '../../global/components/components.dart';
import 'components/components.dart';

@RoutePage()
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        HomeRoute(),
        BusinessServicesRoute(),
        IncidentsRoute(),
        AlertsRoute(),
        NotificationsRoute(),
        UserRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        final title = tabsRouter.current.name;
        return Scaffold(
          backgroundColor: kNeutralColor,
          body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, mainAxisSize: MainAxisSize.max, children: [
            HeaderBar(title: title.replaceFirst('Route', '')),
            Expanded(
              child: Row(children: [
                ApplicationBar(activeIndex: tabsRouter.activeIndex),
                Expanded(
                  child: child,
                ),
              ]),
            ),
          ]),
        );
      },
    );
  }
}
