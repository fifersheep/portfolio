// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'project_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProjectStateTearOff {
  const _$ProjectStateTearOff();

  _ProjectState call(
      {required String title,
      required String summary,
      required String detail,
      required String coverImageUrl,
      required List<ProjectTagState> tags,
      required List<ProjectCallToActionState> callToActions}) {
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
const $ProjectState = _$ProjectStateTearOff();

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
              as List<ProjectTagState>,
      callToActions: callToActions == freezed
          ? _value.callToActions
          : callToActions // ignore: cast_nullable_to_non_nullable
              as List<ProjectCallToActionState>,
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
    Object? title = freezed,
    Object? summary = freezed,
    Object? detail = freezed,
    Object? coverImageUrl = freezed,
    Object? tags = freezed,
    Object? callToActions = freezed,
  }) {
    return _then(_ProjectState(
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
              as List<ProjectTagState>,
      callToActions: callToActions == freezed
          ? _value.callToActions
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

  @JsonKey(ignore: true)
  @override
  _$ProjectStateCopyWith<_ProjectState> get copyWith => __$ProjectStateCopyWithImpl<_ProjectState>(this, _$identity);
}

abstract class _ProjectState implements ProjectState {
  factory _ProjectState(
      {required String title,
      required String summary,
      required String detail,
      required String coverImageUrl,
      required List<ProjectTagState> tags,
      required List<ProjectCallToActionState> callToActions}) = _$_ProjectState;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get summary => throw _privateConstructorUsedError;
  @override
  String get detail => throw _privateConstructorUsedError;
  @override
  String get coverImageUrl => throw _privateConstructorUsedError;
  @override
  List<ProjectTagState> get tags => throw _privateConstructorUsedError;
  @override
  List<ProjectCallToActionState> get callToActions => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProjectStateCopyWith<_ProjectState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ProjectTagStateTearOff {
  const _$ProjectTagStateTearOff();

  _ProjectTagState call(
      {required String label, required String color, required String labelColor, required ProjectTagStyle style}) {
    return _ProjectTagState(
      label: label,
      color: color,
      labelColor: labelColor,
      style: style,
    );
  }
}

/// @nodoc
const $ProjectTagState = _$ProjectTagStateTearOff();

/// @nodoc
mixin _$ProjectTagState {
  String get label => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  String get labelColor => throw _privateConstructorUsedError;
  ProjectTagStyle get style => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectTagStateCopyWith<ProjectTagState> get copyWith => throw _privateConstructorUsedError;
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
              as String,
      labelColor: labelColor == freezed
          ? _value.labelColor
          : labelColor // ignore: cast_nullable_to_non_nullable
              as String,
      style: style == freezed
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as ProjectTagStyle,
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
    Object? label = freezed,
    Object? color = freezed,
    Object? labelColor = freezed,
    Object? style = freezed,
  }) {
    return _then(_ProjectTagState(
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      labelColor: labelColor == freezed
          ? _value.labelColor
          : labelColor // ignore: cast_nullable_to_non_nullable
              as String,
      style: style == freezed
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as ProjectTagStyle,
    ));
  }
}

/// @nodoc
class _$_ProjectTagState implements _ProjectTagState {
  _$_ProjectTagState({required this.label, required this.color, required this.labelColor, required this.style});

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

  @JsonKey(ignore: true)
  @override
  _$ProjectTagStateCopyWith<_ProjectTagState> get copyWith =>
      __$ProjectTagStateCopyWithImpl<_ProjectTagState>(this, _$identity);
}

abstract class _ProjectTagState implements ProjectTagState {
  factory _ProjectTagState(
      {required String label,
      required String color,
      required String labelColor,
      required ProjectTagStyle style}) = _$_ProjectTagState;

  @override
  String get label => throw _privateConstructorUsedError;
  @override
  String get color => throw _privateConstructorUsedError;
  @override
  String get labelColor => throw _privateConstructorUsedError;
  @override
  ProjectTagStyle get style => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProjectTagStateCopyWith<_ProjectTagState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ProjectCallToActionStateTearOff {
  const _$ProjectCallToActionStateTearOff();

  _ProjectCallToActionState call(
      {required ProjectCallToActionType type,
      required ProjectCallToActionStyle style,
      required String action,
      required String label}) {
    return _ProjectCallToActionState(
      type: type,
      style: style,
      action: action,
      label: label,
    );
  }
}

/// @nodoc
const $ProjectCallToActionState = _$ProjectCallToActionStateTearOff();

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
    Object? type = freezed,
    Object? style = freezed,
    Object? action = freezed,
    Object? label = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ProjectCallToActionType,
      style: style == freezed
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as ProjectCallToActionStyle,
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
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
    Object? type = freezed,
    Object? style = freezed,
    Object? action = freezed,
    Object? label = freezed,
  }) {
    return _then(_ProjectCallToActionState(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ProjectCallToActionType,
      style: style == freezed
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as ProjectCallToActionStyle,
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      label: label == freezed
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

  @JsonKey(ignore: true)
  @override
  _$ProjectCallToActionStateCopyWith<_ProjectCallToActionState> get copyWith =>
      __$ProjectCallToActionStateCopyWithImpl<_ProjectCallToActionState>(this, _$identity);
}

abstract class _ProjectCallToActionState implements ProjectCallToActionState {
  factory _ProjectCallToActionState(
      {required ProjectCallToActionType type,
      required ProjectCallToActionStyle style,
      required String action,
      required String label}) = _$_ProjectCallToActionState;

  @override
  ProjectCallToActionType get type => throw _privateConstructorUsedError;
  @override
  ProjectCallToActionStyle get style => throw _privateConstructorUsedError;
  @override
  String get action => throw _privateConstructorUsedError;
  @override
  String get label => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProjectCallToActionStateCopyWith<_ProjectCallToActionState> get copyWith => throw _privateConstructorUsedError;
}
