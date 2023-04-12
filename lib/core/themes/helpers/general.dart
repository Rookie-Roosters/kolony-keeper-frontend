import 'package:flutter/material.dart';

import '../constants.dart';

extension GeneralHelpers on Widget {
  // Misc
  Widget tooltip(String text) => Tooltip(message: text, child: this);
  Widget rounded([BorderRadius? radius]) => ClipRRect(borderRadius: radius ?? kRoundedBorder, child: this);
  Widget safeArea({bool top = true, bool bottom = true}) => SafeArea(top: top, bottom: bottom, child: this);
  Widget scrollable({Axis? direction, ScrollPhysics? physics, EdgeInsets? padding}) {
    return SingleChildScrollView(
      physics: physics ?? const BouncingScrollPhysics(),
      scrollDirection: direction ?? Axis.vertical,
      padding: padding,
      child: this,
    );
  }

  // Sizing
  Widget expanded([int flex = 1]) => Expanded(flex: flex, child: this);
  Widget flexible([int flex = 1]) => Flexible(flex: flex, child: this);
  Widget width(double width) => SizedBox(width: width, child: this);
  Widget height(double height) => SizedBox(height: height, child: this);
  Widget size(double width, double height) => SizedBox(width: width, height: height);
  Widget aspectRatio(double aspectRatio) => AspectRatio(aspectRatio: aspectRatio, child: this);

  // Position
  Widget center() => Center(child: this);
  Widget align(Alignment alignment) => Align(alignment: alignment, child: this);
  Widget attachLeft(List<Widget> items, {MainAxisAlignment? mainAxisAlignment, CrossAxisAlignment? crossAxisAlignment}) {
    if (items.isEmpty) return this;
    return Row(
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [...items, this],
    );
  }

  Widget attachRight(List<Widget> items, {MainAxisAlignment? mainAxisAlignment, CrossAxisAlignment? crossAxisAlignment}) {
    if (items.isEmpty) return this;
    return Row(
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [this, ...items],
    );
  }

  Widget attachTop(List<Widget> items, {MainAxisAlignment? mainAxisAlignment, CrossAxisAlignment? crossAxisAlignment}) {
    if (items.isEmpty) return this;
    return Column(
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [...items, this],
    );
  }

  Widget attachBottom(List<Widget> items, {MainAxisAlignment? mainAxisAlignment, CrossAxisAlignment? crossAxisAlignment}) {
    if (items.isEmpty) return this;
    return Column(
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [this, ...items],
    );
  }
}
