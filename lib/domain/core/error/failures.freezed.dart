// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FailureTearOff {
  const _$FailureTearOff();

// ignore: unused_element
  DataRetrievalFailure dataRetrievalFailure() {
    return const DataRetrievalFailure();
  }
}

/// @nodoc
// ignore: unused_element
const $Failure = _$FailureTearOff();

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result dataRetrievalFailure(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result dataRetrievalFailure(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result dataRetrievalFailure(DataRetrievalFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result dataRetrievalFailure(DataRetrievalFailure value),
    @required Result orElse(),
  });
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
  Result when<Result extends Object>({
    @required Result dataRetrievalFailure(),
  }) {
    assert(dataRetrievalFailure != null);
    return dataRetrievalFailure();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result dataRetrievalFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (dataRetrievalFailure != null) {
      return dataRetrievalFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result dataRetrievalFailure(DataRetrievalFailure value),
  }) {
    assert(dataRetrievalFailure != null);
    return dataRetrievalFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result dataRetrievalFailure(DataRetrievalFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (dataRetrievalFailure != null) {
      return dataRetrievalFailure(this);
    }
    return orElse();
  }
}

abstract class DataRetrievalFailure implements Failure {
  const factory DataRetrievalFailure() = _$DataRetrievalFailure;
}
