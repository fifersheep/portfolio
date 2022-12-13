// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'project_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProjectState {
  String get title => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;
  String get detail => throw _privateConstructorUsedError;
  String get coverImageUrl => throw _privateConstructorUsedError;
  List<ProjectTagState> get tags => throw _privateConstructorUsedError;
  List<ProjectCallToActionState> get callToActions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectStateCopyWith<ProjectState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectStateCopyWith<$Res> {
  factory $ProjectStateCopyWith(ProjectState value, $Res Function(ProjectState) then) =
      _$ProjectStateCopyWithImpl<$Res, ProjectState>;
  @useResult
  $Res call(
      {String title,
      String summary,
      String detail,
      String coverImageUrl,
      List<ProjectTagState> tags,
      List<ProjectCallToActionState> callToActions});
}

/// @nodoc
class _$ProjectStateCopyWithImpl<$Res, $Val extends ProjectState> implements $ProjectStateCopyWith<$Res> {
  _$ProjectStateCopyWithImpl(this._value, this._then);

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
              as List<ProjectTagState>,
      callToActions: null == callToActions
          ? _value.callToActions
          : callToActions // ignore: cast_nullable_to_non_nullable
              as List<ProjectCallToActionState>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProjectStateCopyWith<$Res> implements $ProjectStateCopyWith<$Res> {
  factory _$$_ProjectStateCopyWith(_$_ProjectState value, $Res Function(_$_ProjectState) then) =
      __$$_ProjectStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String summary,
      String detail,
      String coverImageUrl,
      List<ProjectTagState> tags,
      List<ProjectCallToActionState> callToActions});
}

/// @nodoc
class __$$_ProjectStateCopyWithImpl<$Res> extends _$ProjectStateCopyWithImpl<$Res, _$_ProjectState>
    implements _$$_ProjectStateCopyWith<$Res> {
  __$$_ProjectStateCopyWithImpl(_$_ProjectState _value, $Res Function(_$_ProjectState) _then) : super(_value, _then);

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
    return _then(_$_ProjectState(
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
              as List<ProjectTagState>,
      callToActions: null == callToActions
          ? _value._callToActions
          : callToActions // ignore: cast_nullable_to_non_nullable
              as List<ProjectCallToActionState>,
    ));
  }
}

/// @nodoc

class _$_ProjectState implements _ProjectState {
  _$_ProjectState(
      {required this.title,
      required this.summary,
      required this.detail,
      required this.coverImageUrl,
      required final List<ProjectTagState> tags,
      required final List<ProjectCallToActionState> callToActions})
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
  final List<ProjectTagState> _tags;
  @override
  List<ProjectTagState> get tags {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final List<ProjectCallToActionState> _callToActions;
  @override
  List<ProjectCallToActionState> get callToActions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_callToActions);
  }

  @override
  String toString() {
    return 'ProjectState(title: $title, summary: $summary, detail: $detail, coverImageUrl: $coverImageUrl, tags: $tags, callToActions: $callToActions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectState &&
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
  _$$_ProjectStateCopyWith<_$_ProjectState> get copyWith =>
      __$$_ProjectStateCopyWithImpl<_$_ProjectState>(this, _$identity);
}

abstract class _ProjectState implements ProjectState {
  factory _ProjectState(
      {required final String title,
      required final String summary,
      required final String detail,
      required final String coverImageUrl,
      required final List<ProjectTagState> tags,
      required final List<ProjectCallToActionState> callToActions}) = _$_ProjectState;

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
  @JsonKey(ignore: true)
  _$$_ProjectStateCopyWith<_$_ProjectState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProjectTagState {
  String get label => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  String get labelColor => throw _privateConstructorUsedError;
  ProjectTagStyle get style => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectTagStateCopyWith<ProjectTagState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectTagStateCopyWith<$Res> {
  factory $ProjectTagStateCopyWith(ProjectTagState value, $Res Function(ProjectTagState) then) =
      _$ProjectTagStateCopyWithImpl<$Res, ProjectTagState>;
  @useResult
  $Res call({String label, String? color, String labelColor, ProjectTagStyle style});
}

/// @nodoc
class _$ProjectTagStateCopyWithImpl<$Res, $Val extends ProjectTagState> implements $ProjectTagStateCopyWith<$Res> {
  _$ProjectTagStateCopyWithImpl(this._value, this._then);

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
              as ProjectTagStyle,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProjectTagStateCopyWith<$Res> implements $ProjectTagStateCopyWith<$Res> {
  factory _$$_ProjectTagStateCopyWith(_$_ProjectTagState value, $Res Function(_$_ProjectTagState) then) =
      __$$_ProjectTagStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, String? color, String labelColor, ProjectTagStyle style});
}

/// @nodoc
class __$$_ProjectTagStateCopyWithImpl<$Res> extends _$ProjectTagStateCopyWithImpl<$Res, _$_ProjectTagState>
    implements _$$_ProjectTagStateCopyWith<$Res> {
  __$$_ProjectTagStateCopyWithImpl(_$_ProjectTagState _value, $Res Function(_$_ProjectTagState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? color = freezed,
    Object? labelColor = null,
    Object? style = null,
  }) {
    return _then(_$_ProjectTagState(
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
              as ProjectTagStyle,
    ));
  }
}

/// @nodoc

class _$_ProjectTagState implements _ProjectTagState {
  _$_ProjectTagState({required this.label, this.color, required this.labelColor, required this.style});

  @override
  final String label;
  @override
  final String? color;
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
        (other.runtimeType == runtimeType &&
            other is _$_ProjectTagState &&
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
  _$$_ProjectTagStateCopyWith<_$_ProjectTagState> get copyWith =>
      __$$_ProjectTagStateCopyWithImpl<_$_ProjectTagState>(this, _$identity);
}

abstract class _ProjectTagState implements ProjectTagState {
  factory _ProjectTagState(
      {required final String label,
      final String? color,
      required final String labelColor,
      required final ProjectTagStyle style}) = _$_ProjectTagState;

  @override
  String get label;
  @override
  String? get color;
  @override
  String get labelColor;
  @override
  ProjectTagStyle get style;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectTagStateCopyWith<_$_ProjectTagState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProjectCallToActionState {
  ProjectCallToActionType get type => throw _privateConstructorUsedError;
  ProjectCallToActionStyle get style => throw _privateConstructorUsedError;
  String get action => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectCallToActionStateCopyWith<ProjectCallToActionState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectCallToActionStateCopyWith<$Res> {
  factory $ProjectCallToActionStateCopyWith(
          ProjectCallToActionState value, $Res Function(ProjectCallToActionState) then) =
      _$ProjectCallToActionStateCopyWithImpl<$Res, ProjectCallToActionState>;
  @useResult
  $Res call({ProjectCallToActionType type, ProjectCallToActionStyle style, String action, String label});
}

/// @nodoc
class _$ProjectCallToActionStateCopyWithImpl<$Res, $Val extends ProjectCallToActionState>
    implements $ProjectCallToActionStateCopyWith<$Res> {
  _$ProjectCallToActionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? style = null,
    Object? action = null,
    Object? label = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ProjectCallToActionType,
      style: null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as ProjectCallToActionStyle,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProjectCallToActionStateCopyWith<$Res> implements $ProjectCallToActionStateCopyWith<$Res> {
  factory _$$_ProjectCallToActionStateCopyWith(
          _$_ProjectCallToActionState value, $Res Function(_$_ProjectCallToActionState) then) =
      __$$_ProjectCallToActionStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProjectCallToActionType type, ProjectCallToActionStyle style, String action, String label});
}

/// @nodoc
class __$$_ProjectCallToActionStateCopyWithImpl<$Res>
    extends _$ProjectCallToActionStateCopyWithImpl<$Res, _$_ProjectCallToActionState>
    implements _$$_ProjectCallToActionStateCopyWith<$Res> {
  __$$_ProjectCallToActionStateCopyWithImpl(
      _$_ProjectCallToActionState _value, $Res Function(_$_ProjectCallToActionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? style = null,
    Object? action = null,
    Object? label = null,
  }) {
    return _then(_$_ProjectCallToActionState(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ProjectCallToActionType,
      style: null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as ProjectCallToActionStyle,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ProjectCallToActionState implements _ProjectCallToActionState {
  _$_ProjectCallToActionState({required this.type, required this.style, required this.action, required this.label});

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
        (other.runtimeType == runtimeType &&
            other is _$_ProjectCallToActionState &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.style, style) || other.style == style) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.label, label) || other.label == label));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, style, action, label);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProjectCallToActionStateCopyWith<_$_ProjectCallToActionState> get copyWith =>
      __$$_ProjectCallToActionStateCopyWithImpl<_$_ProjectCallToActionState>(this, _$identity);
}

abstract class _ProjectCallToActionState implements ProjectCallToActionState {
  factory _ProjectCallToActionState(
      {required final ProjectCallToActionType type,
      required final ProjectCallToActionStyle style,
      required final String action,
      required final String label}) = _$_ProjectCallToActionState;

  @override
  ProjectCallToActionType get type;
  @override
  ProjectCallToActionStyle get style;
  @override
  String get action;
  @override
  String get label;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectCallToActionStateCopyWith<_$_ProjectCallToActionState> get copyWith => throw _privateConstructorUsedError;
}
