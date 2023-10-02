import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:net_flix/models/api_response.dart';
import 'package:net_flix/models/base_list_result.dart';
import 'package:net_flix/models/movie/movie.dart';
import 'package:net_flix/network_interceptors/authorization_interceptor.dart';
import 'package:net_flix/network_interceptors/logger_interceptor.dart';
import 'package:net_flix/providers/core_providers.dart';
import 'package:net_flix/models/movie/movie_detail.dart';
import 'package:net_flix/models/movie/review.dart';
import 'package:uuid/uuid.dart';
import 'dart:developer' as dev;

import '../interface/movie_details_interface.dart';

final movieDetailServiceProvider = Provider<MovieDetailsInterface>(
        (ref) => MovieDetailsService(ref.watch(dioProvider), ref.read(uuidProvider))
);

class MovieDetailsService implements MovieDetailsInterface{

  final Dio dio;
  final Uuid uuid;
  MovieDetailsService(this.dio, this.uuid){
    dio.interceptors.add(LoggerInterceptor());
    dio.interceptors.add(AuthInterceptor());
  }

  @override
  Future<ApiResponse<MovieDetail>> getMovieDetail(int movieId) async {
    try{
      final response = await dio.get(
          'https://api.themoviedb.org/3/movie/$movieId',
          queryParameters: {
            'language': 'en-US',
          }
      );
      dev.log('MovieService - Get Movie Details of the $movieId API ${response.statusCode}', time: DateTime.now());
      return ApiResponseSuccess(MovieDetail.fromJson(response.data));
    }on DioException catch (e, stacktrace){
      dev.log('MovieService - Get Movie Details of the $movieId API [DioException]', error: e.error);
      return ApiResponseError(e.response?.statusCode ?? e.type.index, e.response?.statusMessage ?? e.type.name, uuid.v4());
    }
  }

  @override
  Future<ApiResponse<BaseListResult<Movie>>> getRecommendMovie(int movieId, int page) async {
    try{
      final response = await dio.get(
          'https://api.themoviedb.org/3/movie/$movieId/recommendations',
          queryParameters: {
            'language': 'en-US',
            'page': page
          }
      );
      dev.log('MovieService - Get Recommendation of the $movieId API ${response.statusCode}', time: DateTime.now());
      return ApiResponseSuccess(BaseListResult.fromJson(response.data, (movieJson) {
        return  Movie.fromJson(movieJson as Map<String, dynamic>);
      } ,));
    }on DioException catch (e, stacktrace){
      dev.log('MovieService - Get Recommendation of the $movieId API [DioException]', error: e.error, stackTrace: stacktrace);
      return ApiResponseError(e.response?.statusCode ?? e.type.index, e.response?.statusMessage ?? e.type.name, uuid.v4());
    }
  }

  @override
  Future<ApiResponse<BaseListResult<Review>>> getMovieReviews(int movieId, int page) async {
    try{
      final response = await dio.get(
          'https://api.themoviedb.org/3/movie/$movieId/reviews',
          queryParameters: {
            'language': 'en-US',
            'page': page
          }
      );
      dev.log('MovieService - Get Review of the $movieId API ${response.statusCode}', time: DateTime.now());
      return ApiResponseSuccess(BaseListResult.fromJson(response.data, (reviewJson) {
        return  Review.fromJson(reviewJson as Map<String, dynamic>);
      } ,));
    }on DioException catch (e, stacktrace){
      dev.log('MovieService - Get Review of the $movieId API [DioException]', error: e.error, stackTrace: stacktrace);
      return ApiResponseError(e.response?.statusCode ?? e.type.index, e.response?.statusMessage ?? e.type.name, uuid.v4());
    }
  }

}