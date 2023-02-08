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

Project _$ProjectFromJson(Map<String, dynamic> json) {
  return _Project.fromJson(json);
}

/// @nodoc
mixin _$Project {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;
  String get detail => throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'cover_img_url')
  String get coverImageUrl => throw _privateConstructorUsedError;
  List<ProjectTag> get tags => throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'call_to_actions')
  List<ProjectCallToAction> get callToActions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectCopyWith<Project> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectCopyWith<$Res> {
  factory $ProjectCopyWith(Project value, $Res Function(Project) then) = _$ProjectCopyWithImpl<$Res, Project>;
  @useResult
  $Res call(
      {int id,
      String title,
      String summary,
      String detail,
      @JsonKey(name: 'cover_img_url') String coverImageUrl,
      List<ProjectTag> tags,
      @JsonKey(name: 'call_to_actions') List<ProjectCallToAction> callToActions});
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
    Object? id = null,
    Object? title = null,
    Object? summary = null,
    Object? detail = null,
    Object? coverImageUrl = null,
    Object? tags = null,
    Object? callToActions = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      {int id,
      String title,
      String summary,
      String detail,
      @JsonKey(name: 'cover_img_url') String coverImageUrl,
      List<ProjectTag> tags,
      @JsonKey(name: 'call_to_actions') List<ProjectCallToAction> callToActions});
}

/// @nodoc
class __$$_ProjectCopyWithImpl<$Res> extends _$ProjectCopyWithImpl<$Res, _$_Project>
    implements _$$_ProjectCopyWith<$Res> {
  __$$_ProjectCopyWithImpl(_$_Project _value, $Res Function(_$_Project) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? summary = null,
    Object? detail = null,
    Object? coverImageUrl = null,
    Object? tags = null,
    Object? callToActions = null,
  }) {
    return _then(_$_Project(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
@JsonSerializable()
class _$_Project implements _Project {
  _$_Project(
      {required this.id,
      required this.title,
      required this.summary,
      required this.detail,
      @JsonKey(name: 'cover_img_url') required this.coverImageUrl,
      required final List<ProjectTag> tags,
      @JsonKey(name: 'call_to_actions') required final List<ProjectCallToAction> callToActions})
      : _tags = tags,
        _callToActions = callToActions;

  factory _$_Project.fromJson(Map<String, dynamic> json) => _$$_ProjectFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String summary;
  @override
  final String detail;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'cover_img_url')
  final String coverImageUrl;
  final List<ProjectTag> _tags;
  @override
  List<ProjectTag> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

// ignore: invalid_annotation_target
  final List<ProjectCallToAction> _callToActions;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'call_to_actions')
  List<ProjectCallToAction> get callToActions {
    if (_callToActions is EqualUnmodifiableListView) return _callToActions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_callToActions);
  }

  @override
  String toString() {
    return 'Project(id: $id, title: $title, summary: $summary, detail: $detail, coverImageUrl: $coverImageUrl, tags: $tags, callToActions: $callToActions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Project &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.coverImageUrl, coverImageUrl) || other.coverImageUrl == coverImageUrl) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._callToActions, _callToActions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, summary, detail, coverImageUrl,
      const DeepCollectionEquality().hash(_tags), const DeepCollectionEquality().hash(_callToActions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProjectCopyWith<_$_Project> get copyWith => __$$_ProjectCopyWithImpl<_$_Project>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProjectToJson(
      this,
    );
  }
}

abstract class _Project implements Project {
  factory _Project(
      {required final int id,
      required final String title,
      required final String summary,
      required final String detail,
      @JsonKey(name: 'cover_img_url') required final String coverImageUrl,
      required final List<ProjectTag> tags,
      @JsonKey(name: 'call_to_actions') required final List<ProjectCallToAction> callToActions}) = _$_Project;

  factory _Project.fromJson(Map<String, dynamic> json) = _$_Project.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get summary;
  @override
  String get detail;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'cover_img_url')
  String get coverImageUrl;
  @override
  List<ProjectTag> get tags;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'call_to_actions')
  List<ProjectCallToAction> get callToActions;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectCopyWith<_$_Project> get copyWith => throw _privateConstructorUsedError;
}

ProjectTag _$ProjectTagFromJson(Map<String, dynamic> json) {
  return _ProjectTag.fromJson(json);
}

/// @nodoc
mixin _$ProjectTag {
  int get id => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'label_color')
  String get labelColor => throw _privateConstructorUsedError;
  String get style => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectTagCopyWith<ProjectTag> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectTagCopyWith<$Res> {
  factory $ProjectTagCopyWith(ProjectTag value, $Res Function(ProjectTag) then) =
      _$ProjectTagCopyWithImpl<$Res, ProjectTag>;
  @useResult
  $Res call({int id, String label, String? color, @JsonKey(name: 'label_color') String labelColor, String style});
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
    Object? id = null,
    Object? label = null,
    Object? color = freezed,
    Object? labelColor = null,
    Object? style = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
  $Res call({int id, String label, String? color, @JsonKey(name: 'label_color') String labelColor, String style});
}

/// @nodoc
class __$$_ProjectTagCopyWithImpl<$Res> extends _$ProjectTagCopyWithImpl<$Res, _$_ProjectTag>
    implements _$$_ProjectTagCopyWith<$Res> {
  __$$_ProjectTagCopyWithImpl(_$_ProjectTag _value, $Res Function(_$_ProjectTag) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? color = freezed,
    Object? labelColor = null,
    Object? style = null,
  }) {
    return _then(_$_ProjectTag(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
@JsonSerializable()
class _$_ProjectTag implements _ProjectTag {
  _$_ProjectTag(
      {required this.id,
      required this.label,
      this.color,
      @JsonKey(name: 'label_color') required this.labelColor,
      required this.style});

  factory _$_ProjectTag.fromJson(Map<String, dynamic> json) => _$$_ProjectTagFromJson(json);

  @override
  final int id;
  @override
  final String label;
  @override
  final String? color;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'label_color')
  final String labelColor;
  @override
  final String style;

  @override
  String toString() {
    return 'ProjectTag(id: $id, label: $label, color: $color, labelColor: $labelColor, style: $style)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectTag &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.labelColor, labelColor) || other.labelColor == labelColor) &&
            (identical(other.style, style) || other.style == style));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, label, color, labelColor, style);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProjectTagCopyWith<_$_ProjectTag> get copyWith => __$$_ProjectTagCopyWithImpl<_$_ProjectTag>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProjectTagToJson(
      this,
    );
  }
}

abstract class _ProjectTag implements ProjectTag {
  factory _ProjectTag(
      {required final int id,
      required final String label,
      final String? color,
      @JsonKey(name: 'label_color') required final String labelColor,
      required final String style}) = _$_ProjectTag;

  factory _ProjectTag.fromJson(Map<String, dynamic> json) = _$_ProjectTag.fromJson;

  @override
  int get id;
  @override
  String get label;
  @override
  String? get color;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'label_color')
  String get labelColor;
  @override
  String get style;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectTagCopyWith<_$_ProjectTag> get copyWith => throw _privateConstructorUsedError;
}

ProjectCallToAction _$ProjectCallToActionFromJson(Map<String, dynamic> json) {
  return _ProjectCallToAction.fromJson(json);
}

/// @nodoc
mixin _$ProjectCallToAction {
  int get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get action => throw _privateConstructorUsedError;
  String get style => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectCallToActionCopyWith<ProjectCallToAction> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectCallToActionCopyWith<$Res> {
  factory $ProjectCallToActionCopyWith(ProjectCallToAction value, $Res Function(ProjectCallToAction) then) =
      _$ProjectCallToActionCopyWithImpl<$Res, ProjectCallToAction>;
  @useResult
  $Res call({int id, String type, String action, String style, String label});
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
    Object? id = null,
    Object? type = null,
    Object? action = null,
    Object? style = null,
    Object? label = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
  $Res call({int id, String type, String action, String style, String label});
}

/// @nodoc
class __$$_ProjectCallToActionCopyWithImpl<$Res> extends _$ProjectCallToActionCopyWithImpl<$Res, _$_ProjectCallToAction>
    implements _$$_ProjectCallToActionCopyWith<$Res> {
  __$$_ProjectCallToActionCopyWithImpl(_$_ProjectCallToAction _value, $Res Function(_$_ProjectCallToAction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? action = null,
    Object? style = null,
    Object? label = null,
  }) {
    return _then(_$_ProjectCallToAction(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
@JsonSerializable()
class _$_ProjectCallToAction implements _ProjectCallToAction {
  _$_ProjectCallToAction(
      {required this.id, required this.type, required this.action, required this.style, required this.label});

  factory _$_ProjectCallToAction.fromJson(Map<String, dynamic> json) => _$$_ProjectCallToActionFromJson(json);

  @override
  final int id;
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
    return 'ProjectCallToAction(id: $id, type: $type, action: $action, style: $style, label: $label)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectCallToAction &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.style, style) || other.style == style) &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, action, style, label);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProjectCallToActionCopyWith<_$_ProjectCallToAction> get copyWith =>
      __$$_ProjectCallToActionCopyWithImpl<_$_ProjectCallToAction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProjectCallToActionToJson(
      this,
    );
  }
}

abstract class _ProjectCallToAction implements ProjectCallToAction {
  factory _ProjectCallToAction(
      {required final int id,
      required final String type,
      required final String action,
      required final String style,
      required final String label}) = _$_ProjectCallToAction;

  factory _ProjectCallToAction.fromJson(Map<String, dynamic> json) = _$_ProjectCallToAction.fromJson;

  @override
  int get id;
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
