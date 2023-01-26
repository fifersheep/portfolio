import 'package:flutter/material.dart';
import 'package:portfolio/presentation/constants/colors.dart';
import 'package:portfolio/presentation/core/navigation/page_transition.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get defaultTheme => ThemeData(
        brightness: Brightness.light,
        primarySwatch: ThemeColors.primary,
        colorScheme: ColorScheme.light(
          primary: ThemeColors.primary,
          secondary: ThemeColors.secondary.shade300,
        ),
        typography: Typography.material2018(englishLike: _textTheme),
        dividerColor: Colors.grey,
        fontFamily: 'Montserrat',
        pageTransitionsTheme: pageTransitionsTheme(),
        buttonTheme: const ButtonThemeData(
          layoutBehavior: ButtonBarLayoutBehavior.constrained,
          height: 32,
        ),
      );

  static TextTheme get _textTheme => TextTheme(
        displayLarge: textStyle(fontSize: 96.0, fontWeight: FontWeight.w300, letterSpacing: -1.5),
        displayMedium: textStyle(fontSize: 60.0, fontWeight: FontWeight.w300, letterSpacing: -0.5),
        displaySmall: textStyle(fontSize: 48.0, fontWeight: FontWeight.w400, letterSpacing: 0.0),
        headlineMedium: textStyle(
          fontSize: 34.0,
          fontWeight: FontWeight.w400,
          height: 3.0,
          letterSpacing: 0.25,
        ),
        headlineSmall: textStyle(fontSize: 24.0, fontWeight: FontWeight.w400, letterSpacing: 0.0),
        titleLarge: textStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w500,
          height: 3.0,
          letterSpacing: 0.15,
        ),
        bodyLarge: textStyle(fontSize: 16.0, fontWeight: FontWeight.w400, letterSpacing: 0.5),
        bodyMedium: textStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.w400,
          height: 1.6,
          letterSpacing: 0.25,
          fontFamilyFallback: [
            'Noto Color Emoji',
          ],
        ),
        titleMedium: textStyle(fontSize: 16.0, fontWeight: FontWeight.w400, letterSpacing: 0.15),
        titleSmall: textStyle(fontSize: 14.0, fontWeight: FontWeight.w500, letterSpacing: 0.1),
        labelLarge: textStyle(fontSize: 14.0, fontWeight: FontWeight.w500, letterSpacing: 1.25),
        bodySmall: textStyle(fontSize: 12.0, fontWeight: FontWeight.w400, letterSpacing: 0.4),
        labelSmall: textStyle(fontSize: 10.0, fontWeight: FontWeight.w400, letterSpacing: 1.5),
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
