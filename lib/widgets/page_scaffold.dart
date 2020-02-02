import 'package:flutter/material.dart';

import 'navigation/navigation_drawer.dart';

class PageScaffold extends StatelessWidget {
  PageScaffold({this.title, this.headerBackground, this.body});

  final Widget title;
  final Widget headerBackground;
  final Widget body;

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
            drawer: isMobile
                ? const NavigationDrawer(
                    pinOpen: false,
                  )
                : null,
            body: CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  pinned: true,
                  automaticallyImplyLeading: isMobile,
                  expandedHeight: 250.0,
                  flexibleSpace: FlexibleSpaceBar(
                    title: title,
                    background: Image.asset(
                      'assets/images/intro_bg.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate([
                    Container(
                      alignment: Alignment.center,
                      child: body,
                    )
                  ]),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
