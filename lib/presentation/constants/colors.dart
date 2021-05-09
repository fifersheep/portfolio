import 'package:flutter/material.dart';

class ThemeColors {
  ThemeColors._();

  static const MaterialColor primary = blue;
  static const MaterialColor secondary = yellow;

  static const Color text = Color(0xFF1e1e2a);
  static const Color textOnPrimary = Color(0xE6FFFFFF);
  static const Color textOnPrimaryLight = Color(0xFFFFFFFF);
  static const Color textOnPrimaryDark = Color(0xCCFFFFFF);
  static const Color textOnSecondary = Color(0x8F000000);
  static const Color textOnSecondaryLight = Color(0x96000000);
  static const Color textOnSecondaryDark = Color(0x8F000000);
  static const Color textOnWhite = Color(0x96000000);

  static const Color white = Color(0xFFFFFFFF);
  static const Color white25 = Color(0x40FFFFFF);

  static const Color black25 = Color(0x40000000);

  static const MaterialColor red = MaterialColor(_redPrimaryValue, {
    50: Color(0xFFFBEBEB),
    100: Color(0xFFF5CCCC),
    200: Color(0xFFEEAAAA),
    300: Color(0xFFE78888),
    400: Color(0xFFE26F6F),
    500: Color(_redPrimaryValue),
    600: Color(0xFFD94E4E),
    700: Color(0xFFD44444),
    800: Color(0xFFCF3B3B),
    900: Color(0xFFC72A2A),
  });
  static const int _redPrimaryValue = 0xFFDD5555;

  static const MaterialColor redAccent = MaterialColor(_redAccentValue, {
    100: Color(0xFFFFFFFF),
    200: Color(_redAccentValue),
    400: Color(0xFFFFA1A1),
    700: Color(0xFFFF8787),
  });
  static const int _redAccentValue = 0xFFFFD4D4;

  static const MaterialColor orange = MaterialColor(_orangePrimaryValue, {
    50: Color(0xFFFCF4E9),
    100: Color(0xFFF8E4C8),
    200: Color(0xFFF4D2A3),
    300: Color(0xFFEFBF7E),
    400: Color(0xFFEBB262),
    500: Color(_orangePrimaryValue),
    600: Color(0xFFE59C3F),
    700: Color(0xFFE29237),
    800: Color(0xFFDE892F),
    900: Color(0xFFD87820),
  });
  static const int _orangePrimaryValue = 0xFFE8A446;

  static const MaterialColor orangeAccent = MaterialColor(_orangeAccentValue, {
    100: Color(0xFFFFFFFF),
    200: Color(_orangeAccentValue),
    400: Color(0xFFFFD0AA),
    700: Color(0xFFFFC290),
  });
  static const int _orangeAccentValue = 0xFFFFECDD;

  static const MaterialColor yellow = MaterialColor(
    _yellowPrimaryValue,
    {
      50: Color(0xFFFFFAE5),
      100: Color(0xFFFFF2BD),
      200: Color(0xFFFFE991),
      300: Color(0xFFFFE065),
      400: Color(0xFFFFDA44),
      500: Color(_yellowPrimaryValue),
      600: Color(0xFFFFCE1F),
      700: Color(0xFFFFC81A),
      800: Color(0xFFFFC215),
      900: Color(0xFFFFB70C),
    },
  );
  static const int _yellowPrimaryValue = 0xFFffd323;

  static const MaterialColor yellowAccent = MaterialColor(_yellowAccentValue, {
    100: Color(0xFFFFFFFF),
    200: Color(_yellowAccentValue),
    400: Color(0xFFFFECC3),
    700: Color(0xFFFFE3A9),
  });
  static const int _yellowAccentValue = 0xFFFFFCF6;

  static const MaterialColor green = MaterialColor(_greenPrimaryValue, {
    50: Color(0xFFEBF4EC),
    100: Color(0xFFCDE3D0),
    200: Color(0xFFACD0B1),
    300: Color(0xFF8ABD92),
    400: Color(0xFF71AF7A),
    500: Color(_greenPrimaryValue),
    600: Color(0xFF50995B),
    700: Color(0xFF478F51),
    800: Color(0xFF3D8547),
    900: Color(0xFF2D7435),
  });
  static const int _greenPrimaryValue = 0xFF58A163;

  static const MaterialColor greenAccent = MaterialColor(_greenAccentValue, {
    100: Color(0xFFBCFFC3),
    200: Color(_greenAccentValue),
    400: Color(0xFF56FF69),
    700: Color(0xFF3CFF52),
  });
  static const int _greenAccentValue = 0xFF89FF96;

  static const MaterialColor blue = MaterialColor(
    _bluePrimaryValue,
    {
      50: Color(0xFFE6EFF6),
      100: Color(0xFFC1D6EA),
      200: Color(0xFF98BBDC),
      300: Color(0xFF6E9FCD),
      400: Color(0xFF4F8BC3),
      500: Color(_bluePrimaryValue),
      600: Color(0xFF2B6EB1),
      700: Color(0xFF2463A8),
      800: Color(0xFF1E59A0),
      900: Color(0xFF134691),
    },
  );
  static const int _bluePrimaryValue = 0xFF3076B8;

  static const MaterialColor blueAccent = MaterialColor(_blueAccentValue, {
    100: Color(0xFFC4DAFF),
    200: Color(_blueAccentValue),
    400: Color(0xFF5E99FF),
    700: Color(0xFF4589FF),
  });
  static const int _blueAccentValue = 0xFF91B9FF;

  static const MaterialColor purple = MaterialColor(_purplePrimaryValue, <int, Color>{
    50: Color(0xFFF1EFF7),
    100: Color(0xFFDCD7EA),
    200: Color(0xFFC5BCDD),
    300: Color(0xFFADA1CF),
    400: Color(0xFF9C8DC4),
    500: Color(_purplePrimaryValue),
    600: Color(0xFF8271B3),
    700: Color(0xFF7766AB),
    800: Color(0xFF6D5CA3),
    900: Color(0xFF5A4994),
  });
  static const int _purplePrimaryValue = 0xFF8A79BA;

  static const MaterialColor purpleAccent = MaterialColor(_purpleAccentValue, <int, Color>{
    100: Color(0xFFF3F0FF),
    200: Color(_purpleAccentValue),
    400: Color(0xFFA38AFF),
    700: Color(0xFF8F70FF),
  });
  static const int _purpleAccentValue = 0xFFCBBDFF;
}
