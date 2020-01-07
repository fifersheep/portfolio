import 'package:flutter/material.dart';
import 'colors.dart';

final ThemeData appTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: primary,
    primaryTextTheme: Typography().black.apply(bodyColor: textOnPrimary),
    dividerColor: Colors.grey,
    fontFamily: 'Montserrat',
    floatingActionButtonTheme:
        FloatingActionButtonThemeData(backgroundColor: secondary));
