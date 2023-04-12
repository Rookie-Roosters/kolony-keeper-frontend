import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../core/app_router.gr.dart';
import '../../core/themes/themes.dart';
import '../../global/components/components.dart';

@RoutePage()
class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes: const [
        UserProfileRoute(),
        UserDevicesRoute(),
      ],
      builder: (context, child, controller) {
        return Scaffold(
          body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, mainAxisSize: MainAxisSize.max, children: [
            CustomTabBar(controller: controller, tabs: const [
              Tab(text: 'Profile'),
              Tab(text: 'Devices'),
            ]),
            Expanded(child: child),
          ]),
        );
      },
    );
  }
}
