import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'BusinessServicesInterestGroupsRoute')
class InterestGroupsView extends StatelessWidget {
  const InterestGroupsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Interest Groups'));
  }
}
