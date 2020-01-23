import 'package:flutter/material.dart';

import 'widgets/navigation/navigation_drawer.dart';

class PageScaffold extends StatelessWidget {
  final Widget body;
  final Widget title;

  PageScaffold({this.title, this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: title,
      ),
      drawer: NavigationDrawer(),
      body: body,
    );
  }
}
