// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieImpl _$$MovieImplFromJson(Map<String, dynamic> json) => _$MovieImpl(
      id: json['id'] as int,
      adult: json['adult'] as bool,
      title: json['title'] as String,
      imageUrl: json['poster_path'] as String?,
      releaseDate: _$JsonConverterFromJson<String, DateTime?>(
          json['release_date'], const ReleaseDateConverter().fromJson),
      overview: json['overview'] as String,
    );

Map<String, dynamic> _$$MovieImplToJson(_$MovieImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'adult': instance.adult,
      'title': instance.title,
      'poster_path': instance.imageUrl,
      'release_date': const ReleaseDateConverter().toJson(instance.releaseDate),
      'overview': instance.overview,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);
