import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFF0091AD);
const Color secondaryColor = Color(0xFF54b9c1);
const Color bodyTextColor = Color(0xFF010101);
const Color inputColor = Color(0xF1FBFBFB);
const Color whiteColor = Color(0xFFFFFFFF);

const kBigScreenHeight = 800;
const kMediumScreenHeight = 670;

const kMultiplier = 0.0012;

const double mobileBreakpoint = 375;
const double tabletBreakpoint = 768;
const double laptopBreakpoint = 992;
const double desktopBreakpoint = 1200;

/// Default padding value used throughout the application.
const double defaultPadding = 16.0;
const EdgeInsets socialPadding =
    EdgeInsets.symmetric(horizontal: 16, vertical: 8);
const double defaultFontSize = 16.0;

/// Default duration for animations.
const Duration kDefaultDuration = Duration(milliseconds: 250);

/// Default text style for buttons.
const TextStyle kButtonTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 14.0,
  fontWeight: FontWeight.bold,
);

/// Default padding for text fields.
const EdgeInsets kTextFieldPadding = EdgeInsets.symmetric(
  horizontal: defaultPadding,
  vertical: defaultPadding,
);

/// Default outline input border style for text fields.
const OutlineInputBorder kDefaultOutlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(6.0)),
  borderSide: BorderSide(
    color: Color(0xFFF3F2F2),
  ),
);

/// Border side style for error states.
const BorderSide kErrorBorderSide = BorderSide(color: Colors.red, width: 1.0);

double kSize(double mediaQueryHeight, double onSmallScreen,
    double onMediumScreen, double onBigScreen) {
  return mediaQueryHeight <= kMediumScreenHeight
      ? (onSmallScreen * kMultiplier) * mediaQueryHeight
      : mediaQueryHeight <= kBigScreenHeight
          ? (onMediumScreen * kMultiplier) * mediaQueryHeight
          : (onBigScreen * kMultiplier) * mediaQueryHeight;
}
