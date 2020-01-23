import 'package:flutter/material.dart';
import 'package:portfolio/page_scaffold.dart';

class BlogPage extends StatelessWidget {
  const BlogPage();

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      title: Text("Blog Title"),
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
