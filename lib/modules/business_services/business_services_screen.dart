import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../core/app_router.gr.dart';
import '../../global/components/components.dart';

@RoutePage()
class BusinessServicesScreen extends StatelessWidget {
  const BusinessServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        BusinessServicesInterestGroupsRoute(),
        BusinessServicesBusinessGroupsRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          appBar: AppBar(title: const Text('BusinessServices')),
          body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, mainAxisSize: MainAxisSize.max, children: [
            CustomButton.elevated(
              const Text('Interest Groups'),
              onPressed: () => tabsRouter.navigate(const BusinessServicesInterestGroupsRoute()),
            ),
            CustomButton.elevated(
              const Text('Business Groups'),
              onPressed: () => tabsRouter.navigate(const BusinessServicesBusinessGroupsRoute()),
            ),
            Expanded(child: child),
          ]),
        );
      },
    );
  }
}
