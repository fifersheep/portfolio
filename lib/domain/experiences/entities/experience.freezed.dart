// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'experience.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Experience {
  String get title => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  ExperienceCategory get category => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExperienceCopyWith<Experience> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperienceCopyWith<$Res> {
  factory $ExperienceCopyWith(Experience value, $Res Function(Experience) then) =
      _$ExperienceCopyWithImpl<$Res, Experience>;
  @useResult
  $Res call(
      {String title,
      String location,
      String content,
      DateTime? startDate,
      DateTime? endDate,
      ExperienceCategory category});
}

/// @nodoc
class _$ExperienceCopyWithImpl<$Res, $Val extends Experience> implements $ExperienceCopyWith<$Res> {
  _$ExperienceCopyWithImpl(this._value, this._then);

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
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? category = null,
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
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ExperienceCategory,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExperienceCopyWith<$Res> implements $ExperienceCopyWith<$Res> {
  factory _$$_ExperienceCopyWith(_$_Experience value, $Res Function(_$_Experience) then) =
      __$$_ExperienceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String location,
      String content,
      DateTime? startDate,
      DateTime? endDate,
      ExperienceCategory category});
}

/// @nodoc
class __$$_ExperienceCopyWithImpl<$Res> extends _$ExperienceCopyWithImpl<$Res, _$_Experience>
    implements _$$_ExperienceCopyWith<$Res> {
  __$$_ExperienceCopyWithImpl(_$_Experience _value, $Res Function(_$_Experience) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? location = null,
    Object? content = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? category = null,
  }) {
    return _then(_$_Experience(
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
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      category: null == category
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
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final ExperienceCategory category;

  @override
  String toString() {
    return 'Experience(title: $title, location: $location, content: $content, startDate: $startDate, endDate: $endDate, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Experience &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.location, location) || other.location == location) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.startDate, startDate) || other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.category, category) || other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, location, content, startDate, endDate, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExperienceCopyWith<_$_Experience> get copyWith => __$$_ExperienceCopyWithImpl<_$_Experience>(this, _$identity);
}

abstract class _Experience implements Experience {
  factory _Experience(
      {required final String title,
      required final String location,
      required final String content,
      required final DateTime? startDate,
      required final DateTime? endDate,
      required final ExperienceCategory category}) = _$_Experience;

  @override
  String get title;
  @override
  String get location;
  @override
  String get content;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  ExperienceCategory get category;
  @override
  @JsonKey(ignore: true)
  _$$_ExperienceCopyWith<_$_Experience> get copyWith => throw _privateConstructorUsedError;
}
