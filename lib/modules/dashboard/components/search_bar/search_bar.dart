import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../../core/themes/themes.dart';
import '../../../../global/components/components.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.forbidden,
      child: Container(
        padding: Spacing.all,
        decoration: BoxDecoration(color: Colors.white24, borderRadius: kRoundedBorder),
        child: Row(children: [
          Icon(
            LineAwesome.search_solid,
            color: Colors.white,
          ),
          CustomText.title(
            'Search',
            color: Colors.white,
          ).expanded(),
        ]),
      ),
    );
  }
}
