import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../core/app_router.gr.dart';
import '../../global/components/components.dart';

@RoutePage()
class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        UserProfileRoute(),
        UserDevicesRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          appBar: AppBar(title: const Text('User')),
          body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, mainAxisSize: MainAxisSize.max, children: [
            CustomButton.elevated(
              const Text('Profile'),
              onPressed: () => tabsRouter.navigate(const UserProfileRoute()),
            ),
            CustomButton.elevated(
              const Text('Devices'),
              onPressed: () => tabsRouter.navigate(const UserDevicesRoute()),
            ),
            Expanded(child: child),
          ]),
        );
      },
    );
  }
}
