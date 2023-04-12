import 'package:flutter/material.dart';

import '../../core/themes/themes.dart';

class CustomTabBar extends StatelessWidget {
  final TabController controller;
  final List<Widget> tabs;
  final Widget? trailing;

  const CustomTabBar({required this.controller, required this.tabs, this.trailing, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, mainAxisSize: MainAxisSize.min, children: [
      Row(children: [
        TabBar(
          isScrollable: true,
          indicatorColor: kPrimaryColor,
          labelColor: kPrimaryColor,
          controller: controller,
          indicatorWeight: 4,
          labelStyle: kTitleStyle,
          unselectedLabelColor: kMutedColor,
          labelPadding: const EdgeInsets.symmetric(horizontal: kSpacing4, vertical: kSpacing),
          splashFactory: NoSplash.splashFactory,
          indicatorPadding: Spacing.horizontal4,
          tabs: tabs,
        ),
        const Spacer(),
        if (trailing != null) trailing!,
      ]).paddingHorizontal5,
      const Divider(height: 0, color: kDividerColor),
    ]);
  }
}
