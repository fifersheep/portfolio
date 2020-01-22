import 'package:flutter/material.dart';

import '../navigation/navigation_drawer.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Experience Title"),
      ),
      drawer: NavigationDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Experience Content',
            ),
          ],
        ),
      ),
    );
  }
}
