import 'package:flutter/material.dart';

class Images extends InheritedWidget {
  static Images of(BuildContext context) => context.dependOnInheritedWidgetOfExactType<Images>();

  const Images({Key key, @required Widget child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(Images old) => false;

  String get avatar => 'assets/images/avatar.jpeg';
  String get introHeaderBanner => 'assets/images/intro_header_banner.png';
}
