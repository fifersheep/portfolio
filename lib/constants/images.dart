import 'package:flutter/material.dart';

class Images extends InheritedWidget {
  static Images of(BuildContext context) => context.dependOnInheritedWidgetOfExactType<Images>();

  const Images({Key key, @required Widget child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(Images old) => false;

  final String avatar = 'assets/images/avatar.jpeg';
  final String introHeaderBackground = 'assets/images/intro_bg.png';
}
