import 'package:flutter/material.dart';

import '../../widgets/navigation/navigation_drawer.dart';

class PageScaffold extends StatelessWidget {
  PageScaffold({this.title, this.headerBackground, this.body});

  final String title;
  final String headerBackground;
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
                  expandedHeight: 300.0,
                  flexibleSpace: FlexibleSpaceBar(
                    title: Text(
                      title,
                      style: Theme.of(context).primaryTextTheme.headline6,
                    ),
                    background: headerBackground != null ? Image.asset(
                      headerBackground,
                      fit: BoxFit.cover,
                    ) : null,
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate([
                    Container(
                        alignment: Alignment.center,
                        child: ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: 1200.0),
                          child: body,
                        ),
                      ),
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
