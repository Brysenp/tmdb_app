import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';
part 'api_response.g.dart';


@Freezed(
  genericArgumentFactories: true,
  map: FreezedMapOptions.none,
)
sealed class ApiResponse<T> with _$ApiResponse<T>{
  const factory ApiResponse.data(T data) = ApiResponseSuccess;
  const factory ApiResponse.clientError(int code, String message, String? referenceId) = ApiResponseClientError;
  const factory ApiResponse.serverError(int code, String message, String? referenceId) = ApiResponseServerError;
  const factory ApiResponse.unknownError(int code, String message, String? referenceId) = ApiResponseError;
  factory ApiResponse.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT) => _$ApiResponseFromJson(json, fromJsonT);
}
