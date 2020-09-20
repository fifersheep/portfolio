// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'projects_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ProjectsEventTearOff {
  const _$ProjectsEventTearOff();

  LoadProjects loadProjects() {
    return const LoadProjects();
  }
}

// ignore: unused_element
const $ProjectsEvent = _$ProjectsEventTearOff();

mixin _$ProjectsEvent {}

abstract class $ProjectsEventCopyWith<$Res> {
  factory $ProjectsEventCopyWith(ProjectsEvent value, $Res Function(ProjectsEvent) then) =
      _$ProjectsEventCopyWithImpl<$Res>;
}

class _$ProjectsEventCopyWithImpl<$Res> implements $ProjectsEventCopyWith<$Res> {
  _$ProjectsEventCopyWithImpl(this._value, this._then);

  final ProjectsEvent _value;
  // ignore: unused_field
  final $Res Function(ProjectsEvent) _then;
}

abstract class $LoadProjectsCopyWith<$Res> {
  factory $LoadProjectsCopyWith(LoadProjects value, $Res Function(LoadProjects) then) =
      _$LoadProjectsCopyWithImpl<$Res>;
}

class _$LoadProjectsCopyWithImpl<$Res> extends _$ProjectsEventCopyWithImpl<$Res>
    implements $LoadProjectsCopyWith<$Res> {
  _$LoadProjectsCopyWithImpl(LoadProjects _value, $Res Function(LoadProjects) _then)
      : super(_value, (v) => _then(v as LoadProjects));

  @override
  LoadProjects get _value => super._value as LoadProjects;
}

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
}

abstract class LoadProjects implements ProjectsEvent {
  const factory LoadProjects() = _$LoadProjects;
}

class _$ProjectsStateTearOff {
  const _$ProjectsStateTearOff();

  ProjectsLoading loading() {
    return const ProjectsLoading();
  }

  ProjectsLoaded loaded(List<ProjectState> projects) {
    return ProjectsLoaded(
      projects,
    );
  }

  ProjectsError error() {
    return const ProjectsError();
  }
}

// ignore: unused_element
const $ProjectsState = _$ProjectsStateTearOff();

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

abstract class $ProjectsStateCopyWith<$Res> {
  factory $ProjectsStateCopyWith(ProjectsState value, $Res Function(ProjectsState) then) =
      _$ProjectsStateCopyWithImpl<$Res>;
}

class _$ProjectsStateCopyWithImpl<$Res> implements $ProjectsStateCopyWith<$Res> {
  _$ProjectsStateCopyWithImpl(this._value, this._then);

  final ProjectsState _value;
  // ignore: unused_field
  final $Res Function(ProjectsState) _then;
}

abstract class $ProjectsLoadingCopyWith<$Res> {
  factory $ProjectsLoadingCopyWith(ProjectsLoading value, $Res Function(ProjectsLoading) then) =
      _$ProjectsLoadingCopyWithImpl<$Res>;
}

class _$ProjectsLoadingCopyWithImpl<$Res> extends _$ProjectsStateCopyWithImpl<$Res>
    implements $ProjectsLoadingCopyWith<$Res> {
  _$ProjectsLoadingCopyWithImpl(ProjectsLoading _value, $Res Function(ProjectsLoading) _then)
      : super(_value, (v) => _then(v as ProjectsLoading));

  @override
  ProjectsLoading get _value => super._value as ProjectsLoading;
}

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

abstract class $ProjectsLoadedCopyWith<$Res> {
  factory $ProjectsLoadedCopyWith(ProjectsLoaded value, $Res Function(ProjectsLoaded) then) =
      _$ProjectsLoadedCopyWithImpl<$Res>;
  $Res call({List<ProjectState> projects});
}

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

abstract class $ProjectsErrorCopyWith<$Res> {
  factory $ProjectsErrorCopyWith(ProjectsError value, $Res Function(ProjectsError) then) =
      _$ProjectsErrorCopyWithImpl<$Res>;
}

class _$ProjectsErrorCopyWithImpl<$Res> extends _$ProjectsStateCopyWithImpl<$Res>
    implements $ProjectsErrorCopyWith<$Res> {
  _$ProjectsErrorCopyWithImpl(ProjectsError _value, $Res Function(ProjectsError) _then)
      : super(_value, (v) => _then(v as ProjectsError));

  @override
  ProjectsError get _value => super._value as ProjectsError;
}

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
