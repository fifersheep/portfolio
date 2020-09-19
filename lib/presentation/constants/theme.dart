import 'package:flutter/material.dart';
import 'package:portfolio/presentation/core/navigation/page_transition.dart';

import 'colors.dart';

final ThemeData appTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: ThemeColors.primary,
    accentColor: ThemeColors.secondary[300],
    typography: Typography.material2018(),
    dividerColor: Colors.grey,
    fontFamily: 'Montserrat',
    pageTransitionsTheme:
        pageTransitionsTheme(), // TODO: Decide whether to keep this, I can't get it to work with fluro
    buttonTheme: const ButtonThemeData(
      layoutBehavior: ButtonBarLayoutBehavior.constrained,
      height: 32,
    ));
