// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'project.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ProjectTearOff {
  const _$ProjectTearOff();

  _Project call(
      {String title,
      String summary,
      String detail,
      String coverImageUrl,
      List<ProjectTag> tags,
      List<ProjectCallToAction> callToActions}) {
    return _Project(
      title: title,
      summary: summary,
      detail: detail,
      coverImageUrl: coverImageUrl,
      tags: tags,
      callToActions: callToActions,
    );
  }
}

// ignore: unused_element
const $Project = _$ProjectTearOff();

mixin _$Project {
  String get title;
  String get summary;
  String get detail;
  String get coverImageUrl;
  List<ProjectTag> get tags;
  List<ProjectCallToAction> get callToActions;

  $ProjectCopyWith<Project> get copyWith;
}

abstract class $ProjectCopyWith<$Res> {
  factory $ProjectCopyWith(Project value, $Res Function(Project) then) = _$ProjectCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String summary,
      String detail,
      String coverImageUrl,
      List<ProjectTag> tags,
      List<ProjectCallToAction> callToActions});
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
    Object coverImageUrl = freezed,
    Object tags = freezed,
    Object callToActions = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      summary: summary == freezed ? _value.summary : summary as String,
      detail: detail == freezed ? _value.detail : detail as String,
      coverImageUrl: coverImageUrl == freezed ? _value.coverImageUrl : coverImageUrl as String,
      tags: tags == freezed ? _value.tags : tags as List<ProjectTag>,
      callToActions: callToActions == freezed ? _value.callToActions : callToActions as List<ProjectCallToAction>,
    ));
  }
}

abstract class _$ProjectCopyWith<$Res> implements $ProjectCopyWith<$Res> {
  factory _$ProjectCopyWith(_Project value, $Res Function(_Project) then) = __$ProjectCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String summary,
      String detail,
      String coverImageUrl,
      List<ProjectTag> tags,
      List<ProjectCallToAction> callToActions});
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
    Object coverImageUrl = freezed,
    Object tags = freezed,
    Object callToActions = freezed,
  }) {
    return _then(_Project(
      title: title == freezed ? _value.title : title as String,
      summary: summary == freezed ? _value.summary : summary as String,
      detail: detail == freezed ? _value.detail : detail as String,
      coverImageUrl: coverImageUrl == freezed ? _value.coverImageUrl : coverImageUrl as String,
      tags: tags == freezed ? _value.tags : tags as List<ProjectTag>,
      callToActions: callToActions == freezed ? _value.callToActions : callToActions as List<ProjectCallToAction>,
    ));
  }
}

class _$_Project implements _Project {
  const _$_Project({this.title, this.summary, this.detail, this.coverImageUrl, this.tags, this.callToActions});

  @override
  final String title;
  @override
  final String summary;
  @override
  final String detail;
  @override
  final String coverImageUrl;
  @override
  final List<ProjectTag> tags;
  @override
  final List<ProjectCallToAction> callToActions;

  @override
  String toString() {
    return 'Project(title: $title, summary: $summary, detail: $detail, coverImageUrl: $coverImageUrl, tags: $tags, callToActions: $callToActions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Project &&
            (identical(other.title, title) || const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.summary, summary) || const DeepCollectionEquality().equals(other.summary, summary)) &&
            (identical(other.detail, detail) || const DeepCollectionEquality().equals(other.detail, detail)) &&
            (identical(other.coverImageUrl, coverImageUrl) ||
                const DeepCollectionEquality().equals(other.coverImageUrl, coverImageUrl)) &&
            (identical(other.tags, tags) || const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.callToActions, callToActions) ||
                const DeepCollectionEquality().equals(other.callToActions, callToActions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(summary) ^
      const DeepCollectionEquality().hash(detail) ^
      const DeepCollectionEquality().hash(coverImageUrl) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(callToActions);

  @override
  _$ProjectCopyWith<_Project> get copyWith => __$ProjectCopyWithImpl<_Project>(this, _$identity);
}

abstract class _Project implements Project {
  const factory _Project(
      {String title,
      String summary,
      String detail,
      String coverImageUrl,
      List<ProjectTag> tags,
      List<ProjectCallToAction> callToActions}) = _$_Project;

  @override
  String get title;
  @override
  String get summary;
  @override
  String get detail;
  @override
  String get coverImageUrl;
  @override
  List<ProjectTag> get tags;
  @override
  List<ProjectCallToAction> get callToActions;
  @override
  _$ProjectCopyWith<_Project> get copyWith;
}

class _$ProjectTagTearOff {
  const _$ProjectTagTearOff();

  _ProjectTag call({String label, String color, String labelColor, String style}) {
    return _ProjectTag(
      label: label,
      color: color,
      labelColor: labelColor,
      style: style,
    );
  }
}

// ignore: unused_element
const $ProjectTag = _$ProjectTagTearOff();

mixin _$ProjectTag {
  String get label;
  String get color;
  String get labelColor;
  String get style;

  $ProjectTagCopyWith<ProjectTag> get copyWith;
}

abstract class $ProjectTagCopyWith<$Res> {
  factory $ProjectTagCopyWith(ProjectTag value, $Res Function(ProjectTag) then) = _$ProjectTagCopyWithImpl<$Res>;
  $Res call({String label, String color, String labelColor, String style});
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
    Object labelColor = freezed,
    Object style = freezed,
  }) {
    return _then(_value.copyWith(
      label: label == freezed ? _value.label : label as String,
      color: color == freezed ? _value.color : color as String,
      labelColor: labelColor == freezed ? _value.labelColor : labelColor as String,
      style: style == freezed ? _value.style : style as String,
    ));
  }
}

abstract class _$ProjectTagCopyWith<$Res> implements $ProjectTagCopyWith<$Res> {
  factory _$ProjectTagCopyWith(_ProjectTag value, $Res Function(_ProjectTag) then) = __$ProjectTagCopyWithImpl<$Res>;
  @override
  $Res call({String label, String color, String labelColor, String style});
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
    Object labelColor = freezed,
    Object style = freezed,
  }) {
    return _then(_ProjectTag(
      label: label == freezed ? _value.label : label as String,
      color: color == freezed ? _value.color : color as String,
      labelColor: labelColor == freezed ? _value.labelColor : labelColor as String,
      style: style == freezed ? _value.style : style as String,
    ));
  }
}

class _$_ProjectTag implements _ProjectTag {
  const _$_ProjectTag({this.label, this.color, this.labelColor, this.style});

  @override
  final String label;
  @override
  final String color;
  @override
  final String labelColor;
  @override
  final String style;

  @override
  String toString() {
    return 'ProjectTag(label: $label, color: $color, labelColor: $labelColor, style: $style)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProjectTag &&
            (identical(other.label, label) || const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.color, color) || const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.labelColor, labelColor) ||
                const DeepCollectionEquality().equals(other.labelColor, labelColor)) &&
            (identical(other.style, style) || const DeepCollectionEquality().equals(other.style, style)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(labelColor) ^
      const DeepCollectionEquality().hash(style);

  @override
  _$ProjectTagCopyWith<_ProjectTag> get copyWith => __$ProjectTagCopyWithImpl<_ProjectTag>(this, _$identity);
}

abstract class _ProjectTag implements ProjectTag {
  const factory _ProjectTag({String label, String color, String labelColor, String style}) = _$_ProjectTag;

  @override
  String get label;
  @override
  String get color;
  @override
  String get labelColor;
  @override
  String get style;
  @override
  _$ProjectTagCopyWith<_ProjectTag> get copyWith;
}

class _$ProjectCallToActionTearOff {
  const _$ProjectCallToActionTearOff();

  _ProjectCallToAction call({String type, String action, String style, String label}) {
    return _ProjectCallToAction(
      type: type,
      action: action,
      style: style,
      label: label,
    );
  }
}

// ignore: unused_element
const $ProjectCallToAction = _$ProjectCallToActionTearOff();

mixin _$ProjectCallToAction {
  String get type;
  String get action;
  String get style;
  String get label;

  $ProjectCallToActionCopyWith<ProjectCallToAction> get copyWith;
}

abstract class $ProjectCallToActionCopyWith<$Res> {
  factory $ProjectCallToActionCopyWith(ProjectCallToAction value, $Res Function(ProjectCallToAction) then) =
      _$ProjectCallToActionCopyWithImpl<$Res>;
  $Res call({String type, String action, String style, String label});
}

class _$ProjectCallToActionCopyWithImpl<$Res> implements $ProjectCallToActionCopyWith<$Res> {
  _$ProjectCallToActionCopyWithImpl(this._value, this._then);

  final ProjectCallToAction _value;
  // ignore: unused_field
  final $Res Function(ProjectCallToAction) _then;

  @override
  $Res call({
    Object type = freezed,
    Object action = freezed,
    Object style = freezed,
    Object label = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed ? _value.type : type as String,
      action: action == freezed ? _value.action : action as String,
      style: style == freezed ? _value.style : style as String,
      label: label == freezed ? _value.label : label as String,
    ));
  }
}

abstract class _$ProjectCallToActionCopyWith<$Res> implements $ProjectCallToActionCopyWith<$Res> {
  factory _$ProjectCallToActionCopyWith(_ProjectCallToAction value, $Res Function(_ProjectCallToAction) then) =
      __$ProjectCallToActionCopyWithImpl<$Res>;
  @override
  $Res call({String type, String action, String style, String label});
}

class __$ProjectCallToActionCopyWithImpl<$Res> extends _$ProjectCallToActionCopyWithImpl<$Res>
    implements _$ProjectCallToActionCopyWith<$Res> {
  __$ProjectCallToActionCopyWithImpl(_ProjectCallToAction _value, $Res Function(_ProjectCallToAction) _then)
      : super(_value, (v) => _then(v as _ProjectCallToAction));

  @override
  _ProjectCallToAction get _value => super._value as _ProjectCallToAction;

  @override
  $Res call({
    Object type = freezed,
    Object action = freezed,
    Object style = freezed,
    Object label = freezed,
  }) {
    return _then(_ProjectCallToAction(
      type: type == freezed ? _value.type : type as String,
      action: action == freezed ? _value.action : action as String,
      style: style == freezed ? _value.style : style as String,
      label: label == freezed ? _value.label : label as String,
    ));
  }
}

class _$_ProjectCallToAction implements _ProjectCallToAction {
  const _$_ProjectCallToAction({this.type, this.action, this.style, this.label});

  @override
  final String type;
  @override
  final String action;
  @override
  final String style;
  @override
  final String label;

  @override
  String toString() {
    return 'ProjectCallToAction(type: $type, action: $action, style: $style, label: $label)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProjectCallToAction &&
            (identical(other.type, type) || const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.action, action) || const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.style, style) || const DeepCollectionEquality().equals(other.style, style)) &&
            (identical(other.label, label) || const DeepCollectionEquality().equals(other.label, label)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(style) ^
      const DeepCollectionEquality().hash(label);

  @override
  _$ProjectCallToActionCopyWith<_ProjectCallToAction> get copyWith =>
      __$ProjectCallToActionCopyWithImpl<_ProjectCallToAction>(this, _$identity);
}

abstract class _ProjectCallToAction implements ProjectCallToAction {
  const factory _ProjectCallToAction({String type, String action, String style, String label}) = _$_ProjectCallToAction;

  @override
  String get type;
  @override
  String get action;
  @override
  String get style;
  @override
  String get label;
  @override
  _$ProjectCallToActionCopyWith<_ProjectCallToAction> get copyWith;
}
