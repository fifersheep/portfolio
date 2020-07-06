// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:portfolio/domain/core/formatter/date_formatter.dart';
import 'package:portfolio/data/network/experiences/firestore_experience_parser.dart';
import 'package:portfolio/data/network/experiences/experience_parser.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:portfolio/data/network/firebase_injectable_module.dart';
import 'package:portfolio/presentation/core/navigation/navigation_route_observer.dart';
import 'package:portfolio/data/network/projects/firestore_project_parser.dart';
import 'package:portfolio/data/network/projects/project_parser.dart';
import 'package:portfolio/data/network/projects/firestore_projects_repository.dart';
import 'package:portfolio/domain/projects/entities/projects_repository.dart';
import 'package:portfolio/data/network/experiences/firestore_experiences_repository.dart';
import 'package:portfolio/domain/experiences/experiences_repository.dart';
import 'package:portfolio/domain/experiences/experiences_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  g.registerLazySingleton<DateFormatter>(() => DateFormatter());
  g.registerLazySingleton<ExperienceParser<DocumentSnapshot>>(() => FirestoreExperienceParser());
  g.registerLazySingleton<Firestore>(() => firebaseInjectableModule.firestore);
  g.registerLazySingleton<NavigationRouteObserver>(() => NavigationRouteObserver());
  g.registerLazySingleton<ProjectParser<DocumentSnapshot>>(() => FirestoreProjectParser());
  g.registerLazySingleton<ProjectsRepository>(
      () => FirestoreProjectsRepository(g<Firestore>(), g<ProjectParser<DocumentSnapshot>>()));
  g.registerLazySingleton<ExperiencesRepository>(
      () => FirestoreExperiencesRepository(g<Firestore>(), g<ExperienceParser<DocumentSnapshot>>()));
  g.registerLazySingleton<ExperiencesBloc>(() => ExperiencesBloc(g<ExperiencesRepository>(), g<DateFormatter>()));
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
