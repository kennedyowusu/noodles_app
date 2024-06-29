import 'package:flutter/material.dart';
import 'package:gobe_app/constants/customize.dart';

ThemeData projectTheme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(
      color: Colors.black,
    )),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    buttonTheme: const ButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: inputColor,
      filled: true,
      contentPadding: const EdgeInsets.all(defaultPadding),
      border: kDefaultOutlineInputBorder,
      enabledBorder: kDefaultOutlineInputBorder,
      focusedBorder: kDefaultOutlineInputBorder.copyWith(
          borderSide: BorderSide(
        color: primaryColor.withOpacity(0.5),
      )),
      errorBorder: kDefaultOutlineInputBorder.copyWith(
        borderSide: kErrorBorderSide,
      ),
      focusedErrorBorder: kDefaultOutlineInputBorder.copyWith(
        borderSide: kErrorBorderSide,
      ),
    ),
  );
}
