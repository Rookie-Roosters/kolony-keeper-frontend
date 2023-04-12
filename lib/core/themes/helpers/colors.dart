import 'package:flutter/material.dart';

extension BrightnessExtension on Brightness {
  Brightness get opposite => this == Brightness.dark ? Brightness.light : Brightness.dark;
}

extension ColorExtension on Color {
  Color get onColor {
    final brightness = ThemeData.estimateBrightnessForColor(this);
    return brightness == Brightness.dark ? Colors.white : Colors.black;
  }

  Color darken([double amount = 0.05]) {
    assert(amount >= 0 && amount <= 1);
    final hsl = HSLColor.fromColor(this);
    final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));
    return hslDark.toColor();
  }

  Color lighten([double amount = 0.05]) {
    assert(amount >= 0 && amount <= 1);
    final hsl = HSLColor.fromColor(this);
    final hslLight = hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));
    return hslLight.toColor();
  }

  Color dark() {
    final hsl = HSLColor.fromColor(this);
    final hslDark = hsl.withLightness((0.08).clamp(0.0, 1.0));
    return hslDark.toColor();
  }

  Color light() {
    final hsl = HSLColor.fromColor(this);
    final hslLight = hsl.withLightness((0.98).clamp(0.0, 1.0));
    return hslLight.toColor();
  }
}


// void setScreenColors({Color? statusBar, Color? navigationBar}) {
//   final statusBrightness = statusBar != null ? ThemeData.estimateBrightnessForColor(statusBar) : null;
//   final navigationBrightness = navigationBar != null ? ThemeData.estimateBrightnessForColor(navigationBar) : null;
//   SystemChrome.setSystemUIOverlayStyle(
//     SystemUiOverlayStyle(
//       systemNavigationBarColor: navigationBar,
//       statusBarColor: statusBar,
//       statusBarIconBrightness: statusBrightness?.opposite,
//       systemNavigationBarIconBrightness: navigationBrightness?.opposite,
//     ),
//   );
// }