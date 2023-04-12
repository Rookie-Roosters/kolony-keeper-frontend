import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'BusinessServicesBusinessGroupsRoute')
class BusinessGroupsView extends StatelessWidget {
  const BusinessGroupsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Business Groups'));
  }
}
