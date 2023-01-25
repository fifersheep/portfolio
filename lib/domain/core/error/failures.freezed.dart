// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dataRetrievalFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dataRetrievalFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dataRetrievalFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataRetrievalFailure value) dataRetrievalFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataRetrievalFailure value)? dataRetrievalFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataRetrievalFailure value)? dataRetrievalFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) = _$FailureCopyWithImpl<$Res, Failure>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DataRetrievalFailureCopyWith<$Res> {
  factory _$$DataRetrievalFailureCopyWith(_$DataRetrievalFailure value, $Res Function(_$DataRetrievalFailure) then) =
      __$$DataRetrievalFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DataRetrievalFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res, _$DataRetrievalFailure>
    implements _$$DataRetrievalFailureCopyWith<$Res> {
  __$$DataRetrievalFailureCopyWithImpl(_$DataRetrievalFailure _value, $Res Function(_$DataRetrievalFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DataRetrievalFailure implements DataRetrievalFailure {
  const _$DataRetrievalFailure();

  @override
  String toString() {
    return 'Failure.dataRetrievalFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$DataRetrievalFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dataRetrievalFailure,
  }) {
    return dataRetrievalFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dataRetrievalFailure,
  }) {
    return dataRetrievalFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dataRetrievalFailure,
    required TResult orElse(),
  }) {
    if (dataRetrievalFailure != null) {
      return dataRetrievalFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataRetrievalFailure value) dataRetrievalFailure,
  }) {
    return dataRetrievalFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataRetrievalFailure value)? dataRetrievalFailure,
  }) {
    return dataRetrievalFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataRetrievalFailure value)? dataRetrievalFailure,
    required TResult orElse(),
  }) {
    if (dataRetrievalFailure != null) {
      return dataRetrievalFailure(this);
    }
    return orElse();
  }
}

abstract class DataRetrievalFailure implements Failure {
  const factory DataRetrievalFailure() = _$DataRetrievalFailure;
}
