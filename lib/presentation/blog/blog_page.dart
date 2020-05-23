import 'package:flutter/material.dart';
import 'package:portfolio/presentation/constants/strings.dart';
import 'package:portfolio/presentation/core/page_scaffold.dart';

class BlogPage extends StatelessWidget {
  const BlogPage();

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      title: Strings.of(context).blogTitle,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Blog Content',
            ),
          ],
        ),
      ),
    );
  }
}
