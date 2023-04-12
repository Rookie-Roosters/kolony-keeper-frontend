import 'package:flutter/material.dart';

import '../../core/themes/themes.dart';

class CustomText extends StatelessWidget {
  final String text;

  final bool italic;
  final Color? color;
  final TextAlign textAlign;
  final TextDecoration? decoration;
  final TextDecorationStyle? decorationStyle;
  final TextStyle? style;

  const CustomText(
    this.text, {
    this.color,
    this.italic = false,
    this.textAlign = TextAlign.center,
    this.decoration,
    this.decorationStyle,
    this.style,
    super.key,
  });

  CustomText.display(
    this.text, {
    this.color,
    this.italic = false,
    this.textAlign = TextAlign.center,
    this.decoration,
    this.decorationStyle,
    TextStyle? style,
    super.key,
  }) : style = kDisplayStyle.merge(style);

  CustomText.headline(
    this.text, {
    this.color,
    this.italic = false,
    this.textAlign = TextAlign.center,
    this.decoration,
    this.decorationStyle,
    TextStyle? style,
    super.key,
  }) : style = kHeadlineStyle.merge(style);

  CustomText.title(
    this.text, {
    this.color,
    this.italic = false,
    this.textAlign = TextAlign.center,
    this.decoration,
    this.decorationStyle,
    TextStyle? style,
    super.key,
  }) : style = kTitleStyle.merge(style);

  CustomText.body(
    this.text, {
    this.color,
    this.italic = false,
    this.textAlign = TextAlign.center,
    this.decoration,
    this.decorationStyle,
    TextStyle? style,
    super.key,
  }) : style = kBodyStyle.merge(style);

  CustomText.label(
    this.text, {
    this.color,
    this.italic = false,
    this.textAlign = TextAlign.center,
    this.decoration,
    this.decorationStyle,
    TextStyle? style,
    super.key,
  }) : style = kLabelStyle.merge(style);

  CustomText.caption(
    this.text, {
    this.color,
    this.italic = false,
    this.textAlign = TextAlign.center,
    this.decoration,
    this.decorationStyle,
    TextStyle? style,
    super.key,
  }) : style = kCaptionStyle.merge(style);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        overflow: TextOverflow.ellipsis,
        color: color,
        decoration: decoration,
        decorationStyle: decorationStyle,
        fontStyle: italic ? FontStyle.italic : FontStyle.normal,
      ).merge(style),
    );
  }
}
