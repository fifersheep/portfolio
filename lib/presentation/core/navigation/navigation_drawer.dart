import 'package:flutter/material.dart';
import 'package:portfolio/presentation/constants/colors.dart';
import 'package:portfolio/presentation/core/navigation/navigation_footer.dart';
import 'package:portfolio/presentation/core/navigation/navigation_massage.dart';
import 'package:portfolio/presentation/core/navigation/navigation_menu.dart';

import '../../../injection.dart';
import 'navigation_header.dart';
import 'navigation_route_observer.dart';

class NavigationDrawer extends StatefulWidget with RouteAware {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> with RouteAware {
  final NavigationRouteObserver _routeObserver = getIt<NavigationRouteObserver>();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final route = ModalRoute.of(context);
    if (route != null) {
      _routeObserver.subscribe(this, route);
    }
  }

  @override
  void dispose() {
    _routeObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Theme(
        data: Theme.of(context).copyWith(
          canvasColor: ThemeColors.white,
        ),
        child: Drawer(
          child: LayoutBuilder(
            builder: (context, constraint) => SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraint.maxHeight),
                child: IntrinsicHeight(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      NavigationHeader(),
                      NavigationMessage(),
                      ...navigationMenuItems(context),
                      NavigationFooter(width: constraint.maxWidth),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
