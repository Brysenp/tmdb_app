// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiResponseSuccess<T> _$$ApiResponseSuccessFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$ApiResponseSuccess<T>(
      fromJsonT(json['data']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ApiResponseSuccessToJson<T>(
  _$ApiResponseSuccess<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': toJsonT(instance.data),
      'runtimeType': instance.$type,
    };

_$ApiResponseClientError<T> _$$ApiResponseClientErrorFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$ApiResponseClientError<T>(
      json['code'] as int,
      json['message'] as String,
      json['referenceId'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ApiResponseClientErrorToJson<T>(
  _$ApiResponseClientError<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'referenceId': instance.referenceId,
      'runtimeType': instance.$type,
    };

_$ApiResponseServerError<T> _$$ApiResponseServerErrorFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$ApiResponseServerError<T>(
      json['code'] as int,
      json['message'] as String,
      json['referenceId'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ApiResponseServerErrorToJson<T>(
  _$ApiResponseServerError<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'referenceId': instance.referenceId,
      'runtimeType': instance.$type,
    };

_$ApiResponseError<T> _$$ApiResponseErrorFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$ApiResponseError<T>(
      json['code'] as int,
      json['message'] as String,
      json['referenceId'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ApiResponseErrorToJson<T>(
  _$ApiResponseError<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'referenceId': instance.referenceId,
      'runtimeType': instance.$type,
    };
