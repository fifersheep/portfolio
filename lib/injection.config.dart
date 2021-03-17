// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'domain/core/formatter/date_formatter.dart';
import 'data/network/experiences/experience_parser.dart';
import 'domain/experiences/experiences_bloc.dart';
import 'domain/experiences/experiences_repository.dart';
import 'data/network/firebase_injectable_module.dart';
import 'data/network/experiences/firestore_experience_parser.dart';
import 'data/network/experiences/firestore_experiences_repository.dart';
import 'data/network/projects/firestore_project_parser.dart';
import 'data/network/projects/firestore_projects_repository.dart';
import 'presentation/core/navigation/navigation_route_observer.dart';
import 'domain/core/formatter/new_line_formatter.dart';
import 'data/network/projects/project_parser.dart';
import 'domain/projects/projects_bloc.dart';
import 'domain/projects/projects_repository.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<DateFormatter>(() => DateFormatter());
  gh.lazySingleton<ExperienceParser<DocumentSnapshot>>(() => FirestoreExperienceParser());
  gh.lazySingleton<FirebaseFirestore>(() => firebaseInjectableModule.firestore);
  gh.lazySingleton<NavigationRouteObserver>(() => NavigationRouteObserver());
  gh.lazySingleton<NewLineFormatter>(() => NewLineFormatter());
  gh.lazySingleton<ProjectParser<DocumentSnapshot>>(() => FirestoreProjectParser());
  gh.lazySingleton<ProjectsRepository>(
      () => FirestoreProjectsRepository(get<FirebaseFirestore>(), get<ProjectParser<DocumentSnapshot>>()));
  gh.lazySingleton<ExperiencesRepository>(
      () => FirestoreExperiencesRepository(get<FirebaseFirestore>(), get<ExperienceParser<DocumentSnapshot>>()));
  gh.lazySingleton<ProjectsBloc>(() => ProjectsBloc(get<ProjectsRepository>()));
  gh.lazySingleton<ExperiencesBloc>(() => ExperiencesBloc(
        get<ExperiencesRepository>(),
        get<DateFormatter>(),
        get<NewLineFormatter>(),
      ));
  return get;
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
