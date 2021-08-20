// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'project.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProjectTearOff {
  const _$ProjectTearOff();

  _Project call(
      {required String title,
      required String summary,
      required String detail,
      required String coverImageUrl,
      required List<ProjectTag> tags,
      required List<ProjectCallToAction> callToActions}) {
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

/// @nodoc
const $Project = _$ProjectTearOff();

/// @nodoc
mixin _$Project {
  String get title => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;
  String get detail => throw _privateConstructorUsedError;
  String get coverImageUrl => throw _privateConstructorUsedError;
  List<ProjectTag> get tags => throw _privateConstructorUsedError;
  List<ProjectCallToAction> get callToActions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectCopyWith<Project> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
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

/// @nodoc
class _$ProjectCopyWithImpl<$Res> implements $ProjectCopyWith<$Res> {
  _$ProjectCopyWithImpl(this._value, this._then);

  final Project _value;
  // ignore: unused_field
  final $Res Function(Project) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? summary = freezed,
    Object? detail = freezed,
    Object? coverImageUrl = freezed,
    Object? tags = freezed,
    Object? callToActions = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      coverImageUrl: coverImageUrl == freezed
          ? _value.coverImageUrl
          : coverImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<ProjectTag>,
      callToActions: callToActions == freezed
          ? _value.callToActions
          : callToActions // ignore: cast_nullable_to_non_nullable
              as List<ProjectCallToAction>,
    ));
  }
}

/// @nodoc
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

/// @nodoc
class __$ProjectCopyWithImpl<$Res> extends _$ProjectCopyWithImpl<$Res> implements _$ProjectCopyWith<$Res> {
  __$ProjectCopyWithImpl(_Project _value, $Res Function(_Project) _then) : super(_value, (v) => _then(v as _Project));

  @override
  _Project get _value => super._value as _Project;

  @override
  $Res call({
    Object? title = freezed,
    Object? summary = freezed,
    Object? detail = freezed,
    Object? coverImageUrl = freezed,
    Object? tags = freezed,
    Object? callToActions = freezed,
  }) {
    return _then(_Project(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      coverImageUrl: coverImageUrl == freezed
          ? _value.coverImageUrl
          : coverImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<ProjectTag>,
      callToActions: callToActions == freezed
          ? _value.callToActions
          : callToActions // ignore: cast_nullable_to_non_nullable
              as List<ProjectCallToAction>,
    ));
  }
}

/// @nodoc

class _$_Project implements _Project {
  _$_Project(
      {required this.title,
      required this.summary,
      required this.detail,
      required this.coverImageUrl,
      required this.tags,
      required this.callToActions});

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

  @JsonKey(ignore: true)
  @override
  _$ProjectCopyWith<_Project> get copyWith => __$ProjectCopyWithImpl<_Project>(this, _$identity);
}

abstract class _Project implements Project {
  factory _Project(
      {required String title,
      required String summary,
      required String detail,
      required String coverImageUrl,
      required List<ProjectTag> tags,
      required List<ProjectCallToAction> callToActions}) = _$_Project;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get summary => throw _privateConstructorUsedError;
  @override
  String get detail => throw _privateConstructorUsedError;
  @override
  String get coverImageUrl => throw _privateConstructorUsedError;
  @override
  List<ProjectTag> get tags => throw _privateConstructorUsedError;
  @override
  List<ProjectCallToAction> get callToActions => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProjectCopyWith<_Project> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ProjectTagTearOff {
  const _$ProjectTagTearOff();

  _ProjectTag call({required String label, String? color, required String labelColor, required String style}) {
    return _ProjectTag(
      label: label,
      color: color,
      labelColor: labelColor,
      style: style,
    );
  }
}

/// @nodoc
const $ProjectTag = _$ProjectTagTearOff();

/// @nodoc
mixin _$ProjectTag {
  String get label => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  String get labelColor => throw _privateConstructorUsedError;
  String get style => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectTagCopyWith<ProjectTag> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectTagCopyWith<$Res> {
  factory $ProjectTagCopyWith(ProjectTag value, $Res Function(ProjectTag) then) = _$ProjectTagCopyWithImpl<$Res>;
  $Res call({String label, String? color, String labelColor, String style});
}

/// @nodoc
class _$ProjectTagCopyWithImpl<$Res> implements $ProjectTagCopyWith<$Res> {
  _$ProjectTagCopyWithImpl(this._value, this._then);

  final ProjectTag _value;
  // ignore: unused_field
  final $Res Function(ProjectTag) _then;

  @override
  $Res call({
    Object? label = freezed,
    Object? color = freezed,
    Object? labelColor = freezed,
    Object? style = freezed,
  }) {
    return _then(_value.copyWith(
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      labelColor: labelColor == freezed
          ? _value.labelColor
          : labelColor // ignore: cast_nullable_to_non_nullable
              as String,
      style: style == freezed
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ProjectTagCopyWith<$Res> implements $ProjectTagCopyWith<$Res> {
  factory _$ProjectTagCopyWith(_ProjectTag value, $Res Function(_ProjectTag) then) = __$ProjectTagCopyWithImpl<$Res>;
  @override
  $Res call({String label, String? color, String labelColor, String style});
}

/// @nodoc
class __$ProjectTagCopyWithImpl<$Res> extends _$ProjectTagCopyWithImpl<$Res> implements _$ProjectTagCopyWith<$Res> {
  __$ProjectTagCopyWithImpl(_ProjectTag _value, $Res Function(_ProjectTag) _then)
      : super(_value, (v) => _then(v as _ProjectTag));

  @override
  _ProjectTag get _value => super._value as _ProjectTag;

  @override
  $Res call({
    Object? label = freezed,
    Object? color = freezed,
    Object? labelColor = freezed,
    Object? style = freezed,
  }) {
    return _then(_ProjectTag(
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      labelColor: labelColor == freezed
          ? _value.labelColor
          : labelColor // ignore: cast_nullable_to_non_nullable
              as String,
      style: style == freezed
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ProjectTag implements _ProjectTag {
  _$_ProjectTag({required this.label, this.color, required this.labelColor, required this.style});

  @override
  final String label;
  @override
  final String? color;
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

  @JsonKey(ignore: true)
  @override
  _$ProjectTagCopyWith<_ProjectTag> get copyWith => __$ProjectTagCopyWithImpl<_ProjectTag>(this, _$identity);
}

abstract class _ProjectTag implements ProjectTag {
  factory _ProjectTag({required String label, String? color, required String labelColor, required String style}) =
      _$_ProjectTag;

  @override
  String get label => throw _privateConstructorUsedError;
  @override
  String? get color => throw _privateConstructorUsedError;
  @override
  String get labelColor => throw _privateConstructorUsedError;
  @override
  String get style => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProjectTagCopyWith<_ProjectTag> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ProjectCallToActionTearOff {
  const _$ProjectCallToActionTearOff();

  _ProjectCallToAction call(
      {required String type, required String action, required String style, required String label}) {
    return _ProjectCallToAction(
      type: type,
      action: action,
      style: style,
      label: label,
    );
  }
}

/// @nodoc
const $ProjectCallToAction = _$ProjectCallToActionTearOff();

/// @nodoc
mixin _$ProjectCallToAction {
  String get type => throw _privateConstructorUsedError;
  String get action => throw _privateConstructorUsedError;
  String get style => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectCallToActionCopyWith<ProjectCallToAction> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectCallToActionCopyWith<$Res> {
  factory $ProjectCallToActionCopyWith(ProjectCallToAction value, $Res Function(ProjectCallToAction) then) =
      _$ProjectCallToActionCopyWithImpl<$Res>;
  $Res call({String type, String action, String style, String label});
}

/// @nodoc
class _$ProjectCallToActionCopyWithImpl<$Res> implements $ProjectCallToActionCopyWith<$Res> {
  _$ProjectCallToActionCopyWithImpl(this._value, this._then);

  final ProjectCallToAction _value;
  // ignore: unused_field
  final $Res Function(ProjectCallToAction) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? action = freezed,
    Object? style = freezed,
    Object? label = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      style: style == freezed
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as String,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ProjectCallToActionCopyWith<$Res> implements $ProjectCallToActionCopyWith<$Res> {
  factory _$ProjectCallToActionCopyWith(_ProjectCallToAction value, $Res Function(_ProjectCallToAction) then) =
      __$ProjectCallToActionCopyWithImpl<$Res>;
  @override
  $Res call({String type, String action, String style, String label});
}

/// @nodoc
class __$ProjectCallToActionCopyWithImpl<$Res> extends _$ProjectCallToActionCopyWithImpl<$Res>
    implements _$ProjectCallToActionCopyWith<$Res> {
  __$ProjectCallToActionCopyWithImpl(_ProjectCallToAction _value, $Res Function(_ProjectCallToAction) _then)
      : super(_value, (v) => _then(v as _ProjectCallToAction));

  @override
  _ProjectCallToAction get _value => super._value as _ProjectCallToAction;

  @override
  $Res call({
    Object? type = freezed,
    Object? action = freezed,
    Object? style = freezed,
    Object? label = freezed,
  }) {
    return _then(_ProjectCallToAction(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      style: style == freezed
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as String,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ProjectCallToAction implements _ProjectCallToAction {
  _$_ProjectCallToAction({required this.type, required this.action, required this.style, required this.label});

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

  @JsonKey(ignore: true)
  @override
  _$ProjectCallToActionCopyWith<_ProjectCallToAction> get copyWith =>
      __$ProjectCallToActionCopyWithImpl<_ProjectCallToAction>(this, _$identity);
}

abstract class _ProjectCallToAction implements ProjectCallToAction {
  factory _ProjectCallToAction(
      {required String type,
      required String action,
      required String style,
      required String label}) = _$_ProjectCallToAction;

  @override
  String get type => throw _privateConstructorUsedError;
  @override
  String get action => throw _privateConstructorUsedError;
  @override
  String get style => throw _privateConstructorUsedError;
  @override
  String get label => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProjectCallToActionCopyWith<_ProjectCallToAction> get copyWith => throw _privateConstructorUsedError;
}
