import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../../core/app_router.gr.dart';
import '../../../../core/themes/themes.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../global/components/components.dart';
import '../components.dart';
import '../search_bar/search_bar.dart';

class HeaderBar extends StatelessWidget {
  final String title;

  const HeaderBar({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor.darken(0.12),
      height: 90,
      child: Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Container(
          width: kApplicationBarWidth,
          padding: Spacing.all4,
          alignment: Alignment.center,
          child: Assets.app.kolonyKeeper.isotypeNegative.image(),
        ),
        const VerticalDivider(color: Colors.white24, width: 0),

        Row(children: [
          CustomText.display(
            title,
            color: Colors.white,
            textAlign: TextAlign.start,
          ).paddingHorizontal5.expanded(),
          const SearchBar().expanded(),
          const Spacer(),
          CustomButton.elevated(
            const Icon(LineAwesome.user, size: 30),
            onPressed: () => context.router.navigate(const UserRoute()),
            color: kTertiaryColor,
            isCircle: true,
          ),
          SpacerBox.horizontal,
          CustomText.title('Manuel', color: Colors.white),
          SpacerBox.horizontal5,
        ]).expanded(),

//         Row(children: [
//           SizedBox(width: 80, child: Assets.app.kolonyKeeper.isotypeNegative.image(height: 40)),

//           CustomText.display(title, color: Colors.white).paddingHorizontal5,
//         ]).expanded(),

// const VerticalDivider(color: Colors.white24, width: 0),

//           const SearchBar().expanded(),

//         const VerticalDivider(color: Colors.white24, width: 0),

//         Row(mainAxisAlignment: MainAxisAlignment.end, children: [
//           CustomButton.ghost(const Icon(LineAwesome.bell, size: 32), color: Colors.white38, isCircle: true, onPressed: () => context.router.navigate(NotificationsRoute())),
//           SpacerBox.horizontal,
//           const VerticalDivider(color: Colors.white24, width: 0),
//           SpacerBox.horizontal5,
//           CustomButton.elevated(
//             const Icon(LineAwesome.user, size: 30),
//             onPressed: () => context.router.navigate(const UserRoute()),
//             color: kTertiaryColor,
//             isCircle: true,
//           ),
//           SpacerBox.horizontal,
//           CustomText.title('Yomero', color: Colors.white),
//           SpacerBox.horizontal5,
//         ]).expanded(),
      ]),
    );
  }
}
