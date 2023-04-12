import 'package:flutter/material.dart';

import 'constants.dart';

final appTheme = ThemeData(
  fontFamily: kPlainFont,
  colorScheme: const ColorScheme.light(
    primary: kPrimaryColor,
    secondary: kSecondaryColor,
    tertiary: kTertiaryColor,
  ),
  textTheme: const TextTheme(
    displayMedium: kDisplayStyle,
    headlineMedium: kHeadlineStyle,
    titleMedium: kTitleStyle,
    bodyMedium: kBodyStyle,
    labelMedium: kLabelStyle,
  ),
  inputDecorationTheme: const InputDecorationTheme(
    labelStyle: kLabelStyle,
    border: UnderlineInputBorder(borderRadius: kRoundedBorder, borderSide: BorderSide.none),
    isCollapsed: true,
    filled: true,
  ),
);
