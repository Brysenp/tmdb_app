import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:net_flix/movie/models/genre.dart';
import 'package:net_flix/movie/models/production.dart';

part 'movie_detail.freezed.dart';
part 'movie_detail.g.dart';

@freezed
class MovieDetail with _$MovieDetail{
  const factory MovieDetail({
    required int id,
    @Default(false)
    bool adult,
    @Default([])
    List<Genre> genres,
    @JsonKey(name: 'production_companies')
    @Default([])
    List<Production> productions,
  }) = _MovieDetail;

  factory MovieDetail.fromJson(Map<String, dynamic> json) => _$MovieDetailFromJson(json);

}