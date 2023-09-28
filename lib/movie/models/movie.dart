import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
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
