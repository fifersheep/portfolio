// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'projects_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ProjectsEventTearOff {
  const _$ProjectsEventTearOff();

// ignore: unused_element
  LoadProjects loadProjects() {
    return const LoadProjects();
  }
}

/// @nodoc
// ignore: unused_element
const $ProjectsEvent = _$ProjectsEventTearOff();

/// @nodoc
mixin _$ProjectsEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadProjects(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadProjects(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadProjects(LoadProjects value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadProjects(LoadProjects value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $ProjectsEventCopyWith<$Res> {
  factory $ProjectsEventCopyWith(ProjectsEvent value, $Res Function(ProjectsEvent) then) =
      _$ProjectsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProjectsEventCopyWithImpl<$Res> implements $ProjectsEventCopyWith<$Res> {
  _$ProjectsEventCopyWithImpl(this._value, this._then);

  final ProjectsEvent _value;
  // ignore: unused_field
  final $Res Function(ProjectsEvent) _then;
}

/// @nodoc
abstract class $LoadProjectsCopyWith<$Res> {
  factory $LoadProjectsCopyWith(LoadProjects value, $Res Function(LoadProjects) then) =
      _$LoadProjectsCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadProjectsCopyWithImpl<$Res> extends _$ProjectsEventCopyWithImpl<$Res>
    implements $LoadProjectsCopyWith<$Res> {
  _$LoadProjectsCopyWithImpl(LoadProjects _value, $Res Function(LoadProjects) _then)
      : super(_value, (v) => _then(v as LoadProjects));

  @override
  LoadProjects get _value => super._value as LoadProjects;
}

/// @nodoc
class _$LoadProjects implements LoadProjects {
  const _$LoadProjects();

  @override
  String toString() {
    return 'ProjectsEvent.loadProjects()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadProjects);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadProjects(),
  }) {
    assert(loadProjects != null);
    return loadProjects();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadProjects(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadProjects != null) {
      return loadProjects();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadProjects(LoadProjects value),
  }) {
    assert(loadProjects != null);
    return loadProjects(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadProjects(LoadProjects value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadProjects != null) {
      return loadProjects(this);
    }
    return orElse();
  }
}

abstract class LoadProjects implements ProjectsEvent {
  const factory LoadProjects() = _$LoadProjects;
}

/// @nodoc
class _$ProjectsStateTearOff {
  const _$ProjectsStateTearOff();

// ignore: unused_element
  ProjectsLoading loading() {
    return const ProjectsLoading();
  }

// ignore: unused_element
  ProjectsLoaded loaded(List<ProjectState> projects) {
    return ProjectsLoaded(
      projects,
    );
  }

// ignore: unused_element
  ProjectsError error() {
    return const ProjectsError();
  }
}

/// @nodoc
// ignore: unused_element
const $ProjectsState = _$ProjectsStateTearOff();

/// @nodoc
mixin _$ProjectsState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result loaded(List<ProjectState> projects),
    @required Result error(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result loaded(List<ProjectState> projects),
    Result error(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(ProjectsLoading value),
    @required Result loaded(ProjectsLoaded value),
    @required Result error(ProjectsError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(ProjectsLoading value),
    Result loaded(ProjectsLoaded value),
    Result error(ProjectsError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $ProjectsStateCopyWith<$Res> {
  factory $ProjectsStateCopyWith(ProjectsState value, $Res Function(ProjectsState) then) =
      _$ProjectsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProjectsStateCopyWithImpl<$Res> implements $ProjectsStateCopyWith<$Res> {
  _$ProjectsStateCopyWithImpl(this._value, this._then);

  final ProjectsState _value;
  // ignore: unused_field
  final $Res Function(ProjectsState) _then;
}

/// @nodoc
abstract class $ProjectsLoadingCopyWith<$Res> {
  factory $ProjectsLoadingCopyWith(ProjectsLoading value, $Res Function(ProjectsLoading) then) =
      _$ProjectsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProjectsLoadingCopyWithImpl<$Res> extends _$ProjectsStateCopyWithImpl<$Res>
    implements $ProjectsLoadingCopyWith<$Res> {
  _$ProjectsLoadingCopyWithImpl(ProjectsLoading _value, $Res Function(ProjectsLoading) _then)
      : super(_value, (v) => _then(v as ProjectsLoading));

  @override
  ProjectsLoading get _value => super._value as ProjectsLoading;
}

/// @nodoc
class _$ProjectsLoading implements ProjectsLoading {
  const _$ProjectsLoading();

  @override
  String toString() {
    return 'ProjectsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ProjectsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result loaded(List<ProjectState> projects),
    @required Result error(),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result loaded(List<ProjectState> projects),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(ProjectsLoading value),
    @required Result loaded(ProjectsLoaded value),
    @required Result error(ProjectsError value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(ProjectsLoading value),
    Result loaded(ProjectsLoaded value),
    Result error(ProjectsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProjectsLoading implements ProjectsState {
  const factory ProjectsLoading() = _$ProjectsLoading;
}

/// @nodoc
abstract class $ProjectsLoadedCopyWith<$Res> {
  factory $ProjectsLoadedCopyWith(ProjectsLoaded value, $Res Function(ProjectsLoaded) then) =
      _$ProjectsLoadedCopyWithImpl<$Res>;
  $Res call({List<ProjectState> projects});
}

/// @nodoc
class _$ProjectsLoadedCopyWithImpl<$Res> extends _$ProjectsStateCopyWithImpl<$Res>
    implements $ProjectsLoadedCopyWith<$Res> {
  _$ProjectsLoadedCopyWithImpl(ProjectsLoaded _value, $Res Function(ProjectsLoaded) _then)
      : super(_value, (v) => _then(v as ProjectsLoaded));

  @override
  ProjectsLoaded get _value => super._value as ProjectsLoaded;

  @override
  $Res call({
    Object projects = freezed,
  }) {
    return _then(ProjectsLoaded(
      projects == freezed ? _value.projects : projects as List<ProjectState>,
    ));
  }
}

/// @nodoc
class _$ProjectsLoaded implements ProjectsLoaded {
  const _$ProjectsLoaded(this.projects) : assert(projects != null);

  @override
  final List<ProjectState> projects;

  @override
  String toString() {
    return 'ProjectsState.loaded(projects: $projects)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProjectsLoaded &&
            (identical(other.projects, projects) || const DeepCollectionEquality().equals(other.projects, projects)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(projects);

  @override
  $ProjectsLoadedCopyWith<ProjectsLoaded> get copyWith =>
      _$ProjectsLoadedCopyWithImpl<ProjectsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result loaded(List<ProjectState> projects),
    @required Result error(),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(projects);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result loaded(List<ProjectState> projects),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(projects);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(ProjectsLoading value),
    @required Result loaded(ProjectsLoaded value),
    @required Result error(ProjectsError value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(ProjectsLoading value),
    Result loaded(ProjectsLoaded value),
    Result error(ProjectsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ProjectsLoaded implements ProjectsState {
  const factory ProjectsLoaded(List<ProjectState> projects) = _$ProjectsLoaded;

  List<ProjectState> get projects;
  $ProjectsLoadedCopyWith<ProjectsLoaded> get copyWith;
}

/// @nodoc
abstract class $ProjectsErrorCopyWith<$Res> {
  factory $ProjectsErrorCopyWith(ProjectsError value, $Res Function(ProjectsError) then) =
      _$ProjectsErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProjectsErrorCopyWithImpl<$Res> extends _$ProjectsStateCopyWithImpl<$Res>
    implements $ProjectsErrorCopyWith<$Res> {
  _$ProjectsErrorCopyWithImpl(ProjectsError _value, $Res Function(ProjectsError) _then)
      : super(_value, (v) => _then(v as ProjectsError));

  @override
  ProjectsError get _value => super._value as ProjectsError;
}

/// @nodoc
class _$ProjectsError implements ProjectsError {
  const _$ProjectsError();

  @override
  String toString() {
    return 'ProjectsState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ProjectsError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result loaded(List<ProjectState> projects),
    @required Result error(),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return error();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result loaded(List<ProjectState> projects),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(ProjectsLoading value),
    @required Result loaded(ProjectsLoaded value),
    @required Result error(ProjectsError value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(ProjectsLoading value),
    Result loaded(ProjectsLoaded value),
    Result error(ProjectsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProjectsError implements ProjectsState {
  const factory ProjectsError() = _$ProjectsError;
}
