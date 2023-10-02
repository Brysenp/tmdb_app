import 'package:net_flix/core/models/base_list_result.dart';
import 'package:net_flix/movie/enum/trend_enum.dart';
import 'package:net_flix/movie/models/movie_detail.dart';
import 'package:net_flix/movie/models/review.dart';

import '../../core/models/api_response.dart';
import '../models/movie.dart';

abstract class MovieInterface {

  Future<ApiResponse<BaseListResult<Movie>>> getNowPlaying(int page);
  Future<ApiResponse<BaseListResult<Movie>>> getTopRated(int page);
  Future<ApiResponse<BaseListResult<Movie>>> getTrend(int page, Trend trend);

  Future<ApiResponse<MovieDetail>> getMovieDetail(int movieId);
  Future<ApiResponse<BaseListResult<Movie>>> getRecommendMovie(int movieId, int page);
  Future<ApiResponse<BaseListResult<Review>>> getMovieReviews(int movieId, int page);

}