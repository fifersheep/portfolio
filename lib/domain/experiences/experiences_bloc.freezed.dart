// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'experiences_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ExperiencesEventTearOff {
  const _$ExperiencesEventTearOff();

  LoadExperiences loadExperiences() {
    return const LoadExperiences();
  }
}

/// @nodoc
const $ExperiencesEvent = _$ExperiencesEventTearOff();

/// @nodoc
mixin _$ExperiencesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadExperiences,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadExperiences,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadExperiences value) loadExperiences,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadExperiences value)? loadExperiences,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperiencesEventCopyWith<$Res> {
  factory $ExperiencesEventCopyWith(ExperiencesEvent value, $Res Function(ExperiencesEvent) then) =
      _$ExperiencesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExperiencesEventCopyWithImpl<$Res> implements $ExperiencesEventCopyWith<$Res> {
  _$ExperiencesEventCopyWithImpl(this._value, this._then);

  final ExperiencesEvent _value;
  // ignore: unused_field
  final $Res Function(ExperiencesEvent) _then;
}

/// @nodoc
abstract class $LoadExperiencesCopyWith<$Res> {
  factory $LoadExperiencesCopyWith(LoadExperiences value, $Res Function(LoadExperiences) then) =
      _$LoadExperiencesCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadExperiencesCopyWithImpl<$Res> extends _$ExperiencesEventCopyWithImpl<$Res>
    implements $LoadExperiencesCopyWith<$Res> {
  _$LoadExperiencesCopyWithImpl(LoadExperiences _value, $Res Function(LoadExperiences) _then)
      : super(_value, (v) => _then(v as LoadExperiences));

  @override
  LoadExperiences get _value => super._value as LoadExperiences;
}

/// @nodoc
class _$LoadExperiences implements LoadExperiences {
  const _$LoadExperiences();

  @override
  String toString() {
    return 'ExperiencesEvent.loadExperiences()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadExperiences);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadExperiences,
  }) {
    return loadExperiences();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadExperiences,
    required TResult orElse(),
  }) {
    if (loadExperiences != null) {
      return loadExperiences();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadExperiences value) loadExperiences,
  }) {
    return loadExperiences(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadExperiences value)? loadExperiences,
    required TResult orElse(),
  }) {
    if (loadExperiences != null) {
      return loadExperiences(this);
    }
    return orElse();
  }
}

abstract class LoadExperiences implements ExperiencesEvent {
  const factory LoadExperiences() = _$LoadExperiences;
}

/// @nodoc
class _$ExperiencesStateTearOff {
  const _$ExperiencesStateTearOff();

  ExperiencesLoading loading() {
    return const ExperiencesLoading();
  }

  ExperiencesLoaded loaded(List<ExperienceState> experiences) {
    return ExperiencesLoaded(
      experiences,
    );
  }

  ExperiencesError error() {
    return const ExperiencesError();
  }
}

/// @nodoc
const $ExperiencesState = _$ExperiencesStateTearOff();

/// @nodoc
mixin _$ExperiencesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ExperienceState> experiences) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ExperienceState> experiences)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExperiencesLoading value) loading,
    required TResult Function(ExperiencesLoaded value) loaded,
    required TResult Function(ExperiencesError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExperiencesLoading value)? loading,
    TResult Function(ExperiencesLoaded value)? loaded,
    TResult Function(ExperiencesError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperiencesStateCopyWith<$Res> {
  factory $ExperiencesStateCopyWith(ExperiencesState value, $Res Function(ExperiencesState) then) =
      _$ExperiencesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExperiencesStateCopyWithImpl<$Res> implements $ExperiencesStateCopyWith<$Res> {
  _$ExperiencesStateCopyWithImpl(this._value, this._then);

  final ExperiencesState _value;
  // ignore: unused_field
  final $Res Function(ExperiencesState) _then;
}

/// @nodoc
abstract class $ExperiencesLoadingCopyWith<$Res> {
  factory $ExperiencesLoadingCopyWith(ExperiencesLoading value, $Res Function(ExperiencesLoading) then) =
      _$ExperiencesLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExperiencesLoadingCopyWithImpl<$Res> extends _$ExperiencesStateCopyWithImpl<$Res>
    implements $ExperiencesLoadingCopyWith<$Res> {
  _$ExperiencesLoadingCopyWithImpl(ExperiencesLoading _value, $Res Function(ExperiencesLoading) _then)
      : super(_value, (v) => _then(v as ExperiencesLoading));

  @override
  ExperiencesLoading get _value => super._value as ExperiencesLoading;
}

/// @nodoc
class _$ExperiencesLoading implements ExperiencesLoading {
  const _$ExperiencesLoading();

  @override
  String toString() {
    return 'ExperiencesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ExperiencesLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ExperienceState> experiences) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ExperienceState> experiences)? loaded,
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
    required TResult Function(ExperiencesLoading value) loading,
    required TResult Function(ExperiencesLoaded value) loaded,
    required TResult Function(ExperiencesError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExperiencesLoading value)? loading,
    TResult Function(ExperiencesLoaded value)? loaded,
    TResult Function(ExperiencesError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ExperiencesLoading implements ExperiencesState {
  const factory ExperiencesLoading() = _$ExperiencesLoading;
}

/// @nodoc
abstract class $ExperiencesLoadedCopyWith<$Res> {
  factory $ExperiencesLoadedCopyWith(ExperiencesLoaded value, $Res Function(ExperiencesLoaded) then) =
      _$ExperiencesLoadedCopyWithImpl<$Res>;
  $Res call({List<ExperienceState> experiences});
}

/// @nodoc
class _$ExperiencesLoadedCopyWithImpl<$Res> extends _$ExperiencesStateCopyWithImpl<$Res>
    implements $ExperiencesLoadedCopyWith<$Res> {
  _$ExperiencesLoadedCopyWithImpl(ExperiencesLoaded _value, $Res Function(ExperiencesLoaded) _then)
      : super(_value, (v) => _then(v as ExperiencesLoaded));

  @override
  ExperiencesLoaded get _value => super._value as ExperiencesLoaded;

  @override
  $Res call({
    Object? experiences = freezed,
  }) {
    return _then(ExperiencesLoaded(
      experiences == freezed
          ? _value.experiences
          : experiences // ignore: cast_nullable_to_non_nullable
              as List<ExperienceState>,
    ));
  }
}

/// @nodoc
class _$ExperiencesLoaded implements ExperiencesLoaded {
  const _$ExperiencesLoaded(this.experiences);

  @override
  final List<ExperienceState> experiences;

  @override
  String toString() {
    return 'ExperiencesState.loaded(experiences: $experiences)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExperiencesLoaded &&
            (identical(other.experiences, experiences) ||
                const DeepCollectionEquality().equals(other.experiences, experiences)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(experiences);

  @JsonKey(ignore: true)
  @override
  $ExperiencesLoadedCopyWith<ExperiencesLoaded> get copyWith =>
      _$ExperiencesLoadedCopyWithImpl<ExperiencesLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ExperienceState> experiences) loaded,
    required TResult Function() error,
  }) {
    return loaded(experiences);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ExperienceState> experiences)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(experiences);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExperiencesLoading value) loading,
    required TResult Function(ExperiencesLoaded value) loaded,
    required TResult Function(ExperiencesError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExperiencesLoading value)? loading,
    TResult Function(ExperiencesLoaded value)? loaded,
    TResult Function(ExperiencesError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ExperiencesLoaded implements ExperiencesState {
  const factory ExperiencesLoaded(List<ExperienceState> experiences) = _$ExperiencesLoaded;

  List<ExperienceState> get experiences => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExperiencesLoadedCopyWith<ExperiencesLoaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperiencesErrorCopyWith<$Res> {
  factory $ExperiencesErrorCopyWith(ExperiencesError value, $Res Function(ExperiencesError) then) =
      _$ExperiencesErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExperiencesErrorCopyWithImpl<$Res> extends _$ExperiencesStateCopyWithImpl<$Res>
    implements $ExperiencesErrorCopyWith<$Res> {
  _$ExperiencesErrorCopyWithImpl(ExperiencesError _value, $Res Function(ExperiencesError) _then)
      : super(_value, (v) => _then(v as ExperiencesError));

  @override
  ExperiencesError get _value => super._value as ExperiencesError;
}

/// @nodoc
class _$ExperiencesError implements ExperiencesError {
  const _$ExperiencesError();

  @override
  String toString() {
    return 'ExperiencesState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ExperiencesError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ExperienceState> experiences) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ExperienceState> experiences)? loaded,
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
    required TResult Function(ExperiencesLoading value) loading,
    required TResult Function(ExperiencesLoaded value) loaded,
    required TResult Function(ExperiencesError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExperiencesLoading value)? loading,
    TResult Function(ExperiencesLoaded value)? loaded,
    TResult Function(ExperiencesError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ExperiencesError implements ExperiencesState {
  const factory ExperiencesError() = _$ExperiencesError;
}
