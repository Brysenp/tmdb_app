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
      releaseDate: json['release_date'] == null
          ? null
          : DateTime.parse(json['release_date'] as String),
      overview: json['overview'] as String,
    );

Map<String, dynamic> _$$MovieImplToJson(_$MovieImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'adult': instance.adult,
      'title': instance.title,
      'poster_path': instance.imageUrl,
      'release_date': instance.releaseDate?.toIso8601String(),
      'overview': instance.overview,
    };
