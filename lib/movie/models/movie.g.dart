// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Movie _$$_MovieFromJson(Map<String, dynamic> json) => _$_Movie(
      id: json['id'] as int,
      adult: json['adult'] as bool,
      title: json['title'] as String,
      imageUrl: json['poster_path'] as String?,
      releaseDate: json['release_date'] == null
          ? null
          : DateTime.parse(json['release_date'] as String),
      overview: json['overview'] as String,
    );

Map<String, dynamic> _$$_MovieToJson(_$_Movie instance) => <String, dynamic>{
      'id': instance.id,
      'adult': instance.adult,
      'title': instance.title,
      'poster_path': instance.imageUrl,
      'release_date': instance.releaseDate?.toIso8601String(),
      'overview': instance.overview,
    };

_$_NowPlaying _$$_NowPlayingFromJson(Map<String, dynamic> json) =>
    _$_NowPlaying(
      page: json['page'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => Movie.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_NowPlayingToJson(_$_NowPlaying instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
    };

_$_TopRated _$$_TopRatedFromJson(Map<String, dynamic> json) => _$_TopRated(
      page: json['page'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => Movie.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TopRatedToJson(_$_TopRated instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
    };
