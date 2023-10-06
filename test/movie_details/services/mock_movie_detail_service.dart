import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:net_flix/home/enum/trend_enum.dart';
import 'package:net_flix/home/interface/home_interface.dart';
import 'package:net_flix/home/services/home_service.dart';
import 'package:net_flix/models/api_response.dart';
import 'package:net_flix/models/base_list_result.dart';
import 'package:net_flix/models/movie/movie.dart';
import 'package:net_flix/models/movie/movie_detail.dart';
import 'package:net_flix/models/movie/review.dart';
import 'package:net_flix/movie_details/interface/movie_details_interface.dart';
import 'mock_data_movie_details.dart';

final mockMovieDetailServiceProvider = Provider<MovieDetailsInterface>(
        (ref) => MockMovieDetailService()
);

final mockErrorMovieDetailServiceProvider = Provider<MovieDetailsInterface>(
        (ref) => MockErrorMovieDetailService()
);

class MockMovieDetailService implements MovieDetailsInterface{
  @override
  Future<ApiResponse<MovieDetail>> getMovieDetail(int movieId) async {
    return ApiResponseSuccess(MovieDetail.fromJson(MockDataMovieDetails.movieDetailsResponse));
  }

  @override
  Future<ApiResponse<BaseListResult<Review>>> getMovieReviews(int movieId, int page) async {
    return ApiResponseSuccess(BaseListResult.fromJson(MockDataMovieDetails.movieReview, (review) => Review.fromJson(review  as Map<String, dynamic>)));
  }

  @override
  Future<ApiResponse<BaseListResult<Movie>>> getRecommendMovie(int movieId, int page) async {
    return ApiResponseSuccess(BaseListResult.fromJson(MockDataMovieDetails.recommendVideoResponse, (movie) => Movie.fromJson(movie  as Map<String, dynamic>)));
  }
}

class MockErrorMovieDetailService implements MovieDetailsInterface{
  @override
  Future<ApiResponse<MovieDetail>> getMovieDetail(int movieId) async {
    return const ApiResponseError(999, 'Movie Detail testing with throwing error', '123456789');

  }

  @override
  Future<ApiResponse<BaseListResult<Review>>> getMovieReviews(int movieId, int page) async {
    return const ApiResponseError(999, 'Movie Review testing with throwing error', '123456789');

  }

  @override
  Future<ApiResponse<BaseListResult<Movie>>> getRecommendMovie(int movieId, int page) async {
    return const ApiResponseError(999, 'Recommend Movie testing with throwing error', '123456789');

  }
}
