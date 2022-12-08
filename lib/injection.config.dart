// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'data/network/experiences/stubbed_experiences_repository.dart' as _i5;
import 'data/network/projects/stubbed_projects_repository.dart' as _i9;
import 'domain/core/formatter/date_formatter.dart' as _i3;
import 'domain/core/formatter/new_line_formatter.dart' as _i7;
import 'domain/experiences/experiences_bloc.dart' as _i10;
import 'domain/experiences/experiences_repository.dart' as _i4;
import 'domain/projects/projects_bloc.dart' as _i11;
import 'domain/projects/projects_repository.dart' as _i8;
import 'presentation/core/navigation/navigation_route_observer.dart' as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get, {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.DateFormatter>(() => _i3.DateFormatter());
  gh.lazySingleton<_i4.ExperiencesRepository>(() => _i5.StubbedExperiencesRepository());
  gh.lazySingleton<_i6.NavigationRouteObserver>(() => _i6.NavigationRouteObserver());
  gh.lazySingleton<_i7.NewLineFormatter>(() => _i7.NewLineFormatter());
  gh.lazySingleton<_i8.ProjectsRepository>(() => _i9.StubbedProjectsRepository());
  gh.lazySingleton<_i10.ExperiencesBloc>(() =>
      _i10.ExperiencesBloc(get<_i4.ExperiencesRepository>(), get<_i3.DateFormatter>(), get<_i7.NewLineFormatter>()));
  gh.lazySingleton<_i11.ProjectsBloc>(() => _i11.ProjectsBloc(get<_i8.ProjectsRepository>()));
  return get;
}
