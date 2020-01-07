import 'package:flutter/material.dart';

import 'theme/theme.dart';
import 'widgets/home/home_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scott Laing - Portfolio',
      theme: appTheme,
      home: HomePage(title: 'Scott Laing - Portfolio'),
    );
  }
}
