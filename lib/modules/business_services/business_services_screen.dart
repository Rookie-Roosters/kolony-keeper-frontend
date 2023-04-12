import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../core/app_router.gr.dart';
import '../../global/components/components.dart';

@RoutePage()
class BusinessServicesScreen extends StatelessWidget {
  const BusinessServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes: const [
        BusinessServicesInterestGroupsRoute(),
        BusinessServicesBusinessGroupsRoute(),
      ],
      builder: (context, child, controller) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, mainAxisSize: MainAxisSize.max, children: [
            CustomTabBar(controller: controller, tabs: const [
              Tab(text: 'Interest Groups'),
              Tab(text: 'Business Groups'),
            ]),
            Expanded(child: child),
          ]),
        );
      },
    );
  }
}
