// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'data/network/experiences/experience_parser.dart' as _i4;
import 'data/network/experiences/firestore_experience_parser.dart' as _i6;
import 'data/network/experiences/firestore_experiences_repository.dart' as _i14;
import 'data/network/firebase_injectable_module.dart' as _i17;
import 'data/network/projects/firestore_project_parser.dart' as _i10;
import 'data/network/projects/firestore_projects_repository.dart' as _i12;
import 'data/network/projects/project_parser.dart' as _i9;
import 'domain/core/formatter/date_formatter.dart' as _i3;
import 'domain/core/formatter/new_line_formatter.dart' as _i8;
import 'domain/experiences/experiences_bloc.dart' as _i16;
import 'domain/experiences/experiences_repository.dart' as _i13;
import 'domain/projects/projects_bloc.dart' as _i15;
import 'domain/projects/projects_repository.dart' as _i11;
import 'presentation/core/navigation/navigation_route_observer.dart' as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get, {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.DateFormatter>(() => _i3.DateFormatter());
  gh.lazySingleton<_i4.ExperienceParser<_i5.DocumentSnapshot>>(() => _i6.FirestoreExperienceParser());
  gh.lazySingleton<_i5.FirebaseFirestore>(() => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i7.NavigationRouteObserver>(() => _i7.NavigationRouteObserver());
  gh.lazySingleton<_i8.NewLineFormatter>(() => _i8.NewLineFormatter());
  gh.lazySingleton<_i9.ProjectParser<_i5.DocumentSnapshot>>(() => _i10.FirestoreProjectParser());
  gh.lazySingleton<_i11.ProjectsRepository>(() =>
      _i12.FirestoreProjectsRepository(get<_i5.FirebaseFirestore>(), get<_i9.ProjectParser<_i5.DocumentSnapshot>>()));
  gh.lazySingleton<_i13.ExperiencesRepository>(() => _i14.FirestoreExperiencesRepository(
      get<_i5.FirebaseFirestore>(), get<_i4.ExperienceParser<_i5.DocumentSnapshot>>()));
  gh.lazySingleton<_i15.ProjectsBloc>(() => _i15.ProjectsBloc(get<_i11.ProjectsRepository>()));
  gh.lazySingleton<_i16.ExperiencesBloc>(() =>
      _i16.ExperiencesBloc(get<_i13.ExperiencesRepository>(), get<_i3.DateFormatter>(), get<_i8.NewLineFormatter>()));
  return get;
}

class _$FirebaseInjectableModule extends _i17.FirebaseInjectableModule {}
