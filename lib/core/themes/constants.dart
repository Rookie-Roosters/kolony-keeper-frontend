import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

// Colors
const Color kPrimaryColor = Color(0xFF8C0F61);
const Color kSecondaryColor = Color(0xFFBF78A6);
const Color kTertiaryColor = Color(0xFFF29F05);

const Color kNeutralColor = Colors.white;
const Color kBaseColor = Color(0xFFF2F2F2);
const Color kMutedColor = Colors.black26;
const Color kDividerColor = Colors.black12;

const Color kSuccessColor = Colors.green;
const Color kError = Colors.red;
const Color kWarning = Colors.amber;
const Color kInformation = Colors.blue;

// Typography
const String kBrandFont = 'Overpass';
const String kPlainFont = 'NunitoSans';
double get kTextScaleFactor => 1.sp;

const kDisplayStyle = TextStyle(fontFamily: kBrandFont, fontSize: 30.0, height: 38.0 / 30.0, fontWeight: FontWeight.w900);
const kHeadlineStyle = TextStyle(fontFamily: kBrandFont, fontSize: 22.0, height: 26.0 / 22.0, fontWeight: FontWeight.bold);
const kTitleStyle = TextStyle(fontFamily: kPlainFont, fontSize: 18.0, height: 24.0 / 18.0, fontWeight: FontWeight.w700, letterSpacing: 0.5);
const kBodyStyle = TextStyle(fontFamily: kPlainFont, fontSize: 14.0, height: 16.0 / 14.0, fontWeight: FontWeight.normal, letterSpacing: 0.25);
const kLabelStyle = TextStyle(fontFamily: kBrandFont, fontSize: 14.0, height: 18.0 / 14.0, fontWeight: FontWeight.bold, letterSpacing: 0.25);
const kCaptionStyle = TextStyle(fontFamily: kBrandFont, fontSize: 12.0, height: 14.0 / 12.0, fontWeight: FontWeight.normal, letterSpacing: 0.25);

// General
const kBorderRadius = 8.0;
const kRoundedBorder = BorderRadius.all(Radius.circular(kBorderRadius));
const kSpacing = 10.0;

const kMobileBreakpoint = 576.0;
const kTabletBreakpoint = 992.0;
const kDesktopBreakpoint = 1200.0;
