import 'package:flutter/material.dart';
import 'package:portfolio/widgets/navigation/page_transition.dart';
import 'colors.dart';

final ThemeData appTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: ThemeColors.primary,
  typography: Typography.material2018(),
  dividerColor: Colors.grey,
  fontFamily: 'Montserrat',
  pageTransitionsTheme: pageTransitionsTheme(),
);
