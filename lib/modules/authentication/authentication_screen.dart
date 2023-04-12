import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../core/app_router.gr.dart';
import '../../global/components/components.dart';
import 'views/login_view.dart';

@RoutePage()
class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Authentication'),
      ),
      body: const Center(child: LogInView()),
    );
  }
}
