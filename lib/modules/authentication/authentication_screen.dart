import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:kolony_keeper/core/app_router.gr.dart';
import 'package:kolony_keeper/global/components/components.dart';

@RoutePage()
class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Authentication'),
      ),
      body: Center(
        child: CustomButton.elevated(
          const Text('/dashboard'),
          onPressed: () => context.router.navigate(const DashboardRoute()),
        ),
      ),
    );
  }
}
