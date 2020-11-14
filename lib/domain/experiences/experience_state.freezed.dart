// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'experience_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ExperienceStateTearOff {
  const _$ExperienceStateTearOff();

// ignore: unused_element
  _ExperienceState call(
      {String title, String location, String content, String timeframe, ExperienceIcon icon, ExperienceColor color}) {
    return _ExperienceState(
      title: title,
      location: location,
      content: content,
      timeframe: timeframe,
      icon: icon,
      color: color,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ExperienceState = _$ExperienceStateTearOff();

/// @nodoc
mixin _$ExperienceState {
  String get title;
  String get location;
  String get content;
  String get timeframe;
  ExperienceIcon get icon;
  ExperienceColor get color;

  $ExperienceStateCopyWith<ExperienceState> get copyWith;
}

/// @nodoc
abstract class $ExperienceStateCopyWith<$Res> {
  factory $ExperienceStateCopyWith(ExperienceState value, $Res Function(ExperienceState) then) =
      _$ExperienceStateCopyWithImpl<$Res>;
  $Res call(
      {String title, String location, String content, String timeframe, ExperienceIcon icon, ExperienceColor color});
}

/// @nodoc
class _$ExperienceStateCopyWithImpl<$Res> implements $ExperienceStateCopyWith<$Res> {
  _$ExperienceStateCopyWithImpl(this._value, this._then);

  final ExperienceState _value;
  // ignore: unused_field
  final $Res Function(ExperienceState) _then;

  @override
  $Res call({
    Object title = freezed,
    Object location = freezed,
    Object content = freezed,
    Object timeframe = freezed,
    Object icon = freezed,
    Object color = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      location: location == freezed ? _value.location : location as String,
      content: content == freezed ? _value.content : content as String,
      timeframe: timeframe == freezed ? _value.timeframe : timeframe as String,
      icon: icon == freezed ? _value.icon : icon as ExperienceIcon,
      color: color == freezed ? _value.color : color as ExperienceColor,
    ));
  }
}

/// @nodoc
abstract class _$ExperienceStateCopyWith<$Res> implements $ExperienceStateCopyWith<$Res> {
  factory _$ExperienceStateCopyWith(_ExperienceState value, $Res Function(_ExperienceState) then) =
      __$ExperienceStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title, String location, String content, String timeframe, ExperienceIcon icon, ExperienceColor color});
}

/// @nodoc
class __$ExperienceStateCopyWithImpl<$Res> extends _$ExperienceStateCopyWithImpl<$Res>
    implements _$ExperienceStateCopyWith<$Res> {
  __$ExperienceStateCopyWithImpl(_ExperienceState _value, $Res Function(_ExperienceState) _then)
      : super(_value, (v) => _then(v as _ExperienceState));

  @override
  _ExperienceState get _value => super._value as _ExperienceState;

  @override
  $Res call({
    Object title = freezed,
    Object location = freezed,
    Object content = freezed,
    Object timeframe = freezed,
    Object icon = freezed,
    Object color = freezed,
  }) {
    return _then(_ExperienceState(
      title: title == freezed ? _value.title : title as String,
      location: location == freezed ? _value.location : location as String,
      content: content == freezed ? _value.content : content as String,
      timeframe: timeframe == freezed ? _value.timeframe : timeframe as String,
      icon: icon == freezed ? _value.icon : icon as ExperienceIcon,
      color: color == freezed ? _value.color : color as ExperienceColor,
    ));
  }
}

/// @nodoc
class _$_ExperienceState implements _ExperienceState {
  const _$_ExperienceState({this.title, this.location, this.content, this.timeframe, this.icon, this.color});

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
        (other is _ExperienceState &&
            (identical(other.title, title) || const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.location, location) || const DeepCollectionEquality().equals(other.location, location)) &&
            (identical(other.content, content) || const DeepCollectionEquality().equals(other.content, content)) &&
            (identical(other.timeframe, timeframe) ||
                const DeepCollectionEquality().equals(other.timeframe, timeframe)) &&
            (identical(other.icon, icon) || const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.color, color) || const DeepCollectionEquality().equals(other.color, color)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(timeframe) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(color);

  @override
  _$ExperienceStateCopyWith<_ExperienceState> get copyWith =>
      __$ExperienceStateCopyWithImpl<_ExperienceState>(this, _$identity);
}

abstract class _ExperienceState implements ExperienceState {
  const factory _ExperienceState(
      {String title,
      String location,
      String content,
      String timeframe,
      ExperienceIcon icon,
      ExperienceColor color}) = _$_ExperienceState;

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
  _$ExperienceStateCopyWith<_ExperienceState> get copyWith;
}
