import 'package:flutter/material.dart';

class _NoOpPageTransitionsBuilder extends PageTransitionsBuilder {
  const _NoOpPageTransitionsBuilder();

  @override
  Widget buildTransitions<T>(
    PageRoute<T> route,
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return child;
  }
}

PageTransitionsTheme pageTransitionsTheme() {
  final builders = {
    for (TargetPlatform platform in TargetPlatform.values.toList()) platform: const _NoOpPageTransitionsBuilder()
  };
  return PageTransitionsTheme(
    builders: builders,
  );
}
