// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'projects_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProjectsEventTearOff {
  const _$ProjectsEventTearOff();

  LoadProjects loadProjects() {
    return const LoadProjects();
  }
}

/// @nodoc
const $ProjectsEvent = _$ProjectsEventTearOff();

/// @nodoc
mixin _$ProjectsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadProjects,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadProjects,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProjects value) loadProjects,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProjects value)? loadProjects,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
  TResult when<TResult extends Object?>({
    required TResult Function() loadProjects,
  }) {
    return loadProjects();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadProjects,
    required TResult orElse(),
  }) {
    if (loadProjects != null) {
      return loadProjects();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProjects value) loadProjects,
  }) {
    return loadProjects(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProjects value)? loadProjects,
    required TResult orElse(),
  }) {
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

/// @nodoc
const $ProjectsState = _$ProjectsStateTearOff();

/// @nodoc
mixin _$ProjectsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ProjectState> projects) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ProjectState> projects)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectsLoading value) loading,
    required TResult Function(ProjectsLoaded value) loaded,
    required TResult Function(ProjectsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectsLoading value)? loading,
    TResult Function(ProjectsLoaded value)? loaded,
    TResult Function(ProjectsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ProjectState> projects) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ProjectState> projects)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectsLoading value) loading,
    required TResult Function(ProjectsLoaded value) loaded,
    required TResult Function(ProjectsError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectsLoading value)? loading,
    TResult Function(ProjectsLoaded value)? loaded,
    TResult Function(ProjectsError value)? error,
    required TResult orElse(),
  }) {
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
    Object? projects = freezed,
  }) {
    return _then(ProjectsLoaded(
      projects == freezed
          ? _value.projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<ProjectState>,
    ));
  }
}

/// @nodoc

class _$ProjectsLoaded implements ProjectsLoaded {
  const _$ProjectsLoaded(this.projects);

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

  @JsonKey(ignore: true)
  @override
  $ProjectsLoadedCopyWith<ProjectsLoaded> get copyWith =>
      _$ProjectsLoadedCopyWithImpl<ProjectsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ProjectState> projects) loaded,
    required TResult Function() error,
  }) {
    return loaded(projects);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ProjectState> projects)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(projects);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectsLoading value) loading,
    required TResult Function(ProjectsLoaded value) loaded,
    required TResult Function(ProjectsError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectsLoading value)? loading,
    TResult Function(ProjectsLoaded value)? loaded,
    TResult Function(ProjectsError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ProjectsLoaded implements ProjectsState {
  const factory ProjectsLoaded(List<ProjectState> projects) = _$ProjectsLoaded;

  List<ProjectState> get projects => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectsLoadedCopyWith<ProjectsLoaded> get copyWith => throw _privateConstructorUsedError;
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
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ProjectState> projects) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ProjectState> projects)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectsLoading value) loading,
    required TResult Function(ProjectsLoaded value) loaded,
    required TResult Function(ProjectsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectsLoading value)? loading,
    TResult Function(ProjectsLoaded value)? loaded,
    TResult Function(ProjectsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProjectsError implements ProjectsState {
  const factory ProjectsError() = _$ProjectsError;
}
