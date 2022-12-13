// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'experience_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExperienceState {
  String get title => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get timeframe => throw _privateConstructorUsedError;
  ExperienceIcon get icon => throw _privateConstructorUsedError;
  ExperienceColor get color => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExperienceStateCopyWith<ExperienceState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperienceStateCopyWith<$Res> {
  factory $ExperienceStateCopyWith(ExperienceState value, $Res Function(ExperienceState) then) =
      _$ExperienceStateCopyWithImpl<$Res, ExperienceState>;
  @useResult
  $Res call(
      {String title, String location, String content, String timeframe, ExperienceIcon icon, ExperienceColor color});
}

/// @nodoc
class _$ExperienceStateCopyWithImpl<$Res, $Val extends ExperienceState> implements $ExperienceStateCopyWith<$Res> {
  _$ExperienceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? location = null,
    Object? content = null,
    Object? timeframe = null,
    Object? icon = null,
    Object? color = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      timeframe: null == timeframe
          ? _value.timeframe
          : timeframe // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as ExperienceIcon,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as ExperienceColor,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExperienceStateCopyWith<$Res> implements $ExperienceStateCopyWith<$Res> {
  factory _$$_ExperienceStateCopyWith(_$_ExperienceState value, $Res Function(_$_ExperienceState) then) =
      __$$_ExperienceStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title, String location, String content, String timeframe, ExperienceIcon icon, ExperienceColor color});
}

/// @nodoc
class __$$_ExperienceStateCopyWithImpl<$Res> extends _$ExperienceStateCopyWithImpl<$Res, _$_ExperienceState>
    implements _$$_ExperienceStateCopyWith<$Res> {
  __$$_ExperienceStateCopyWithImpl(_$_ExperienceState _value, $Res Function(_$_ExperienceState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? location = null,
    Object? content = null,
    Object? timeframe = null,
    Object? icon = null,
    Object? color = null,
  }) {
    return _then(_$_ExperienceState(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      timeframe: null == timeframe
          ? _value.timeframe
          : timeframe // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as ExperienceIcon,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as ExperienceColor,
    ));
  }
}

/// @nodoc

class _$_ExperienceState implements _ExperienceState {
  const _$_ExperienceState(
      {required this.title,
      required this.location,
      required this.content,
      required this.timeframe,
      required this.icon,
      required this.color});

  @override
  final String title;
  @override
  final String location;
  @override
  final String content;
  @override
  final String timeframe;
  @override
  final ExperienceIcon icon;
  @override
  final ExperienceColor color;

  @override
  String toString() {
    return 'ExperienceState(title: $title, location: $location, content: $content, timeframe: $timeframe, icon: $icon, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExperienceState &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.location, location) || other.location == location) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.timeframe, timeframe) || other.timeframe == timeframe) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, location, content, timeframe, icon, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExperienceStateCopyWith<_$_ExperienceState> get copyWith =>
      __$$_ExperienceStateCopyWithImpl<_$_ExperienceState>(this, _$identity);
}

abstract class _ExperienceState implements ExperienceState {
  const factory _ExperienceState(
      {required final String title,
      required final String location,
      required final String content,
      required final String timeframe,
      required final ExperienceIcon icon,
      required final ExperienceColor color}) = _$_ExperienceState;

  @override
  String get title;
  @override
  String get location;
  @override
  String get content;
  @override
  String get timeframe;
  @override
  ExperienceIcon get icon;
  @override
  ExperienceColor get color;
  @override
  @JsonKey(ignore: true)
  _$$_ExperienceStateCopyWith<_$_ExperienceState> get copyWith => throw _privateConstructorUsedError;
}
