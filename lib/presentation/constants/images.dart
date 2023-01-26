import 'package:flutter/material.dart';

class Images extends InheritedWidget {
  static Images of(BuildContext context) {
    final result = context.dependOnInheritedWidgetOfExactType<Images>();
    assert(result != null, 'No Images found in context');
    return result!;
  }

  const Images({super.key, required super.child});

  @override
  bool updateShouldNotify(Images old) => false;

  String get avatar => 'assets/images/avatar.jpeg';
  String get introHeaderBanner => 'assets/images/intro_header_banner.png';
}
