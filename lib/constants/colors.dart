import 'package:flutter/material.dart';

const Color text = Color(0xFF1e1e2a);
const Color textOnPrimary = Color(0xE6FFFFFF);
const Color textOnPrimaryLight = Color(0xFFFFFFFF);
const Color textOnPrimaryDark = Color(0xCCFFFFFF);
const Color textOnSecondary = Color(0x8F000000);
const Color textOnSecondaryLight = Color(0x96000000);
const Color textOnSecondaryDark = Color(0x8F000000);

const Color white = Color(0xFFFFFFFF);

class ThemeColors {
  ThemeColors._();

  static const int _primaryValue = 0xFF1268b8;
  static const MaterialColor primary = MaterialColor(
    _primaryValue,
    <int, Color>{
      50: Color(0xFF5da8ef),
      100: Color(0xFF459ced),
      200: Color(0xFF2e8fea),
      300: Color(0xFF1783e8),
      400: Color(0xFF1576d1),
      500: Color(_primaryValue),
      600: Color(0xFF105ca2),
      700: Color(0xFF0e4f8b),
      800: Color(0xFF0b4174),
      900: Color(0xFF09345d),
    },
  );

  static const int _secondaryValue = 0xFFffd323;
  static const MaterialColor secondary = MaterialColor(
    _secondaryValue,
    <int, Color>{
      50: Color(0xFFfff0b3),
      100: Color(0xFFffeb99),
      200: Color(0xFFffe680),
      300: Color(0xFFffe066),
      400: Color(0xFFffdb4d),
      500: Color(_secondaryValue),
      600: Color(0xFFffcc00),
      700: Color(0xFFe6b800),
      800: Color(0xFFcca300),
      900: Color(0xFFb38f00),
    },
  );
}
