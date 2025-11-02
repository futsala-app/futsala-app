import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A helper class for managing text styles in the application
class TextStyleHelper {
  static TextStyleHelper? _instance;

  TextStyleHelper._();

  static TextStyleHelper get instance {
    _instance ??= TextStyleHelper._();
    return _instance!;
  }

  // Display Styles
  // Large text styles typically used for headers and hero elements

  TextStyle get display48SemiBoldPoppins => TextStyle(
        fontSize: 48.fSize,
        fontWeight: FontWeight.w600,
        fontFamily: 'Poppins',
        color: appTheme.green_A700,
      );

  // Headline Styles
  // Medium-large text styles for section headers

  TextStyle get headline32SemiBoldPoppins => TextStyle(
        fontSize: 32.fSize,
        fontWeight: FontWeight.w600,
        fontFamily: 'Poppins',
        color: appTheme.green_A700,
      );

  // Title Styles
  // Medium text styles for titles and subtitles

  TextStyle get title20RegularRoboto => TextStyle(
        fontSize: 20.fSize,
        fontWeight: FontWeight.w400,
        fontFamily: 'Roboto',
      );

  TextStyle get title20BoldPoppins => TextStyle(
        fontSize: 20.fSize,
        fontWeight: FontWeight.w700,
        fontFamily: 'Poppins',
        color: appTheme.black_900,
      );

  TextStyle get title20MediumPoppins => TextStyle(
        fontSize: 20.fSize,
        fontWeight: FontWeight.w500,
        fontFamily: 'Poppins',
      );

  TextStyle get title18RegularPoppins => TextStyle(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w400,
        fontFamily: 'Poppins',
        color: appTheme.green_A700,
      );

  TextStyle get title16RegularPoppins => TextStyle(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w400,
        fontFamily: 'Poppins',
        color: appTheme.gray_600,
      );

  // Body Styles
  // Standard text styles for body content

  TextStyle get body15MediumPoppins => TextStyle(
        fontSize: 15.fSize,
        fontWeight: FontWeight.w500,
        fontFamily: 'Poppins',
        color: appTheme.black_900,
      );
}
