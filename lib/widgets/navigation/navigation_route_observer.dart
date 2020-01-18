import 'package:flutter/material.dart';

class NavigationRouteObserver extends RouteObserver<PageRoute> {
  factory NavigationRouteObserver() => _instance;

  NavigationRouteObserver._private();

  static final NavigationRouteObserver _instance =
      NavigationRouteObserver._private();
}
