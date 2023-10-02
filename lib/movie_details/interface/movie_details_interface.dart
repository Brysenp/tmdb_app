import 'package:net_flix/models/api_response.dart';
import 'package:net_flix/models/base_list_result.dart';
import 'package:net_flix/models/movie/movie.dart';
import 'package:net_flix/models/movie/movie_detail.dart';
import 'package:net_flix/models/movie/review.dart';

abstract class MovieDetailsInterface {

  Future<ApiResponse<MovieDetail>> getMovieDetail(int movieId);
  Future<ApiResponse<BaseListResult<Movie>>> getRecommendMovie(int movieId, int page);
  Future<ApiResponse<BaseListResult<Review>>> getMovieReviews(int movieId, int page);

}