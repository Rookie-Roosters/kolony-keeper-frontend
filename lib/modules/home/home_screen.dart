import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Assets.images.dashboard.image(fit: BoxFit.fitHeight),
    );
  }
}
