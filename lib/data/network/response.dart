import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'response.freezed.dart';

@freezed
class Response<T> with _$Response<T> {
  const Response._();

  const factory Response.success(T data) = Success<T>;
  const factory Response.failure(String errorMessage) = Failure;
}
