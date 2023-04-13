import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../../core/app_router.gr.dart';
import '../../../../core/themes/themes.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../global/components/components.dart';
import '../components.dart';

class HeaderBar extends StatelessWidget {
  final String title;

  const HeaderBar({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor.darken(0.12),
      height: 80,
      child: Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Container(
          width: kApplicationBarWidth,
          padding: Spacing.all4,
          alignment: Alignment.center,
          decoration: const BoxDecoration(border: Border(right: BorderSide(color: Colors.white24))),
          child: Assets.app.kolonyKeeper.isotypeNegative.image(),
        ),
        Row(children: [
          CustomText.display(
            title,
            color: Colors.white,
            textAlign: TextAlign.start,
          ).expanded(),
          const SearchBar().expanded(),
          Align(
            alignment: Alignment.centerRight,
            child: CustomButton.outlined(
              CustomText.title('Manuel'),
              prefix: const Icon(LineAwesome.user),
              color: kTertiaryColor,
              onPressed: () => context.router.navigate(const UserRoute()),
            ),
          ).expanded(),
        ]).paddingHorizontal5.expanded(),
      ]),
    );
  }
}

class HeaderBarMobile extends StatelessWidget {
  final String title;

  const HeaderBarMobile({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor.darken(0.12),
      height: 80,
      padding: Spacing.horizontal5,
      child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Assets.app.kolonyKeeper.isotypeNegative.image(height: 40),
        ).expanded(),
        CustomText.display(
          title,
          color: Colors.white,
          textAlign: TextAlign.center,
        ).expanded(2),
        Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          CustomButton.ghost(
            const Icon(LineAwesome.search_solid),
            color: kTertiaryColor,
            onPressed: null,
          ),
          SpacerBox.horizontal,
          CustomButton.outlined(
            const Icon(LineAwesome.user),
            color: kTertiaryColor,
            onPressed: () => context.router.navigate(const UserRoute()),
          ),
        ]).expanded(),
      ]),
    );
  }
}
