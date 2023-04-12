import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../core/app_router.gr.dart';
import '../../global/components/components.dart';

@RoutePage()
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Center(
        child: CustomButton.elevated(
          const Text('/authentication'),
          onPressed: () => context.router.navigate(const AuthenticationRoute()),
        ),
      ),
    );
  }
}
