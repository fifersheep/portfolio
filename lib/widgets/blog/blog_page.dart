import 'package:flutter/material.dart';

import '../navigation/navigation_drawer.dart';

class BlogPage extends StatelessWidget {
  const BlogPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blog Title"),
      ),
      drawer: NavigationDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Blog Content',
            ),
          ],
        ),
      ),
    );
  }
}
