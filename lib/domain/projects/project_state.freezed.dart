// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'project_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ProjectStateTearOff {
  const _$ProjectStateTearOff();

// ignore: unused_element
  _ProjectState call(
      {String title,
      String summary,
      String detail,
      String coverImageUrl,
      List<ProjectTagState> tags,
      List<ProjectCallToActionState> callToActions}) {
    return _ProjectState(
      title: title,
      summary: summary,
      detail: detail,
      coverImageUrl: coverImageUrl,
      tags: tags,
      callToActions: callToActions,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProjectState = _$ProjectStateTearOff();

/// @nodoc
mixin _$ProjectState {
  String get title;
  String get summary;
  String get detail;
  String get coverImageUrl;
  List<ProjectTagState> get tags;
  List<ProjectCallToActionState> get callToActions;

  $ProjectStateCopyWith<ProjectState> get copyWith;
}

/// @nodoc
abstract class $ProjectStateCopyWith<$Res> {
  factory $ProjectStateCopyWith(ProjectState value, $Res Function(ProjectState) then) =
      _$ProjectStateCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String summary,
      String detail,
      String coverImageUrl,
      List<ProjectTagState> tags,
      List<ProjectCallToActionState> callToActions});
}

/// @nodoc
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
    Object coverImageUrl = freezed,
    Object tags = freezed,
    Object callToActions = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      summary: summary == freezed ? _value.summary : summary as String,
      detail: detail == freezed ? _value.detail : detail as String,
      coverImageUrl: coverImageUrl == freezed ? _value.coverImageUrl : coverImageUrl as String,
      tags: tags == freezed ? _value.tags : tags as List<ProjectTagState>,
      callToActions: callToActions == freezed ? _value.callToActions : callToActions as List<ProjectCallToActionState>,
    ));
  }
}

/// @nodoc
abstract class _$ProjectStateCopyWith<$Res> implements $ProjectStateCopyWith<$Res> {
  factory _$ProjectStateCopyWith(_ProjectState value, $Res Function(_ProjectState) then) =
      __$ProjectStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String summary,
      String detail,
      String coverImageUrl,
      List<ProjectTagState> tags,
      List<ProjectCallToActionState> callToActions});
}

/// @nodoc
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
    Object coverImageUrl = freezed,
    Object tags = freezed,
    Object callToActions = freezed,
  }) {
    return _then(_ProjectState(
      title: title == freezed ? _value.title : title as String,
      summary: summary == freezed ? _value.summary : summary as String,
      detail: detail == freezed ? _value.detail : detail as String,
      coverImageUrl: coverImageUrl == freezed ? _value.coverImageUrl : coverImageUrl as String,
      tags: tags == freezed ? _value.tags : tags as List<ProjectTagState>,
      callToActions: callToActions == freezed ? _value.callToActions : callToActions as List<ProjectCallToActionState>,
    ));
  }
}

/// @nodoc
class _$_ProjectState implements _ProjectState {
  const _$_ProjectState({this.title, this.summary, this.detail, this.coverImageUrl, this.tags, this.callToActions});

  @override
  final String title;
  @override
  final String summary;
  @override
  final String detail;
  @override
  final String coverImageUrl;
  @override
  final List<ProjectTagState> tags;
  @override
  final List<ProjectCallToActionState> callToActions;

  @override
  String toString() {
    return 'ProjectState(title: $title, summary: $summary, detail: $detail, coverImageUrl: $coverImageUrl, tags: $tags, callToActions: $callToActions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProjectState &&
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
  _$ProjectStateCopyWith<_ProjectState> get copyWith => __$ProjectStateCopyWithImpl<_ProjectState>(this, _$identity);
}

abstract class _ProjectState implements ProjectState {
  const factory _ProjectState(
      {String title,
      String summary,
      String detail,
      String coverImageUrl,
      List<ProjectTagState> tags,
      List<ProjectCallToActionState> callToActions}) = _$_ProjectState;

  @override
  String get title;
  @override
  String get summary;
  @override
  String get detail;
  @override
  String get coverImageUrl;
  @override
  List<ProjectTagState> get tags;
  @override
  List<ProjectCallToActionState> get callToActions;
  @override
  _$ProjectStateCopyWith<_ProjectState> get copyWith;
}

/// @nodoc
class _$ProjectTagStateTearOff {
  const _$ProjectTagStateTearOff();

// ignore: unused_element
  _ProjectTagState call({String label, String color, String labelColor, ProjectTagStyle style}) {
    return _ProjectTagState(
      label: label,
      color: color,
      labelColor: labelColor,
      style: style,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProjectTagState = _$ProjectTagStateTearOff();

/// @nodoc
mixin _$ProjectTagState {
  String get label;
  String get color;
  String get labelColor;
  ProjectTagStyle get style;

  $ProjectTagStateCopyWith<ProjectTagState> get copyWith;
}

/// @nodoc
abstract class $ProjectTagStateCopyWith<$Res> {
  factory $ProjectTagStateCopyWith(ProjectTagState value, $Res Function(ProjectTagState) then) =
      _$ProjectTagStateCopyWithImpl<$Res>;
  $Res call({String label, String color, String labelColor, ProjectTagStyle style});
}

/// @nodoc
class _$ProjectTagStateCopyWithImpl<$Res> implements $ProjectTagStateCopyWith<$Res> {
  _$ProjectTagStateCopyWithImpl(this._value, this._then);

  final ProjectTagState _value;
  // ignore: unused_field
  final $Res Function(ProjectTagState) _then;

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
      style: style == freezed ? _value.style : style as ProjectTagStyle,
    ));
  }
}

/// @nodoc
abstract class _$ProjectTagStateCopyWith<$Res> implements $ProjectTagStateCopyWith<$Res> {
  factory _$ProjectTagStateCopyWith(_ProjectTagState value, $Res Function(_ProjectTagState) then) =
      __$ProjectTagStateCopyWithImpl<$Res>;
  @override
  $Res call({String label, String color, String labelColor, ProjectTagStyle style});
}

/// @nodoc
class __$ProjectTagStateCopyWithImpl<$Res> extends _$ProjectTagStateCopyWithImpl<$Res>
    implements _$ProjectTagStateCopyWith<$Res> {
  __$ProjectTagStateCopyWithImpl(_ProjectTagState _value, $Res Function(_ProjectTagState) _then)
      : super(_value, (v) => _then(v as _ProjectTagState));

  @override
  _ProjectTagState get _value => super._value as _ProjectTagState;

  @override
  $Res call({
    Object label = freezed,
    Object color = freezed,
    Object labelColor = freezed,
    Object style = freezed,
  }) {
    return _then(_ProjectTagState(
      label: label == freezed ? _value.label : label as String,
      color: color == freezed ? _value.color : color as String,
      labelColor: labelColor == freezed ? _value.labelColor : labelColor as String,
      style: style == freezed ? _value.style : style as ProjectTagStyle,
    ));
  }
}

/// @nodoc
class _$_ProjectTagState implements _ProjectTagState {
  const _$_ProjectTagState({this.label, this.color, this.labelColor, this.style});

  @override
  final String label;
  @override
  final String color;
  @override
  final String labelColor;
  @override
  final ProjectTagStyle style;

  @override
  String toString() {
    return 'ProjectTagState(label: $label, color: $color, labelColor: $labelColor, style: $style)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProjectTagState &&
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
  _$ProjectTagStateCopyWith<_ProjectTagState> get copyWith =>
      __$ProjectTagStateCopyWithImpl<_ProjectTagState>(this, _$identity);
}

abstract class _ProjectTagState implements ProjectTagState {
  const factory _ProjectTagState({String label, String color, String labelColor, ProjectTagStyle style}) =
      _$_ProjectTagState;

  @override
  String get label;
  @override
  String get color;
  @override
  String get labelColor;
  @override
  ProjectTagStyle get style;
  @override
  _$ProjectTagStateCopyWith<_ProjectTagState> get copyWith;
}

/// @nodoc
class _$ProjectCallToActionStateTearOff {
  const _$ProjectCallToActionStateTearOff();

// ignore: unused_element
  _ProjectCallToActionState call(
      {ProjectCallToActionType type, ProjectCallToActionStyle style, String action, String label}) {
    return _ProjectCallToActionState(
      type: type,
      style: style,
      action: action,
      label: label,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProjectCallToActionState = _$ProjectCallToActionStateTearOff();

/// @nodoc
mixin _$ProjectCallToActionState {
  ProjectCallToActionType get type;
  ProjectCallToActionStyle get style;
  String get action;
  String get label;

  $ProjectCallToActionStateCopyWith<ProjectCallToActionState> get copyWith;
}

/// @nodoc
abstract class $ProjectCallToActionStateCopyWith<$Res> {
  factory $ProjectCallToActionStateCopyWith(
          ProjectCallToActionState value, $Res Function(ProjectCallToActionState) then) =
      _$ProjectCallToActionStateCopyWithImpl<$Res>;
  $Res call({ProjectCallToActionType type, ProjectCallToActionStyle style, String action, String label});
}

/// @nodoc
class _$ProjectCallToActionStateCopyWithImpl<$Res> implements $ProjectCallToActionStateCopyWith<$Res> {
  _$ProjectCallToActionStateCopyWithImpl(this._value, this._then);

  final ProjectCallToActionState _value;
  // ignore: unused_field
  final $Res Function(ProjectCallToActionState) _then;

  @override
  $Res call({
    Object type = freezed,
    Object style = freezed,
    Object action = freezed,
    Object label = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed ? _value.type : type as ProjectCallToActionType,
      style: style == freezed ? _value.style : style as ProjectCallToActionStyle,
      action: action == freezed ? _value.action : action as String,
      label: label == freezed ? _value.label : label as String,
    ));
  }
}

/// @nodoc
abstract class _$ProjectCallToActionStateCopyWith<$Res> implements $ProjectCallToActionStateCopyWith<$Res> {
  factory _$ProjectCallToActionStateCopyWith(
          _ProjectCallToActionState value, $Res Function(_ProjectCallToActionState) then) =
      __$ProjectCallToActionStateCopyWithImpl<$Res>;
  @override
  $Res call({ProjectCallToActionType type, ProjectCallToActionStyle style, String action, String label});
}

/// @nodoc
class __$ProjectCallToActionStateCopyWithImpl<$Res> extends _$ProjectCallToActionStateCopyWithImpl<$Res>
    implements _$ProjectCallToActionStateCopyWith<$Res> {
  __$ProjectCallToActionStateCopyWithImpl(
      _ProjectCallToActionState _value, $Res Function(_ProjectCallToActionState) _then)
      : super(_value, (v) => _then(v as _ProjectCallToActionState));

  @override
  _ProjectCallToActionState get _value => super._value as _ProjectCallToActionState;

  @override
  $Res call({
    Object type = freezed,
    Object style = freezed,
    Object action = freezed,
    Object label = freezed,
  }) {
    return _then(_ProjectCallToActionState(
      type: type == freezed ? _value.type : type as ProjectCallToActionType,
      style: style == freezed ? _value.style : style as ProjectCallToActionStyle,
      action: action == freezed ? _value.action : action as String,
      label: label == freezed ? _value.label : label as String,
    ));
  }
}

/// @nodoc
class _$_ProjectCallToActionState implements _ProjectCallToActionState {
  const _$_ProjectCallToActionState({this.type, this.style, this.action, this.label});

  @override
  final ProjectCallToActionType type;
  @override
  final ProjectCallToActionStyle style;
  @override
  final String action;
  @override
  final String label;

  @override
  String toString() {
    return 'ProjectCallToActionState(type: $type, style: $style, action: $action, label: $label)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProjectCallToActionState &&
            (identical(other.type, type) || const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.style, style) || const DeepCollectionEquality().equals(other.style, style)) &&
            (identical(other.action, action) || const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.label, label) || const DeepCollectionEquality().equals(other.label, label)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(style) ^
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(label);

  @override
  _$ProjectCallToActionStateCopyWith<_ProjectCallToActionState> get copyWith =>
      __$ProjectCallToActionStateCopyWithImpl<_ProjectCallToActionState>(this, _$identity);
}

abstract class _ProjectCallToActionState implements ProjectCallToActionState {
  const factory _ProjectCallToActionState(
      {ProjectCallToActionType type,
      ProjectCallToActionStyle style,
      String action,
      String label}) = _$_ProjectCallToActionState;

  @override
  ProjectCallToActionType get type;
  @override
  ProjectCallToActionStyle get style;
  @override
  String get action;
  @override
  String get label;
  @override
  _$ProjectCallToActionStateCopyWith<_ProjectCallToActionState> get copyWith;
}
