import 'package:freezed_annotation/freezed_annotation.dart';

import 'json.dart';

part 'response.freezed.dart';

enum ApiFailure { noResponse, business, unknown }

@freezed
class ApiResponse<T> with _$ApiResponse<T> {
  const ApiResponse._();

  factory ApiResponse.success({
    T? data,
    required Json json,
  }) = ApiResponseSuccess;

  const factory ApiResponse.failure({
    required ApiFailure kind,
    @Default([]) List<String> errors,
  }) = ApiResponseFailure;


}