import 'package:flutter/material.dart';

import '../constants.dart';

const kSpacing1 = kSpacing * 0.25;
const kSpacing2 = kSpacing * 0.5;
const kSpacing3 = kSpacing * 1.0;
const kSpacing4 = kSpacing * 1.5;
const kSpacing5 = kSpacing * 3.0;

class Spacing {
  Spacing._();

  static const all = EdgeInsets.all(kSpacing);
  static const all1 = EdgeInsets.all(kSpacing1);
  static const all2 = EdgeInsets.all(kSpacing2);
  static const all3 = EdgeInsets.all(kSpacing3);
  static const all4 = EdgeInsets.all(kSpacing4);
  static const all5 = EdgeInsets.all(kSpacing5);

  static const horizontal = EdgeInsets.symmetric(horizontal: kSpacing);
  static const horizontal1 = EdgeInsets.symmetric(horizontal: kSpacing1);
  static const horizontal2 = EdgeInsets.symmetric(horizontal: kSpacing2);
  static const horizontal3 = EdgeInsets.symmetric(horizontal: kSpacing3);
  static const horizontal4 = EdgeInsets.symmetric(horizontal: kSpacing4);
  static const horizontal5 = EdgeInsets.symmetric(horizontal: kSpacing5);

  static const vertical = EdgeInsets.symmetric(vertical: kSpacing);
  static const vertical1 = EdgeInsets.symmetric(vertical: kSpacing1);
  static const vertical2 = EdgeInsets.symmetric(vertical: kSpacing2);
  static const vertical3 = EdgeInsets.symmetric(vertical: kSpacing3);
  static const vertical4 = EdgeInsets.symmetric(vertical: kSpacing4);
  static const vertical5 = EdgeInsets.symmetric(vertical: kSpacing5);

  static const left = EdgeInsets.only(left: kSpacing);
  static const left1 = EdgeInsets.only(left: kSpacing1);
  static const left2 = EdgeInsets.only(left: kSpacing2);
  static const left3 = EdgeInsets.only(left: kSpacing3);
  static const left4 = EdgeInsets.only(left: kSpacing4);
  static const left5 = EdgeInsets.only(left: kSpacing5);

  static const top = EdgeInsets.only(top: kSpacing);
  static const top1 = EdgeInsets.only(top: kSpacing1);
  static const top2 = EdgeInsets.only(top: kSpacing2);
  static const top3 = EdgeInsets.only(top: kSpacing3);
  static const top4 = EdgeInsets.only(top: kSpacing4);
  static const top5 = EdgeInsets.only(top: kSpacing5);

  static const right = EdgeInsets.only(right: kSpacing);
  static const right1 = EdgeInsets.only(right: kSpacing1);
  static const right2 = EdgeInsets.only(right: kSpacing2);
  static const right3 = EdgeInsets.only(right: kSpacing3);
  static const right4 = EdgeInsets.only(right: kSpacing4);
  static const right5 = EdgeInsets.only(right: kSpacing5);

  static const bottom = EdgeInsets.only(bottom: kSpacing);
  static const bottom1 = EdgeInsets.only(bottom: kSpacing1);
  static const bottom2 = EdgeInsets.only(bottom: kSpacing2);
  static const bottom3 = EdgeInsets.only(bottom: kSpacing3);
  static const bottom4 = EdgeInsets.only(bottom: kSpacing4);
  static const bottom5 = EdgeInsets.only(bottom: kSpacing5);
}

class SpacerBox {
  SpacerBox._();

  static const horizontal = SizedBox(width: kSpacing);
  static const horizontal1 = SizedBox(width: kSpacing1);
  static const horizontal2 = SizedBox(width: kSpacing2);
  static const horizontal3 = SizedBox(width: kSpacing3);
  static const horizontal4 = SizedBox(width: kSpacing4);
  static const horizontal5 = SizedBox(width: kSpacing5);

  static const vertical = SizedBox(height: kSpacing);
  static const vertical1 = SizedBox(height: kSpacing1);
  static const vertical2 = SizedBox(height: kSpacing2);
  static const vertical3 = SizedBox(height: kSpacing3);
  static const vertical4 = SizedBox(height: kSpacing4);
  static const vertical5 = SizedBox(height: kSpacing5);

  static Widget statusbar(BuildContext context) {
    return SizedBox(height: MediaQuery.of(context).padding.top);
  }
}

extension SpacingHelpers on Widget {
  Widget get paddingAll => Padding(padding: Spacing.all, child: this);
  Widget get paddingAll1 => Padding(padding: Spacing.all1, child: this);
  Widget get paddingAll2 => Padding(padding: Spacing.all2, child: this);
  Widget get paddingAll3 => Padding(padding: Spacing.all3, child: this);
  Widget get paddingAll4 => Padding(padding: Spacing.all4, child: this);
  Widget get paddingAll5 => Padding(padding: Spacing.all5, child: this);

  Widget get paddingHorizontal => Padding(padding: Spacing.horizontal, child: this);
  Widget get paddingHorizontal1 => Padding(padding: Spacing.horizontal1, child: this);
  Widget get paddingHorizontal2 => Padding(padding: Spacing.horizontal2, child: this);
  Widget get paddingHorizontal3 => Padding(padding: Spacing.horizontal3, child: this);
  Widget get paddingHorizontal4 => Padding(padding: Spacing.horizontal4, child: this);
  Widget get paddingHorizontal5 => Padding(padding: Spacing.horizontal5, child: this);

  Widget get paddingVertical => Padding(padding: Spacing.vertical, child: this);
  Widget get paddingVertical1 => Padding(padding: Spacing.vertical1, child: this);
  Widget get paddingVertical2 => Padding(padding: Spacing.vertical2, child: this);
  Widget get paddingVertical3 => Padding(padding: Spacing.vertical3, child: this);
  Widget get paddingVertical4 => Padding(padding: Spacing.vertical4, child: this);
  Widget get paddingVertical5 => Padding(padding: Spacing.vertical5, child: this);

  Widget get paddingLeft => Padding(padding: Spacing.left, child: this);
  Widget get paddingLeft1 => Padding(padding: Spacing.left1, child: this);
  Widget get paddingLeft2 => Padding(padding: Spacing.left2, child: this);
  Widget get paddingLeft3 => Padding(padding: Spacing.left3, child: this);
  Widget get paddingLeft4 => Padding(padding: Spacing.left4, child: this);
  Widget get paddingLeft5 => Padding(padding: Spacing.left5, child: this);

  Widget get paddingTop => Padding(padding: Spacing.top, child: this);
  Widget get paddingTop1 => Padding(padding: Spacing.top1, child: this);
  Widget get paddingTop2 => Padding(padding: Spacing.top2, child: this);
  Widget get paddingTop3 => Padding(padding: Spacing.top3, child: this);
  Widget get paddingTop4 => Padding(padding: Spacing.top4, child: this);
  Widget get paddingTop5 => Padding(padding: Spacing.top5, child: this);

  Widget get paddingRight => Padding(padding: Spacing.right, child: this);
  Widget get paddingRight1 => Padding(padding: Spacing.right1, child: this);
  Widget get paddingRight2 => Padding(padding: Spacing.right2, child: this);
  Widget get paddingRight3 => Padding(padding: Spacing.right3, child: this);
  Widget get paddingRight4 => Padding(padding: Spacing.right4, child: this);
  Widget get paddingRight5 => Padding(padding: Spacing.right5, child: this);

  Widget get paddingBottom => Padding(padding: Spacing.bottom, child: this);
  Widget get paddingBottom1 => Padding(padding: Spacing.bottom1, child: this);
  Widget get paddingBottom2 => Padding(padding: Spacing.bottom2, child: this);
  Widget get paddingBottom3 => Padding(padding: Spacing.bottom3, child: this);
  Widget get paddingBottom4 => Padding(padding: Spacing.bottom4, child: this);
  Widget get paddingBottom5 => Padding(padding: Spacing.bottom5, child: this);

  Widget paddingSymmetric(double horizontalSpacing, double verticalSpacing) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalSpacing, vertical: verticalSpacing),
      child: this,
    );
  }

  Widget paddingLTRB(double leftSpacing, double topSpacing, double rightSpacing, double bottomSpacing) {
    return Padding(
      padding: EdgeInsets.fromLTRB(leftSpacing, topSpacing, rightSpacing, bottomSpacing),
      child: this,
    );
  }
}
