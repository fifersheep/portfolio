// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'projects_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProjectsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadProjects,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadProjects,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProjects value)? loadProjects,
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
      _$ProjectsEventCopyWithImpl<$Res, ProjectsEvent>;
}

/// @nodoc
class _$ProjectsEventCopyWithImpl<$Res, $Val extends ProjectsEvent> implements $ProjectsEventCopyWith<$Res> {
  _$ProjectsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadProjectsCopyWith<$Res> {
  factory _$$LoadProjectsCopyWith(_$LoadProjects value, $Res Function(_$LoadProjects) then) =
      __$$LoadProjectsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadProjectsCopyWithImpl<$Res> extends _$ProjectsEventCopyWithImpl<$Res, _$LoadProjects>
    implements _$$LoadProjectsCopyWith<$Res> {
  __$$LoadProjectsCopyWithImpl(_$LoadProjects _value, $Res Function(_$LoadProjects) _then) : super(_value, _then);
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
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$LoadProjects);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadProjects,
  }) {
    return loadProjects?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProjects value)? loadProjects,
  }) {
    return loadProjects?.call(this);
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
mixin _$ProjectsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ProjectState> projects) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ProjectState> projects)? loaded,
    TResult? Function()? error,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectsLoading value)? loading,
    TResult? Function(ProjectsLoaded value)? loaded,
    TResult? Function(ProjectsError value)? error,
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
      _$ProjectsStateCopyWithImpl<$Res, ProjectsState>;
}

/// @nodoc
class _$ProjectsStateCopyWithImpl<$Res, $Val extends ProjectsState> implements $ProjectsStateCopyWith<$Res> {
  _$ProjectsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProjectsLoadingCopyWith<$Res> {
  factory _$$ProjectsLoadingCopyWith(_$ProjectsLoading value, $Res Function(_$ProjectsLoading) then) =
      __$$ProjectsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProjectsLoadingCopyWithImpl<$Res> extends _$ProjectsStateCopyWithImpl<$Res, _$ProjectsLoading>
    implements _$$ProjectsLoadingCopyWith<$Res> {
  __$$ProjectsLoadingCopyWithImpl(_$ProjectsLoading _value, $Res Function(_$ProjectsLoading) _then)
      : super(_value, _then);
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
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$ProjectsLoading);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ProjectState> projects)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectsLoading value)? loading,
    TResult? Function(ProjectsLoaded value)? loaded,
    TResult? Function(ProjectsError value)? error,
  }) {
    return loading?.call(this);
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
abstract class _$$ProjectsLoadedCopyWith<$Res> {
  factory _$$ProjectsLoadedCopyWith(_$ProjectsLoaded value, $Res Function(_$ProjectsLoaded) then) =
      __$$ProjectsLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProjectState> projects});
}

/// @nodoc
class __$$ProjectsLoadedCopyWithImpl<$Res> extends _$ProjectsStateCopyWithImpl<$Res, _$ProjectsLoaded>
    implements _$$ProjectsLoadedCopyWith<$Res> {
  __$$ProjectsLoadedCopyWithImpl(_$ProjectsLoaded _value, $Res Function(_$ProjectsLoaded) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projects = null,
  }) {
    return _then(_$ProjectsLoaded(
      null == projects
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<ProjectState>,
    ));
  }
}

/// @nodoc

class _$ProjectsLoaded implements ProjectsLoaded {
  const _$ProjectsLoaded(final List<ProjectState> projects) : _projects = projects;

  final List<ProjectState> _projects;
  @override
  List<ProjectState> get projects {
    if (_projects is EqualUnmodifiableListView) return _projects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projects);
  }

  @override
  String toString() {
    return 'ProjectsState.loaded(projects: $projects)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectsLoaded &&
            const DeepCollectionEquality().equals(other._projects, _projects));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_projects));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectsLoadedCopyWith<_$ProjectsLoaded> get copyWith =>
      __$$ProjectsLoadedCopyWithImpl<_$ProjectsLoaded>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ProjectState> projects)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(projects);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectsLoading value)? loading,
    TResult? Function(ProjectsLoaded value)? loaded,
    TResult? Function(ProjectsError value)? error,
  }) {
    return loaded?.call(this);
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
  const factory ProjectsLoaded(final List<ProjectState> projects) = _$ProjectsLoaded;

  List<ProjectState> get projects;
  @JsonKey(ignore: true)
  _$$ProjectsLoadedCopyWith<_$ProjectsLoaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProjectsErrorCopyWith<$Res> {
  factory _$$ProjectsErrorCopyWith(_$ProjectsError value, $Res Function(_$ProjectsError) then) =
      __$$ProjectsErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProjectsErrorCopyWithImpl<$Res> extends _$ProjectsStateCopyWithImpl<$Res, _$ProjectsError>
    implements _$$ProjectsErrorCopyWith<$Res> {
  __$$ProjectsErrorCopyWithImpl(_$ProjectsError _value, $Res Function(_$ProjectsError) _then) : super(_value, _then);
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
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$ProjectsError);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ProjectState> projects)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectsLoading value)? loading,
    TResult? Function(ProjectsLoaded value)? loaded,
    TResult? Function(ProjectsError value)? error,
  }) {
    return error?.call(this);
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
