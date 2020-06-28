// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// ignore: unused_element
T _$identity<T>(T value) => value;

class _$FailureTearOff {
  const _$FailureTearOff();

  DataRetrievalFailure dataRetrievalFailure() {
    return const DataRetrievalFailure();
  }
}

// ignore: unused_element
const $Failure = _$FailureTearOff();

mixin _$Failure {}

abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) = _$FailureCopyWithImpl<$Res>;
}

class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;
}

abstract class $DataRetrievalFailureCopyWith<$Res> {
  factory $DataRetrievalFailureCopyWith(DataRetrievalFailure value, $Res Function(DataRetrievalFailure) then) =
      _$DataRetrievalFailureCopyWithImpl<$Res>;
}

class _$DataRetrievalFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $DataRetrievalFailureCopyWith<$Res> {
  _$DataRetrievalFailureCopyWithImpl(DataRetrievalFailure _value, $Res Function(DataRetrievalFailure) _then)
      : super(_value, (v) => _then(v as DataRetrievalFailure));

  @override
  DataRetrievalFailure get _value => super._value as DataRetrievalFailure;
}

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
}

abstract class DataRetrievalFailure implements Failure {
  const factory DataRetrievalFailure() = _$DataRetrievalFailure;
}
