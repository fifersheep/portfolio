// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'experience.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ExperienceTearOff {
  const _$ExperienceTearOff();

  _Experience call(
      {required String title,
      required String location,
      required String content,
      required DateTime startDate,
      required DateTime endDate,
      required ExperienceCategory category}) {
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

/// @nodoc
const $Experience = _$ExperienceTearOff();

/// @nodoc
mixin _$Experience {
  String get title => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  ExperienceCategory get category => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExperienceCopyWith<Experience> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
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

/// @nodoc
class _$ExperienceCopyWithImpl<$Res> implements $ExperienceCopyWith<$Res> {
  _$ExperienceCopyWithImpl(this._value, this._then);

  final Experience _value;
  // ignore: unused_field
  final $Res Function(Experience) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? location = freezed,
    Object? content = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ExperienceCategory,
    ));
  }
}

/// @nodoc
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

/// @nodoc
class __$ExperienceCopyWithImpl<$Res> extends _$ExperienceCopyWithImpl<$Res> implements _$ExperienceCopyWith<$Res> {
  __$ExperienceCopyWithImpl(_Experience _value, $Res Function(_Experience) _then)
      : super(_value, (v) => _then(v as _Experience));

  @override
  _Experience get _value => super._value as _Experience;

  @override
  $Res call({
    Object? title = freezed,
    Object? location = freezed,
    Object? content = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? category = freezed,
  }) {
    return _then(_Experience(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ExperienceCategory,
    ));
  }
}

/// @nodoc
class _$_Experience implements _Experience {
  _$_Experience(
      {required this.title,
      required this.location,
      required this.content,
      required this.startDate,
      required this.endDate,
      required this.category});

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

  @JsonKey(ignore: true)
  @override
  _$ExperienceCopyWith<_Experience> get copyWith => __$ExperienceCopyWithImpl<_Experience>(this, _$identity);
}

abstract class _Experience implements Experience {
  factory _Experience(
      {required String title,
      required String location,
      required String content,
      required DateTime startDate,
      required DateTime endDate,
      required ExperienceCategory category}) = _$_Experience;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get location => throw _privateConstructorUsedError;
  @override
  String get content => throw _privateConstructorUsedError;
  @override
  DateTime get startDate => throw _privateConstructorUsedError;
  @override
  DateTime get endDate => throw _privateConstructorUsedError;
  @override
  ExperienceCategory get category => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ExperienceCopyWith<_Experience> get copyWith => throw _privateConstructorUsedError;
}
