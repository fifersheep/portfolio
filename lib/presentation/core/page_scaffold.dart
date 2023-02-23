import 'package:flutter/material.dart' hide NavigationDrawer;

class PageScaffold extends StatelessWidget {
  const PageScaffold({
    required this.title,
    this.headerBackground,
    required this.body,
    this.maxWidth = 1200.0,
  });

  final String title;
  final String? headerBackground;
  final Widget body;
  final double maxWidth;

  @override
  Widget build(BuildContext context) => CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 300.0,
            flexibleSpace: FlexibleSpaceBar(
              background: headerBackground != null
                  ? Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.asset(
                          headerBackground!,
                          fit: BoxFit.fitHeight,
                        ),
                        Center(
                          child: Text(
                            title,
                            style: Theme.of(context).primaryTextTheme.titleLarge?.copyWith(height: 1),
                          ),
                        )
                      ],
                    )
                  : null,
            ),
          ),
          SliverLayoutBuilder(
            builder: (context, constraints) => SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  alignment: Alignment.center,
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: maxWidth,
                      minHeight: constraints.remainingPaintExtent,
                    ),
                    child: Column(
                      children: [body, const SizedBox(height: 36)],
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ],
      );
}
