// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_list_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseListResultImpl<T> _$$BaseListResultImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$BaseListResultImpl<T>(
      page: json['page'] as int,
      totalPages: json['total_pages'] as int? ?? -1,
      results: (json['results'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$$BaseListResultImplToJson<T>(
  _$BaseListResultImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'page': instance.page,
      'total_pages': instance.totalPages,
      'results': instance.results.map(toJsonT).toList(),
    };
