// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'project.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ProjectTearOff {
  const _$ProjectTearOff();

  _Project call({String title, String summary, String detail, List<ProjectTag> tags}) {
    return _Project(
      title: title,
      summary: summary,
      detail: detail,
      tags: tags,
    );
  }
}

// ignore: unused_element
const $Project = _$ProjectTearOff();

mixin _$Project {
  String get title;

  String get summary;

  String get detail;

  List<ProjectTag> get tags;

  $ProjectCopyWith<Project> get copyWith;
}

abstract class $ProjectCopyWith<$Res> {
  factory $ProjectCopyWith(Project value, $Res Function(Project) then) = _$ProjectCopyWithImpl<$Res>;

  $Res call({String title, String summary, String detail, List<ProjectTag> tags});
}

class _$ProjectCopyWithImpl<$Res> implements $ProjectCopyWith<$Res> {
  _$ProjectCopyWithImpl(this._value, this._then);

  final Project _value;

  // ignore: unused_field
  final $Res Function(Project) _then;

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
      tags: tags == freezed ? _value.tags : tags as List<ProjectTag>,
    ));
  }
}

abstract class _$ProjectCopyWith<$Res> implements $ProjectCopyWith<$Res> {
  factory _$ProjectCopyWith(_Project value, $Res Function(_Project) then) = __$ProjectCopyWithImpl<$Res>;

  @override
  $Res call({String title, String summary, String detail, List<ProjectTag> tags});
}

class __$ProjectCopyWithImpl<$Res> extends _$ProjectCopyWithImpl<$Res> implements _$ProjectCopyWith<$Res> {
  __$ProjectCopyWithImpl(_Project _value, $Res Function(_Project) _then) : super(_value, (v) => _then(v as _Project));

  @override
  _Project get _value => super._value as _Project;

  @override
  $Res call({
    Object title = freezed,
    Object summary = freezed,
    Object detail = freezed,
    Object tags = freezed,
  }) {
    return _then(_Project(
      title: title == freezed ? _value.title : title as String,
      summary: summary == freezed ? _value.summary : summary as String,
      detail: detail == freezed ? _value.detail : detail as String,
      tags: tags == freezed ? _value.tags : tags as List<ProjectTag>,
    ));
  }
}

class _$_Project implements _Project {
  const _$_Project({this.title, this.summary, this.detail, this.tags});

  @override
  final String title;
  @override
  final String summary;
  @override
  final String detail;
  @override
  final List<ProjectTag> tags;

  @override
  String toString() {
    return 'Project(title: $title, summary: $summary, detail: $detail, tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Project &&
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
  _$ProjectCopyWith<_Project> get copyWith => __$ProjectCopyWithImpl<_Project>(this, _$identity);
}

abstract class _Project implements Project {
  const factory _Project({String title, String summary, String detail, List<ProjectTag> tags}) = _$_Project;

  @override
  String get title;

  @override
  String get summary;

  @override
  String get detail;

  @override
  List<ProjectTag> get tags;

  @override
  _$ProjectCopyWith<_Project> get copyWith;
}

class _$ProjectTagTearOff {
  const _$ProjectTagTearOff();

  _ProjectTag call({String label, String color, String style}) {
    return _ProjectTag(
      label: label,
      color: color,
      style: style,
    );
  }
}

// ignore: unused_element
const $ProjectTag = _$ProjectTagTearOff();

mixin _$ProjectTag {
  String get label;

  String get color;

  String get style;

  $ProjectTagCopyWith<ProjectTag> get copyWith;
}

abstract class $ProjectTagCopyWith<$Res> {
  factory $ProjectTagCopyWith(ProjectTag value, $Res Function(ProjectTag) then) = _$ProjectTagCopyWithImpl<$Res>;

  $Res call({String label, String color, String style});
}

class _$ProjectTagCopyWithImpl<$Res> implements $ProjectTagCopyWith<$Res> {
  _$ProjectTagCopyWithImpl(this._value, this._then);

  final ProjectTag _value;

  // ignore: unused_field
  final $Res Function(ProjectTag) _then;

  @override
  $Res call({
    Object label = freezed,
    Object color = freezed,
    Object style = freezed,
  }) {
    return _then(_value.copyWith(
      label: label == freezed ? _value.label : label as String,
      color: color == freezed ? _value.color : color as String,
      style: style == freezed ? _value.style : style as String,
    ));
  }
}

abstract class _$ProjectTagCopyWith<$Res> implements $ProjectTagCopyWith<$Res> {
  factory _$ProjectTagCopyWith(_ProjectTag value, $Res Function(_ProjectTag) then) = __$ProjectTagCopyWithImpl<$Res>;

  @override
  $Res call({String label, String color, String style});
}

class __$ProjectTagCopyWithImpl<$Res> extends _$ProjectTagCopyWithImpl<$Res> implements _$ProjectTagCopyWith<$Res> {
  __$ProjectTagCopyWithImpl(_ProjectTag _value, $Res Function(_ProjectTag) _then)
      : super(_value, (v) => _then(v as _ProjectTag));

  @override
  _ProjectTag get _value => super._value as _ProjectTag;

  @override
  $Res call({
    Object label = freezed,
    Object color = freezed,
    Object style = freezed,
  }) {
    return _then(_ProjectTag(
      label: label == freezed ? _value.label : label as String,
      color: color == freezed ? _value.color : color as String,
      style: style == freezed ? _value.style : style as String,
    ));
  }
}

class _$_ProjectTag implements _ProjectTag {
  const _$_ProjectTag({this.label, this.color, this.style});

  @override
  final String label;
  @override
  final String color;
  @override
  final String style;

  @override
  String toString() {
    return 'ProjectTag(label: $label, color: $color, style: $style)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProjectTag &&
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
  _$ProjectTagCopyWith<_ProjectTag> get copyWith => __$ProjectTagCopyWithImpl<_ProjectTag>(this, _$identity);
}

abstract class _ProjectTag implements ProjectTag {
  const factory _ProjectTag({String label, String color, String style}) = _$_ProjectTag;

  @override
  String get label;

  @override
  String get color;

  @override
  String get style;

  @override
  _$ProjectTagCopyWith<_ProjectTag> get copyWith;
}
