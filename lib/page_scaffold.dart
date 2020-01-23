import 'package:flutter/material.dart';

import 'widgets/navigation/navigation_drawer.dart';

class PageScaffold extends StatelessWidget {
  final Widget body;
  final Widget title;

  PageScaffold({this.title, this.body});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = MediaQuery.of(context).size.width < 1000;

    return Row(
      children: <Widget>[
        if (!isMobile)
          NavigationDrawer(
            pinOpen: true,
          ),
        Expanded(
          child: Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: isMobile,
              title: title,
              elevation: 1,
            ),
            drawer: isMobile
                ? const NavigationDrawer(
                    pinOpen: false,
                  )
                : null,
            body: body,
          ),
        ),
      ],
    );
  }
}
