// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'experiences_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ExperiencesEventTearOff {
  const _$ExperiencesEventTearOff();

  LoadExperiences loadExperiences() {
    return const LoadExperiences();
  }
}

// ignore: unused_element
const $ExperiencesEvent = _$ExperiencesEventTearOff();

mixin _$ExperiencesEvent {}

abstract class $ExperiencesEventCopyWith<$Res> {
  factory $ExperiencesEventCopyWith(ExperiencesEvent value, $Res Function(ExperiencesEvent) then) =
      _$ExperiencesEventCopyWithImpl<$Res>;
}

class _$ExperiencesEventCopyWithImpl<$Res> implements $ExperiencesEventCopyWith<$Res> {
  _$ExperiencesEventCopyWithImpl(this._value, this._then);

  final ExperiencesEvent _value;
  // ignore: unused_field
  final $Res Function(ExperiencesEvent) _then;
}

abstract class $LoadExperiencesCopyWith<$Res> {
  factory $LoadExperiencesCopyWith(LoadExperiences value, $Res Function(LoadExperiences) then) =
      _$LoadExperiencesCopyWithImpl<$Res>;
}

class _$LoadExperiencesCopyWithImpl<$Res> extends _$ExperiencesEventCopyWithImpl<$Res>
    implements $LoadExperiencesCopyWith<$Res> {
  _$LoadExperiencesCopyWithImpl(LoadExperiences _value, $Res Function(LoadExperiences) _then)
      : super(_value, (v) => _then(v as LoadExperiences));

  @override
  LoadExperiences get _value => super._value as LoadExperiences;
}

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
}

abstract class LoadExperiences implements ExperiencesEvent {
  const factory LoadExperiences() = _$LoadExperiences;
}

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

// ignore: unused_element
const $ExperiencesState = _$ExperiencesStateTearOff();

mixin _$ExperiencesState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result loaded(List<ExperienceState> experiences),
    @required Result error(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result loaded(List<ExperienceState> experiences),
    Result error(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(ExperiencesLoading value),
    @required Result loaded(ExperiencesLoaded value),
    @required Result error(ExperiencesError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(ExperiencesLoading value),
    Result loaded(ExperiencesLoaded value),
    Result error(ExperiencesError value),
    @required Result orElse(),
  });
}

abstract class $ExperiencesStateCopyWith<$Res> {
  factory $ExperiencesStateCopyWith(ExperiencesState value, $Res Function(ExperiencesState) then) =
      _$ExperiencesStateCopyWithImpl<$Res>;
}

class _$ExperiencesStateCopyWithImpl<$Res> implements $ExperiencesStateCopyWith<$Res> {
  _$ExperiencesStateCopyWithImpl(this._value, this._then);

  final ExperiencesState _value;
  // ignore: unused_field
  final $Res Function(ExperiencesState) _then;
}

abstract class $ExperiencesLoadingCopyWith<$Res> {
  factory $ExperiencesLoadingCopyWith(ExperiencesLoading value, $Res Function(ExperiencesLoading) then) =
      _$ExperiencesLoadingCopyWithImpl<$Res>;
}

class _$ExperiencesLoadingCopyWithImpl<$Res> extends _$ExperiencesStateCopyWithImpl<$Res>
    implements $ExperiencesLoadingCopyWith<$Res> {
  _$ExperiencesLoadingCopyWithImpl(ExperiencesLoading _value, $Res Function(ExperiencesLoading) _then)
      : super(_value, (v) => _then(v as ExperiencesLoading));

  @override
  ExperiencesLoading get _value => super._value as ExperiencesLoading;
}

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
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result loaded(List<ExperienceState> experiences),
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
    Result loaded(List<ExperienceState> experiences),
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
    @required Result loading(ExperiencesLoading value),
    @required Result loaded(ExperiencesLoaded value),
    @required Result error(ExperiencesError value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(ExperiencesLoading value),
    Result loaded(ExperiencesLoaded value),
    Result error(ExperiencesError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ExperiencesLoading implements ExperiencesState {
  const factory ExperiencesLoading() = _$ExperiencesLoading;
}

abstract class $ExperiencesLoadedCopyWith<$Res> {
  factory $ExperiencesLoadedCopyWith(ExperiencesLoaded value, $Res Function(ExperiencesLoaded) then) =
      _$ExperiencesLoadedCopyWithImpl<$Res>;
  $Res call({List<ExperienceState> experiences});
}

class _$ExperiencesLoadedCopyWithImpl<$Res> extends _$ExperiencesStateCopyWithImpl<$Res>
    implements $ExperiencesLoadedCopyWith<$Res> {
  _$ExperiencesLoadedCopyWithImpl(ExperiencesLoaded _value, $Res Function(ExperiencesLoaded) _then)
      : super(_value, (v) => _then(v as ExperiencesLoaded));

  @override
  ExperiencesLoaded get _value => super._value as ExperiencesLoaded;

  @override
  $Res call({
    Object experiences = freezed,
  }) {
    return _then(ExperiencesLoaded(
      experiences == freezed ? _value.experiences : experiences as List<ExperienceState>,
    ));
  }
}

class _$ExperiencesLoaded implements ExperiencesLoaded {
  const _$ExperiencesLoaded(this.experiences) : assert(experiences != null);

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

  @override
  $ExperiencesLoadedCopyWith<ExperiencesLoaded> get copyWith =>
      _$ExperiencesLoadedCopyWithImpl<ExperiencesLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result loaded(List<ExperienceState> experiences),
    @required Result error(),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(experiences);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result loaded(List<ExperienceState> experiences),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(experiences);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(ExperiencesLoading value),
    @required Result loaded(ExperiencesLoaded value),
    @required Result error(ExperiencesError value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(ExperiencesLoading value),
    Result loaded(ExperiencesLoaded value),
    Result error(ExperiencesError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ExperiencesLoaded implements ExperiencesState {
  const factory ExperiencesLoaded(List<ExperienceState> experiences) = _$ExperiencesLoaded;

  List<ExperienceState> get experiences;
  $ExperiencesLoadedCopyWith<ExperiencesLoaded> get copyWith;
}

abstract class $ExperiencesErrorCopyWith<$Res> {
  factory $ExperiencesErrorCopyWith(ExperiencesError value, $Res Function(ExperiencesError) then) =
      _$ExperiencesErrorCopyWithImpl<$Res>;
}

class _$ExperiencesErrorCopyWithImpl<$Res> extends _$ExperiencesStateCopyWithImpl<$Res>
    implements $ExperiencesErrorCopyWith<$Res> {
  _$ExperiencesErrorCopyWithImpl(ExperiencesError _value, $Res Function(ExperiencesError) _then)
      : super(_value, (v) => _then(v as ExperiencesError));

  @override
  ExperiencesError get _value => super._value as ExperiencesError;
}

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
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result loaded(List<ExperienceState> experiences),
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
    Result loaded(List<ExperienceState> experiences),
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
    @required Result loading(ExperiencesLoading value),
    @required Result loaded(ExperiencesLoaded value),
    @required Result error(ExperiencesError value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(ExperiencesLoading value),
    Result loaded(ExperiencesLoaded value),
    Result error(ExperiencesError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ExperiencesError implements ExperiencesState {
  const factory ExperiencesError() = _$ExperiencesError;
}
