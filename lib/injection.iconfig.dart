// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:portfolio/data/network/experiences/static_experiences_repository.dart';
import 'package:portfolio/domain/experiences/experiences_repository.dart';
import 'package:portfolio/presentation/core/navigation/navigation_route_observer.dart';
import 'package:portfolio/domain/experiences/experiences_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  g.registerLazySingleton<ExperiencesRepository>(() => StaticExperiencesRepository());
  g.registerLazySingleton<NavigationRouteObserver>(() => NavigationRouteObserver());
  g.registerLazySingleton<ExperiencesBloc>(() => ExperiencesBloc(g<ExperiencesRepository>()));
}
