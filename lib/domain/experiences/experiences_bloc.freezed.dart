// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'experiences_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExperiencesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadExperiences,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadExperiences,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadExperiences value)? loadExperiences,
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
      _$ExperiencesEventCopyWithImpl<$Res, ExperiencesEvent>;
}

/// @nodoc
class _$ExperiencesEventCopyWithImpl<$Res, $Val extends ExperiencesEvent> implements $ExperiencesEventCopyWith<$Res> {
  _$ExperiencesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadExperiencesCopyWith<$Res> {
  factory _$$LoadExperiencesCopyWith(_$LoadExperiences value, $Res Function(_$LoadExperiences) then) =
      __$$LoadExperiencesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadExperiencesCopyWithImpl<$Res> extends _$ExperiencesEventCopyWithImpl<$Res, _$LoadExperiences>
    implements _$$LoadExperiencesCopyWith<$Res> {
  __$$LoadExperiencesCopyWithImpl(_$LoadExperiences _value, $Res Function(_$LoadExperiences) _then)
      : super(_value, _then);
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
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$LoadExperiences);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadExperiences,
  }) {
    return loadExperiences?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadExperiences value)? loadExperiences,
  }) {
    return loadExperiences?.call(this);
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
mixin _$ExperiencesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ExperienceState> experiences) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ExperienceState> experiences)? loaded,
    TResult? Function()? error,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExperiencesLoading value)? loading,
    TResult? Function(ExperiencesLoaded value)? loaded,
    TResult? Function(ExperiencesError value)? error,
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
      _$ExperiencesStateCopyWithImpl<$Res, ExperiencesState>;
}

/// @nodoc
class _$ExperiencesStateCopyWithImpl<$Res, $Val extends ExperiencesState> implements $ExperiencesStateCopyWith<$Res> {
  _$ExperiencesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ExperiencesLoadingCopyWith<$Res> {
  factory _$$ExperiencesLoadingCopyWith(_$ExperiencesLoading value, $Res Function(_$ExperiencesLoading) then) =
      __$$ExperiencesLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExperiencesLoadingCopyWithImpl<$Res> extends _$ExperiencesStateCopyWithImpl<$Res, _$ExperiencesLoading>
    implements _$$ExperiencesLoadingCopyWith<$Res> {
  __$$ExperiencesLoadingCopyWithImpl(_$ExperiencesLoading _value, $Res Function(_$ExperiencesLoading) _then)
      : super(_value, _then);
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
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$ExperiencesLoading);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ExperienceState> experiences)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExperiencesLoading value)? loading,
    TResult? Function(ExperiencesLoaded value)? loaded,
    TResult? Function(ExperiencesError value)? error,
  }) {
    return loading?.call(this);
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
abstract class _$$ExperiencesLoadedCopyWith<$Res> {
  factory _$$ExperiencesLoadedCopyWith(_$ExperiencesLoaded value, $Res Function(_$ExperiencesLoaded) then) =
      __$$ExperiencesLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ExperienceState> experiences});
}

/// @nodoc
class __$$ExperiencesLoadedCopyWithImpl<$Res> extends _$ExperiencesStateCopyWithImpl<$Res, _$ExperiencesLoaded>
    implements _$$ExperiencesLoadedCopyWith<$Res> {
  __$$ExperiencesLoadedCopyWithImpl(_$ExperiencesLoaded _value, $Res Function(_$ExperiencesLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? experiences = null,
  }) {
    return _then(_$ExperiencesLoaded(
      null == experiences
          ? _value._experiences
          : experiences // ignore: cast_nullable_to_non_nullable
              as List<ExperienceState>,
    ));
  }
}

/// @nodoc

class _$ExperiencesLoaded implements ExperiencesLoaded {
  const _$ExperiencesLoaded(final List<ExperienceState> experiences) : _experiences = experiences;

  final List<ExperienceState> _experiences;
  @override
  List<ExperienceState> get experiences {
    if (_experiences is EqualUnmodifiableListView) return _experiences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_experiences);
  }

  @override
  String toString() {
    return 'ExperiencesState.loaded(experiences: $experiences)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExperiencesLoaded &&
            const DeepCollectionEquality().equals(other._experiences, _experiences));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_experiences));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExperiencesLoadedCopyWith<_$ExperiencesLoaded> get copyWith =>
      __$$ExperiencesLoadedCopyWithImpl<_$ExperiencesLoaded>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ExperienceState> experiences)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(experiences);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExperiencesLoading value)? loading,
    TResult? Function(ExperiencesLoaded value)? loaded,
    TResult? Function(ExperiencesError value)? error,
  }) {
    return loaded?.call(this);
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
  const factory ExperiencesLoaded(final List<ExperienceState> experiences) = _$ExperiencesLoaded;

  List<ExperienceState> get experiences;
  @JsonKey(ignore: true)
  _$$ExperiencesLoadedCopyWith<_$ExperiencesLoaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExperiencesErrorCopyWith<$Res> {
  factory _$$ExperiencesErrorCopyWith(_$ExperiencesError value, $Res Function(_$ExperiencesError) then) =
      __$$ExperiencesErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExperiencesErrorCopyWithImpl<$Res> extends _$ExperiencesStateCopyWithImpl<$Res, _$ExperiencesError>
    implements _$$ExperiencesErrorCopyWith<$Res> {
  __$$ExperiencesErrorCopyWithImpl(_$ExperiencesError _value, $Res Function(_$ExperiencesError) _then)
      : super(_value, _then);
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
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$ExperiencesError);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ExperienceState> experiences)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExperiencesLoading value)? loading,
    TResult? Function(ExperiencesLoaded value)? loaded,
    TResult? Function(ExperiencesError value)? error,
  }) {
    return error?.call(this);
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
