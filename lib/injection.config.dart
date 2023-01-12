// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:portfolio/data/network/experiences/supabase_experiences_repository.dart' as _i5;
import 'package:portfolio/data/network/projects/stubbed_projects_repository.dart' as _i9;
import 'package:portfolio/domain/core/formatter/date_formatter.dart' as _i3;
import 'package:portfolio/domain/core/formatter/new_line_formatter.dart' as _i7;
import 'package:portfolio/domain/experiences/experiences_bloc.dart' as _i10;
import 'package:portfolio/domain/experiences/experiences_repository.dart' as _i4;
import 'package:portfolio/domain/projects/projects_bloc.dart' as _i11;
import 'package:portfolio/domain/projects/projects_repository.dart' as _i8;
import 'package:portfolio/presentation/core/navigation/navigation_route_observer.dart' as _i6;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.DateFormatter>(() => _i3.DateFormatter());
    gh.lazySingleton<_i4.ExperiencesRepository>(() => _i5.SupabaseExperiencesRepository());
    gh.lazySingleton<_i6.NavigationRouteObserver>(() => _i6.NavigationRouteObserver());
    gh.lazySingleton<_i7.NewLineFormatter>(() => _i7.NewLineFormatter());
    gh.lazySingleton<_i8.ProjectsRepository>(() => _i9.StubbedProjectsRepository());
    gh.lazySingleton<_i10.ExperiencesBloc>(() => _i10.ExperiencesBloc(
          gh<_i4.ExperiencesRepository>(),
          gh<_i3.DateFormatter>(),
          gh<_i7.NewLineFormatter>(),
        ));
    gh.lazySingleton<_i11.ProjectsBloc>(() => _i11.ProjectsBloc(gh<_i8.ProjectsRepository>()));
    return this;
  }
}
