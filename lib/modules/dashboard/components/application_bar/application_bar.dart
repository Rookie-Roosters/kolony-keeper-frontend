import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../../core/app_router.gr.dart';
import '../../../../core/themes/themes.dart';
import '../../../../global/components/components.dart';

const kApplicationBarWidth = 90.0;

class ApplicationBar extends StatelessWidget {
  final int activeIndex;
  const ApplicationBar({required this.activeIndex, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: kApplicationBarWidth,
      padding: EdgeInsets.symmetric(horizontal: kSpacing, vertical: kSpacing5),
      decoration: const BoxDecoration(
        color: kNeutralColor,
        border: Border(right: BorderSide(color: kDividerColor)),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [
        _NavigationBarButton(
          text: 'Home',
          icon: LineAwesome.home_solid,
          route: const HomeRoute(),
          isActive: activeIndex == 0,
        ),
        SpacerBox.vertical,
        _NavigationBarButton(
          text: 'Business Services',
          icon: LineAwesome.server_solid,
          route: const BusinessServicesRoute(),
          isActive: activeIndex == 1,
        ),
        SpacerBox.vertical,
        _NavigationBarButton(
          text: 'Incidents',
          icon: LineAwesome.exclamation_triangle_solid,
          route: const IncidentsRoute(),
          isActive: activeIndex == 2,
        ),
        SpacerBox.vertical,
        _NavigationBarButton(
          text: 'Alerts',
          icon: LineAwesome.binoculars_solid,
          route: const AlertsRoute(),
          isActive: activeIndex == 3,
        ),
        SpacerBox.vertical,
        _NavigationBarButton(
          text: 'Notifications',
          icon: LineAwesome.bell,
          route: const NotificationsRoute(),
          isActive: activeIndex == 4,
        ),
      ]),
    );
  }
}

class _NavigationBarButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final PageRouteInfo route;
  final bool isActive;

  const _NavigationBarButton({
    required this.text,
    required this.icon,
    required this.route,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return isActive
        ? CustomButton(
            Icon(icon),
            onPressed: () => context.router.navigate(route),
            isCircle: true,
            color: kPrimaryColor.lighten(0.6),
            textColor: kPrimaryColor,
          )
        : CustomButton.ghost(
            Icon(icon),
            onPressed: () => context.router.navigate(route),
            color: kMutedColor,
            isCircle: true,
          );
  }
}
