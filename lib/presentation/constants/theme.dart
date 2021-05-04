import 'package:flutter/material.dart';
import 'package:portfolio/presentation/core/navigation/page_transition.dart';

import 'colors.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get defaultTheme => ThemeData(
      brightness: Brightness.light,
      primarySwatch: ThemeColors.primary,
      accentColor: ThemeColors.secondary[300],
      typography: Typography.material2018(englishLike: _textTheme),
      dividerColor: Colors.grey,
      fontFamily: 'Montserrat',
      pageTransitionsTheme: pageTransitionsTheme(),
      buttonTheme: const ButtonThemeData(
        layoutBehavior: ButtonBarLayoutBehavior.constrained,
        height: 32,
      ));

  static TextTheme get _textTheme => TextTheme(
        headline1: textStyle(fontSize: 96.0, fontWeight: FontWeight.w300, letterSpacing: -1.5),
        headline2: textStyle(fontSize: 60.0, fontWeight: FontWeight.w300, letterSpacing: -0.5),
        headline3: textStyle(fontSize: 48.0, fontWeight: FontWeight.w400, letterSpacing: 0.0),
        headline4: textStyle(
          fontSize: 34.0,
          fontWeight: FontWeight.w400,
          height: 3.0,
          letterSpacing: 0.25,
        ),
        headline5: textStyle(fontSize: 24.0, fontWeight: FontWeight.w400, letterSpacing: 0.0),
        headline6: textStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w500,
          height: 3.0,
          letterSpacing: 0.15,
        ),
        bodyText1: textStyle(fontSize: 16.0, fontWeight: FontWeight.w400, letterSpacing: 0.5),
        bodyText2: textStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.w400,
          height: 1.6,
          letterSpacing: 0.25,
          fontFamilyFallback: [
            'Noto Color Emoji',
          ],
        ),
        subtitle1: textStyle(fontSize: 16.0, fontWeight: FontWeight.w400, letterSpacing: 0.15),
        subtitle2: textStyle(fontSize: 14.0, fontWeight: FontWeight.w500, letterSpacing: 0.1),
        button: textStyle(fontSize: 14.0, fontWeight: FontWeight.w500, letterSpacing: 1.25),
        caption: textStyle(fontSize: 12.0, fontWeight: FontWeight.w400, letterSpacing: 0.4),
        overline: textStyle(fontSize: 10.0, fontWeight: FontWeight.w400, letterSpacing: 1.5),
      );
}

TextStyle textStyle({
  double? fontSize,
  FontWeight? fontWeight,
  double? letterSpacing,
  double? height,
  List<String>? fontFamilyFallback,
}) =>
    TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamilyFallback: fontFamilyFallback,
      letterSpacing: letterSpacing,
      height: height,
      textBaseline: TextBaseline.alphabetic,
    );
