// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FailureTearOff {
  const _$FailureTearOff();

  DataRetrievalFailure dataRetrievalFailure() {
    return const DataRetrievalFailure();
  }
}

/// @nodoc
const $Failure = _$FailureTearOff();

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dataRetrievalFailure,
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataRetrievalFailure value)? dataRetrievalFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) = _$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;
}

/// @nodoc
abstract class $DataRetrievalFailureCopyWith<$Res> {
  factory $DataRetrievalFailureCopyWith(DataRetrievalFailure value, $Res Function(DataRetrievalFailure) then) =
      _$DataRetrievalFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$DataRetrievalFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $DataRetrievalFailureCopyWith<$Res> {
  _$DataRetrievalFailureCopyWithImpl(DataRetrievalFailure _value, $Res Function(DataRetrievalFailure) _then)
      : super(_value, (v) => _then(v as DataRetrievalFailure));

  @override
  DataRetrievalFailure get _value => super._value as DataRetrievalFailure;
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
    return identical(this, other) || (other is DataRetrievalFailure);
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
