import 'package:flutter/material.dart';

class _NoOpPageTransitionsBuilder extends PageTransitionsBuilder {
  const _NoOpPageTransitionsBuilder();

  @override
  Widget buildTransitions<T>(
      PageRoute<T> route,
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
    return child;
  }
}

PageTransitionsTheme pageTransitionsTheme() => PageTransitionsTheme(
      builders: Map.fromIterable(
        TargetPlatform.values.toList(),
        key: (key) => key,
        value: (_) => const _NoOpPageTransitionsBuilder(),
      ),
    );
