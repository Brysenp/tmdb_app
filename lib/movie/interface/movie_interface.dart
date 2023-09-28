

import 'package:net_flix/core/models/base_list_result.dart';
import 'package:net_flix/movie/enum/trend_enum.dart';

import '../../core/models/api_response.dart';
import '../models/movie.dart';
import '../models/movie_detail.dart';

abstract class MovieInterface {

  Future<ApiResponse<BaseListResult<Movie>>> getNowPlaying(int page);
  Future<ApiResponse<BaseListResult<Movie>>> getTopRated(int page);
  Future<ApiResponse<BaseListResult<Movie>>> getTrend(int page, Trend trend);

  Future<ApiResponse<MovieDetail>> getMovieDetail(int movieId);

}