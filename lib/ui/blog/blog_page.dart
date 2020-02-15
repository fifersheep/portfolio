import 'package:flutter/material.dart';
import 'package:portfolio/constants/strings.dart';
import 'package:portfolio/ui/common/page_scaffold.dart';

class BlogPage extends StatelessWidget {
  const BlogPage();

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      title: Strings.of(context).blogTitle,
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
