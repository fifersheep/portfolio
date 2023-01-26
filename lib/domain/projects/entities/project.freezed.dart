// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
  factory $ProjectCopyWith(Project value, $Res Function(Project) then) = _$ProjectCopyWithImpl<$Res, Project>;
  @useResult
  $Res call(
      {String title,
      String summary,
      String detail,
      String coverImageUrl,
      List<ProjectTag> tags,
      List<ProjectCallToAction> callToActions});
}

/// @nodoc
class _$ProjectCopyWithImpl<$Res, $Val extends Project> implements $ProjectCopyWith<$Res> {
  _$ProjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? summary = null,
    Object? detail = null,
    Object? coverImageUrl = null,
    Object? tags = null,
    Object? callToActions = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      coverImageUrl: null == coverImageUrl
          ? _value.coverImageUrl
          : coverImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<ProjectTag>,
      callToActions: null == callToActions
          ? _value.callToActions
          : callToActions // ignore: cast_nullable_to_non_nullable
              as List<ProjectCallToAction>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProjectCopyWith<$Res> implements $ProjectCopyWith<$Res> {
  factory _$$_ProjectCopyWith(_$_Project value, $Res Function(_$_Project) then) = __$$_ProjectCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String summary,
      String detail,
      String coverImageUrl,
      List<ProjectTag> tags,
      List<ProjectCallToAction> callToActions});
}

/// @nodoc
class __$$_ProjectCopyWithImpl<$Res> extends _$ProjectCopyWithImpl<$Res, _$_Project>
    implements _$$_ProjectCopyWith<$Res> {
  __$$_ProjectCopyWithImpl(_$_Project _value, $Res Function(_$_Project) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? summary = null,
    Object? detail = null,
    Object? coverImageUrl = null,
    Object? tags = null,
    Object? callToActions = null,
  }) {
    return _then(_$_Project(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      coverImageUrl: null == coverImageUrl
          ? _value.coverImageUrl
          : coverImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<ProjectTag>,
      callToActions: null == callToActions
          ? _value._callToActions
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
      required final List<ProjectTag> tags,
      required final List<ProjectCallToAction> callToActions})
      : _tags = tags,
        _callToActions = callToActions;

  @override
  final String title;
  @override
  final String summary;
  @override
  final String detail;
  @override
  final String coverImageUrl;
  final List<ProjectTag> _tags;
  @override
  List<ProjectTag> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final List<ProjectCallToAction> _callToActions;
  @override
  List<ProjectCallToAction> get callToActions {
    if (_callToActions is EqualUnmodifiableListView) return _callToActions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_callToActions);
  }

  @override
  String toString() {
    return 'Project(title: $title, summary: $summary, detail: $detail, coverImageUrl: $coverImageUrl, tags: $tags, callToActions: $callToActions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Project &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.coverImageUrl, coverImageUrl) || other.coverImageUrl == coverImageUrl) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._callToActions, _callToActions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, summary, detail, coverImageUrl,
      const DeepCollectionEquality().hash(_tags), const DeepCollectionEquality().hash(_callToActions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProjectCopyWith<_$_Project> get copyWith => __$$_ProjectCopyWithImpl<_$_Project>(this, _$identity);
}

abstract class _Project implements Project {
  factory _Project(
      {required final String title,
      required final String summary,
      required final String detail,
      required final String coverImageUrl,
      required final List<ProjectTag> tags,
      required final List<ProjectCallToAction> callToActions}) = _$_Project;

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
  @JsonKey(ignore: true)
  _$$_ProjectCopyWith<_$_Project> get copyWith => throw _privateConstructorUsedError;
}

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
  factory $ProjectTagCopyWith(ProjectTag value, $Res Function(ProjectTag) then) =
      _$ProjectTagCopyWithImpl<$Res, ProjectTag>;
  @useResult
  $Res call({String label, String? color, String labelColor, String style});
}

/// @nodoc
class _$ProjectTagCopyWithImpl<$Res, $Val extends ProjectTag> implements $ProjectTagCopyWith<$Res> {
  _$ProjectTagCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? color = freezed,
    Object? labelColor = null,
    Object? style = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      labelColor: null == labelColor
          ? _value.labelColor
          : labelColor // ignore: cast_nullable_to_non_nullable
              as String,
      style: null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProjectTagCopyWith<$Res> implements $ProjectTagCopyWith<$Res> {
  factory _$$_ProjectTagCopyWith(_$_ProjectTag value, $Res Function(_$_ProjectTag) then) =
      __$$_ProjectTagCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, String? color, String labelColor, String style});
}

/// @nodoc
class __$$_ProjectTagCopyWithImpl<$Res> extends _$ProjectTagCopyWithImpl<$Res, _$_ProjectTag>
    implements _$$_ProjectTagCopyWith<$Res> {
  __$$_ProjectTagCopyWithImpl(_$_ProjectTag _value, $Res Function(_$_ProjectTag) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? color = freezed,
    Object? labelColor = null,
    Object? style = null,
  }) {
    return _then(_$_ProjectTag(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      labelColor: null == labelColor
          ? _value.labelColor
          : labelColor // ignore: cast_nullable_to_non_nullable
              as String,
      style: null == style
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
        (other.runtimeType == runtimeType &&
            other is _$_ProjectTag &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.labelColor, labelColor) || other.labelColor == labelColor) &&
            (identical(other.style, style) || other.style == style));
  }

  @override
  int get hashCode => Object.hash(runtimeType, label, color, labelColor, style);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProjectTagCopyWith<_$_ProjectTag> get copyWith => __$$_ProjectTagCopyWithImpl<_$_ProjectTag>(this, _$identity);
}

abstract class _ProjectTag implements ProjectTag {
  factory _ProjectTag(
      {required final String label,
      final String? color,
      required final String labelColor,
      required final String style}) = _$_ProjectTag;

  @override
  String get label;
  @override
  String? get color;
  @override
  String get labelColor;
  @override
  String get style;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectTagCopyWith<_$_ProjectTag> get copyWith => throw _privateConstructorUsedError;
}

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
      _$ProjectCallToActionCopyWithImpl<$Res, ProjectCallToAction>;
  @useResult
  $Res call({String type, String action, String style, String label});
}

/// @nodoc
class _$ProjectCallToActionCopyWithImpl<$Res, $Val extends ProjectCallToAction>
    implements $ProjectCallToActionCopyWith<$Res> {
  _$ProjectCallToActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? action = null,
    Object? style = null,
    Object? label = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      style: null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProjectCallToActionCopyWith<$Res> implements $ProjectCallToActionCopyWith<$Res> {
  factory _$$_ProjectCallToActionCopyWith(_$_ProjectCallToAction value, $Res Function(_$_ProjectCallToAction) then) =
      __$$_ProjectCallToActionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String action, String style, String label});
}

/// @nodoc
class __$$_ProjectCallToActionCopyWithImpl<$Res> extends _$ProjectCallToActionCopyWithImpl<$Res, _$_ProjectCallToAction>
    implements _$$_ProjectCallToActionCopyWith<$Res> {
  __$$_ProjectCallToActionCopyWithImpl(_$_ProjectCallToAction _value, $Res Function(_$_ProjectCallToAction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? action = null,
    Object? style = null,
    Object? label = null,
  }) {
    return _then(_$_ProjectCallToAction(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      style: null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
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
        (other.runtimeType == runtimeType &&
            other is _$_ProjectCallToAction &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.style, style) || other.style == style) &&
            (identical(other.label, label) || other.label == label));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, action, style, label);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProjectCallToActionCopyWith<_$_ProjectCallToAction> get copyWith =>
      __$$_ProjectCallToActionCopyWithImpl<_$_ProjectCallToAction>(this, _$identity);
}

abstract class _ProjectCallToAction implements ProjectCallToAction {
  factory _ProjectCallToAction(
      {required final String type,
      required final String action,
      required final String style,
      required final String label}) = _$_ProjectCallToAction;

  @override
  String get type;
  @override
  String get action;
  @override
  String get style;
  @override
  String get label;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectCallToActionCopyWith<_$_ProjectCallToAction> get copyWith => throw _privateConstructorUsedError;
}
