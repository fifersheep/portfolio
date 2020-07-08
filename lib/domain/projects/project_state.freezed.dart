// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'project_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ProjectStateTearOff {
  const _$ProjectStateTearOff();

  _ProjectState call({String title, String summary, String detail, List<ProjectTagsState> tags}) {
    return _ProjectState(
      title: title,
      summary: summary,
      detail: detail,
      tags: tags,
    );
  }
}

// ignore: unused_element
const $ProjectState = _$ProjectStateTearOff();

mixin _$ProjectState {
  String get title;
  String get summary;
  String get detail;
  List<ProjectTagsState> get tags;

  $ProjectStateCopyWith<ProjectState> get copyWith;
}

abstract class $ProjectStateCopyWith<$Res> {
  factory $ProjectStateCopyWith(ProjectState value, $Res Function(ProjectState) then) =
      _$ProjectStateCopyWithImpl<$Res>;
  $Res call({String title, String summary, String detail, List<ProjectTagsState> tags});
}

class _$ProjectStateCopyWithImpl<$Res> implements $ProjectStateCopyWith<$Res> {
  _$ProjectStateCopyWithImpl(this._value, this._then);

  final ProjectState _value;
  // ignore: unused_field
  final $Res Function(ProjectState) _then;

  @override
  $Res call({
    Object title = freezed,
    Object summary = freezed,
    Object detail = freezed,
    Object tags = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      summary: summary == freezed ? _value.summary : summary as String,
      detail: detail == freezed ? _value.detail : detail as String,
      tags: tags == freezed ? _value.tags : tags as List<ProjectTagsState>,
    ));
  }
}

abstract class _$ProjectStateCopyWith<$Res> implements $ProjectStateCopyWith<$Res> {
  factory _$ProjectStateCopyWith(_ProjectState value, $Res Function(_ProjectState) then) =
      __$ProjectStateCopyWithImpl<$Res>;
  @override
  $Res call({String title, String summary, String detail, List<ProjectTagsState> tags});
}

class __$ProjectStateCopyWithImpl<$Res> extends _$ProjectStateCopyWithImpl<$Res>
    implements _$ProjectStateCopyWith<$Res> {
  __$ProjectStateCopyWithImpl(_ProjectState _value, $Res Function(_ProjectState) _then)
      : super(_value, (v) => _then(v as _ProjectState));

  @override
  _ProjectState get _value => super._value as _ProjectState;

  @override
  $Res call({
    Object title = freezed,
    Object summary = freezed,
    Object detail = freezed,
    Object tags = freezed,
  }) {
    return _then(_ProjectState(
      title: title == freezed ? _value.title : title as String,
      summary: summary == freezed ? _value.summary : summary as String,
      detail: detail == freezed ? _value.detail : detail as String,
      tags: tags == freezed ? _value.tags : tags as List<ProjectTagsState>,
    ));
  }
}

class _$_ProjectState implements _ProjectState {
  const _$_ProjectState({this.title, this.summary, this.detail, this.tags});

  @override
  final String title;
  @override
  final String summary;
  @override
  final String detail;
  @override
  final List<ProjectTagsState> tags;

  @override
  String toString() {
    return 'ProjectState(title: $title, summary: $summary, detail: $detail, tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProjectState &&
            (identical(other.title, title) || const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.summary, summary) || const DeepCollectionEquality().equals(other.summary, summary)) &&
            (identical(other.detail, detail) || const DeepCollectionEquality().equals(other.detail, detail)) &&
            (identical(other.tags, tags) || const DeepCollectionEquality().equals(other.tags, tags)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(summary) ^
      const DeepCollectionEquality().hash(detail) ^
      const DeepCollectionEquality().hash(tags);

  @override
  _$ProjectStateCopyWith<_ProjectState> get copyWith => __$ProjectStateCopyWithImpl<_ProjectState>(this, _$identity);
}

abstract class _ProjectState implements ProjectState {
  const factory _ProjectState({String title, String summary, String detail, List<ProjectTagsState> tags}) =
      _$_ProjectState;

  @override
  String get title;
  @override
  String get summary;
  @override
  String get detail;
  @override
  List<ProjectTagsState> get tags;
  @override
  _$ProjectStateCopyWith<_ProjectState> get copyWith;
}

class _$ProjectTagsStateTearOff {
  const _$ProjectTagsStateTearOff();

  _ProjectTagsState call({String label, String color, ProjectTagStyle style}) {
    return _ProjectTagsState(
      label: label,
      color: color,
      style: style,
    );
  }
}

// ignore: unused_element
const $ProjectTagsState = _$ProjectTagsStateTearOff();

mixin _$ProjectTagsState {
  String get label;
  String get color;
  ProjectTagStyle get style;

  $ProjectTagsStateCopyWith<ProjectTagsState> get copyWith;
}

abstract class $ProjectTagsStateCopyWith<$Res> {
  factory $ProjectTagsStateCopyWith(ProjectTagsState value, $Res Function(ProjectTagsState) then) =
      _$ProjectTagsStateCopyWithImpl<$Res>;
  $Res call({String label, String color, ProjectTagStyle style});
}

class _$ProjectTagsStateCopyWithImpl<$Res> implements $ProjectTagsStateCopyWith<$Res> {
  _$ProjectTagsStateCopyWithImpl(this._value, this._then);

  final ProjectTagsState _value;
  // ignore: unused_field
  final $Res Function(ProjectTagsState) _then;

  @override
  $Res call({
    Object label = freezed,
    Object color = freezed,
    Object style = freezed,
  }) {
    return _then(_value.copyWith(
      label: label == freezed ? _value.label : label as String,
      color: color == freezed ? _value.color : color as String,
      style: style == freezed ? _value.style : style as ProjectTagStyle,
    ));
  }
}

abstract class _$ProjectTagsStateCopyWith<$Res> implements $ProjectTagsStateCopyWith<$Res> {
  factory _$ProjectTagsStateCopyWith(_ProjectTagsState value, $Res Function(_ProjectTagsState) then) =
      __$ProjectTagsStateCopyWithImpl<$Res>;
  @override
  $Res call({String label, String color, ProjectTagStyle style});
}

class __$ProjectTagsStateCopyWithImpl<$Res> extends _$ProjectTagsStateCopyWithImpl<$Res>
    implements _$ProjectTagsStateCopyWith<$Res> {
  __$ProjectTagsStateCopyWithImpl(_ProjectTagsState _value, $Res Function(_ProjectTagsState) _then)
      : super(_value, (v) => _then(v as _ProjectTagsState));

  @override
  _ProjectTagsState get _value => super._value as _ProjectTagsState;

  @override
  $Res call({
    Object label = freezed,
    Object color = freezed,
    Object style = freezed,
  }) {
    return _then(_ProjectTagsState(
      label: label == freezed ? _value.label : label as String,
      color: color == freezed ? _value.color : color as String,
      style: style == freezed ? _value.style : style as ProjectTagStyle,
    ));
  }
}

class _$_ProjectTagsState implements _ProjectTagsState {
  const _$_ProjectTagsState({this.label, this.color, this.style});

  @override
  final String label;
  @override
  final String color;
  @override
  final ProjectTagStyle style;

  @override
  String toString() {
    return 'ProjectTagsState(label: $label, color: $color, style: $style)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProjectTagsState &&
            (identical(other.label, label) || const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.color, color) || const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.style, style) || const DeepCollectionEquality().equals(other.style, style)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(style);

  @override
  _$ProjectTagsStateCopyWith<_ProjectTagsState> get copyWith =>
      __$ProjectTagsStateCopyWithImpl<_ProjectTagsState>(this, _$identity);
}

abstract class _ProjectTagsState implements ProjectTagsState {
  const factory _ProjectTagsState({String label, String color, ProjectTagStyle style}) = _$_ProjectTagsState;

  @override
  String get label;
  @override
  String get color;
  @override
  ProjectTagStyle get style;
  @override
  _$ProjectTagsStateCopyWith<_ProjectTagsState> get copyWith;
}
