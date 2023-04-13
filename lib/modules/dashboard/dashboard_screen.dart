import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../core/app_router.gr.dart';
import '../../core/themes/themes.dart';
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
        final title = tabsRouter.current.name.replaceFirst('Route', '');
        return Scaffold(
          backgroundColor: kNeutralColor,
          body: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
            final screen = MediaQuery.of(context).size.width;
            return Column(crossAxisAlignment: CrossAxisAlignment.stretch, mainAxisSize: MainAxisSize.max, children: [
              screen.isDesktop ? HeaderBar(title: title) : HeaderBarMobile(title: title),
              Expanded(
                child: screen.isDesktop
                    ? Row(children: [
                        ApplicationBar(activeIndex: tabsRouter.activeIndex),
                        Expanded(child: child),
                      ])
                    : Column(crossAxisAlignment: CrossAxisAlignment.stretch, mainAxisSize: MainAxisSize.max, children: [
                        Expanded(child: child),
                        ApplicationBarMobile(activeIndex: tabsRouter.activeIndex),
                      ]),
              ),
            ]);
          }),
        );
      },
    );
  }
}
