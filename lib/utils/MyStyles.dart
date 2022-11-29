import 'package:flutter/material.dart';

class MyStyles {
  static double ultraHighFontSize = 35.0;
  static double highFontSize = 22.0;
  static double smallFontSize = 18.0;
  static double extraSmallFontSize = 16.0;
  static TextStyle getTitleCompanyNameStyle(context) {
    return TextStyle(
        color: Theme.of(context).primaryColor,
        fontSize: ultraHighFontSize,
        fontWeight: FontWeight.w700,
        fontFamily: 'Lato');
  }

  static TextStyle buttonTextStyle(context) {
    return new TextStyle(
      fontSize: 17,
      color: Theme.of(context).backgroundColor,
    );
  }

  static TextStyle getHeaderTextStyle(context) {
    return TextStyle(
        color: Theme.of(context).backgroundColor,
        fontSize: highFontSize,
        fontWeight: FontWeight.w500,
        fontFamily: 'Lato');
  }

  static TextStyle getHeadersubTextStyle(context) {
    return TextStyle(
        color: Theme.of(context).backgroundColor,
        fontSize: smallFontSize,
        fontWeight: FontWeight.w500,
        fontFamily: 'Lato');
  }

  static TextStyle getHeadersubTextStyleSmall(context) {
    return TextStyle(
        color: Theme.of(context).backgroundColor,
        fontSize: extraSmallFontSize,
        fontWeight: FontWeight.w500,
        fontFamily: 'Lato');
  }

// Circular Char Style
  static TextStyle getCircularBarNameStyle(context) {
    return TextStyle(
        color: Theme.of(context).primaryColor,
        fontSize: extraSmallFontSize,
        fontWeight: FontWeight.w400,
        fontFamily: 'Lato');
  }

  static TextStyle getCircularBarCountStyle(context) {
    return TextStyle(
        color: Theme.of(context).primaryColor,
        fontSize: highFontSize,
        fontWeight: FontWeight.w600,
        fontFamily: 'Lato');
  }

// Committee Card Hompage Style
  static TextStyle getCardHeadingStyle(context) {
    return TextStyle(
        color: Theme.of(context).primaryColor,
        fontSize: smallFontSize,
        fontWeight: FontWeight.w700,
        fontFamily: 'Lato');
  }

  static TextStyle getCardSubHeadingStyle(context) {
    return TextStyle(
        color: Colors.black, fontSize: smallFontSize, fontFamily: 'Lato');
  }

  static TextStyle getCardSmallHeadingStyle(context) {
    return TextStyle(
        color: Colors.black, fontSize: extraSmallFontSize, fontFamily: 'Lato');
  }

  static TextStyle getMainTextStyle(context) {
    return TextStyle(
        color: Colors.black,
        fontSize: highFontSize,
        fontWeight: FontWeight.w700,
        fontFamily: 'Lato');
  }
}
