// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'experience.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ExperienceTearOff {
  const _$ExperienceTearOff();

  _Experience call(
      {String title,
      String location,
      String content,
      DateTime startDate,
      DateTime endDate,
      ExperienceCategory category}) {
    return _Experience(
      title: title,
      location: location,
      content: content,
      startDate: startDate,
      endDate: endDate,
      category: category,
    );
  }
}

// ignore: unused_element
const $Experience = _$ExperienceTearOff();

mixin _$Experience {
  String get title;
  String get location;
  String get content;
  DateTime get startDate;
  DateTime get endDate;
  ExperienceCategory get category;

  $ExperienceCopyWith<Experience> get copyWith;
}

abstract class $ExperienceCopyWith<$Res> {
  factory $ExperienceCopyWith(Experience value, $Res Function(Experience) then) = _$ExperienceCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String location,
      String content,
      DateTime startDate,
      DateTime endDate,
      ExperienceCategory category});
}

class _$ExperienceCopyWithImpl<$Res> implements $ExperienceCopyWith<$Res> {
  _$ExperienceCopyWithImpl(this._value, this._then);

  final Experience _value;
  // ignore: unused_field
  final $Res Function(Experience) _then;

  @override
  $Res call({
    Object title = freezed,
    Object location = freezed,
    Object content = freezed,
    Object startDate = freezed,
    Object endDate = freezed,
    Object category = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      location: location == freezed ? _value.location : location as String,
      content: content == freezed ? _value.content : content as String,
      startDate: startDate == freezed ? _value.startDate : startDate as DateTime,
      endDate: endDate == freezed ? _value.endDate : endDate as DateTime,
      category: category == freezed ? _value.category : category as ExperienceCategory,
    ));
  }
}

abstract class _$ExperienceCopyWith<$Res> implements $ExperienceCopyWith<$Res> {
  factory _$ExperienceCopyWith(_Experience value, $Res Function(_Experience) then) = __$ExperienceCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String location,
      String content,
      DateTime startDate,
      DateTime endDate,
      ExperienceCategory category});
}

class __$ExperienceCopyWithImpl<$Res> extends _$ExperienceCopyWithImpl<$Res> implements _$ExperienceCopyWith<$Res> {
  __$ExperienceCopyWithImpl(_Experience _value, $Res Function(_Experience) _then)
      : super(_value, (v) => _then(v as _Experience));

  @override
  _Experience get _value => super._value as _Experience;

  @override
  $Res call({
    Object title = freezed,
    Object location = freezed,
    Object content = freezed,
    Object startDate = freezed,
    Object endDate = freezed,
    Object category = freezed,
  }) {
    return _then(_Experience(
      title: title == freezed ? _value.title : title as String,
      location: location == freezed ? _value.location : location as String,
      content: content == freezed ? _value.content : content as String,
      startDate: startDate == freezed ? _value.startDate : startDate as DateTime,
      endDate: endDate == freezed ? _value.endDate : endDate as DateTime,
      category: category == freezed ? _value.category : category as ExperienceCategory,
    ));
  }
}

class _$_Experience implements _Experience {
  const _$_Experience({this.title, this.location, this.content, this.startDate, this.endDate, this.category});

  @override
  final String title;
  @override
  final String location;
  @override
  final String content;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final ExperienceCategory category;

  @override
  String toString() {
    return 'Experience(title: $title, location: $location, content: $content, startDate: $startDate, endDate: $endDate, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Experience &&
            (identical(other.title, title) || const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.location, location) || const DeepCollectionEquality().equals(other.location, location)) &&
            (identical(other.content, content) || const DeepCollectionEquality().equals(other.content, content)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality().equals(other.startDate, startDate)) &&
            (identical(other.endDate, endDate) || const DeepCollectionEquality().equals(other.endDate, endDate)) &&
            (identical(other.category, category) || const DeepCollectionEquality().equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(category);

  @override
  _$ExperienceCopyWith<_Experience> get copyWith => __$ExperienceCopyWithImpl<_Experience>(this, _$identity);
}

abstract class _Experience implements Experience {
  const factory _Experience(
      {String title,
      String location,
      String content,
      DateTime startDate,
      DateTime endDate,
      ExperienceCategory category}) = _$_Experience;

  @override
  String get title;
  @override
  String get location;
  @override
  String get content;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  ExperienceCategory get category;
  @override
  _$ExperienceCopyWith<_Experience> get copyWith;
}
