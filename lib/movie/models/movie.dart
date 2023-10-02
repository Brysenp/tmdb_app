import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@Freezed(
    when: FreezedWhenOptions.none,
    map: FreezedMapOptions.none,
)
class Movie with _$Movie{

  factory Movie({
    required int id,
    required bool adult,
    required String title,
    @JsonKey(name: 'poster_path') String? imageUrl,
    @JsonKey(name: 'release_date') DateTime? releaseDate,
    required String overview,
})  = _Movie;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
}

@freezed
class NowPlaying with _$NowPlaying{

  factory NowPlaying({
    required int page,
    required List<Movie> results,
  }) = _NowPlaying;

  factory NowPlaying.fromJson(Map<String, dynamic> json) => _$NowPlayingFromJson(json);

}

@freezed
class TopRated with _$TopRated{

  factory TopRated({
    required int page,
    required List<Movie> results,
  }) = _TopRated;

  factory TopRated.fromJson(Map<String, dynamic> json) => _$TopRatedFromJson(json);

}