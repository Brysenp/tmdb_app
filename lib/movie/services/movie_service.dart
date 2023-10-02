import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:net_flix/core/network_interceptors/authorization_interceptor.dart';
import 'package:net_flix/core/network_interceptors/logger_interceptor.dart';
import 'package:net_flix/movie/enum/trend_enum.dart';
import 'package:net_flix/movie/models/movie.dart';
import 'package:net_flix/core/core_providers.dart';
import 'package:net_flix/movie/models/movie_detail.dart';
import 'package:net_flix/movie/models/review.dart';
import 'package:uuid/uuid.dart';
import 'dart:developer' as dev;

import '../../core/models/api_response.dart';
import '../../core/models/base_list_result.dart';
import '../interface/movie_interface.dart';

final movieServiceProvider = Provider<MovieInterface>(
    (ref) => MovieService(ref.watch(dioProvider), ref.read(uuidProvider))
);

class MovieService implements MovieInterface{

  final Dio dio;
  final Uuid uuid;
  MovieService(this.dio, this.uuid){
    dio.interceptors.add(LoggerInterceptor());
    dio.interceptors.add(AuthInterceptor());
  }

  @override
  Future<ApiResponse<BaseListResult<Movie>>>  getNowPlaying(int page) async {

    try{
      final response = await dio.get(
          'movie/now_playing',
          queryParameters: {
            'language': 'en-US',
            'page': page
          },
      );
      // await Future.delayed(const Duration(seconds: 2));
      // throw DioException(requestOptions: RequestOptions(), type: DioExceptionType.unknown);
      dev.log('MovieService - Get Now Playing API ${response.statusCode}', time: DateTime.now());
      return ApiResponseSuccess(BaseListResult.fromJson(response.data, (movieJson) => Movie.fromJson(movieJson as Map<String, dynamic>),));
    }on DioException catch (e, stacktrace){
      dev.log('MovieService - Get Now Playing API [DioException]', error: e.error);
      return ApiResponseError(e.response?.statusCode ?? e.type.index, e.response?.statusMessage ?? e.type.name, uuid.v4());
    }

  }

  @override
  Future<ApiResponse<BaseListResult<Movie>>>  getTopRated(int page) async {
    try{
      final response = await dio.get(
          'movie/top_rated',
          queryParameters: {
            'language': 'en-US',
            'page': page
          }
      );
      dev.log('MovieService - Get Top Rated API ${response.statusCode}', time: DateTime.now());
      return ApiResponseSuccess(BaseListResult.fromJson(response.data, (movieJson) => Movie.fromJson(movieJson as Map<String, dynamic>),));
    }on DioException catch (e, stacktrace){
      dev.log('MovieService - Get Top Rated API [DioException]', error: e.error);
      return ApiResponseError(e.response?.statusCode ?? e.type.index, e.response?.statusMessage ?? e.type.name, uuid.v4());
    }
  }

  @override
  Future<ApiResponse<BaseListResult<Movie>>> getTrend(int page, Trend trend) async {
    try{
      final response = await dio.get(
          'https://api.themoviedb.org/3/trending/movie/${trend.name}',
          queryParameters: {
            'language': 'en-US',
            'page': page
          }
      );
      dev.log('MovieService - Get Trend of the ${trend.name} API ${response.statusCode}', time: DateTime.now());
      return ApiResponseSuccess(BaseListResult.fromJson(response.data, (movieJson) => Movie.fromJson(movieJson as Map<String, dynamic>),));
    }on DioException catch (e, stacktrace){
      dev.log('MovieService - Get Trend of the ${trend.name} API [DioException]', error: e.error);
      return ApiResponseError(e.response?.statusCode ?? e.type.index, e.response?.statusMessage ?? e.type.name, uuid.v4());
    }
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