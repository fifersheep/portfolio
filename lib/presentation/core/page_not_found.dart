import 'package:flutter/material.dart';
import 'package:portfolio/presentation/constants/strings.dart';
import 'package:portfolio/presentation/core/page_scaffold.dart';

class PageNotFound extends StatelessWidget {
  @override
  Widget build(BuildContext context) => PageScaffold(
        title: '',
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(Strings.of(context).pageNotFound),
            ],
          ),
        ),
      );
}
