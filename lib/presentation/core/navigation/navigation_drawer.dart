import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/data/network/auth/auth_repository.dart';
import 'package:portfolio/injection.dart';
import 'package:portfolio/presentation/constants/colors.dart';
import 'package:portfolio/presentation/core/navigation/navigation_authentication.dart';
import 'package:portfolio/presentation/core/navigation/navigation_footer.dart';
import 'package:portfolio/presentation/core/navigation/navigation_header.dart';
import 'package:portfolio/presentation/core/navigation/navigation_massage.dart';
import 'package:portfolio/presentation/core/navigation/navigation_menu.dart';
import 'package:portfolio/presentation/core/navigation/navigation_route_observer.dart';
import 'package:portfolio/presentation/routes/routes.dart';

class NavigationDrawer extends StatefulWidget with RouteAware {
  const NavigationDrawer({super.key});

  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> with RouteAware {
  final NavigationRouteObserver _routeObserver = getIt<NavigationRouteObserver>();
  final AuthRepository _authRepository = getIt<AuthRepository>();

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
                      StreamBuilder<AuthState>(
                        stream: _authRepository.stream,
                        builder: (context, snapshot) =>
                            snapshot.data?.when(
                              signedIn: (email) => NavigationAuthentication(
                                email: email,
                                buttonLabel: 'Sign Out',
                                buttonOnPressed: () => _authRepository.signOut(),
                              ),
                              signedOut: () => NavigationAuthentication(
                                email: 'No email',
                                buttonLabel: 'Sign In',
                                buttonOnPressed: () => context.go(Routes.login),
                              ),
                            ) ??
                            NavigationAuthentication(
                              email: 'No email',
                              buttonLabel: 'Sign In',
                              buttonOnPressed: () => context.go(Routes.login),
                            ),
                      ),
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
