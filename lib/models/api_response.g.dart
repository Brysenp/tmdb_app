// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiResponseSuccessImpl<T> _$$ApiResponseSuccessImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$ApiResponseSuccessImpl<T>(
      fromJsonT(json['data']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ApiResponseSuccessImplToJson<T>(
  _$ApiResponseSuccessImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': toJsonT(instance.data),
      'runtimeType': instance.$type,
    };

_$ApiResponseClientErrorImpl<T> _$$ApiResponseClientErrorImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$ApiResponseClientErrorImpl<T>(
      json['code'] as int,
      json['message'] as String,
      json['referenceId'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ApiResponseClientErrorImplToJson<T>(
  _$ApiResponseClientErrorImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'referenceId': instance.referenceId,
      'runtimeType': instance.$type,
    };

_$ApiResponseServerErrorImpl<T> _$$ApiResponseServerErrorImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$ApiResponseServerErrorImpl<T>(
      json['code'] as int,
      json['message'] as String,
      json['referenceId'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ApiResponseServerErrorImplToJson<T>(
  _$ApiResponseServerErrorImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'referenceId': instance.referenceId,
      'runtimeType': instance.$type,
    };

_$ApiResponseErrorImpl<T> _$$ApiResponseErrorImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$ApiResponseErrorImpl<T>(
      json['code'] as int,
      json['message'] as String,
      json['referenceId'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ApiResponseErrorImplToJson<T>(
  _$ApiResponseErrorImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'referenceId': instance.referenceId,
      'runtimeType': instance.$type,
    };
