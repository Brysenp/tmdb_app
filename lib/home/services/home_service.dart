import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:net_flix/home/enum/trend_enum.dart';
import 'package:net_flix/home/interface/home_interface.dart';
import 'package:net_flix/models/api_response.dart';
import 'package:net_flix/models/base_list_result.dart';
import 'package:net_flix/models/movie/movie.dart';
import 'package:net_flix/network_interceptors/authorization_interceptor.dart';
import 'package:net_flix/network_interceptors/logger_interceptor.dart';
import 'package:net_flix/providers/core_providers.dart';
import 'package:uuid/uuid.dart';
import 'dart:developer' as dev;


final homeServiceProvider = Provider<HomeInterface>(
    (ref) => HomeService(ref.watch(dioProvider), ref.read(uuidProvider))
);

class HomeService implements HomeInterface{

  final Dio dio;
  final Uuid uuid;
  HomeService(this.dio, this.uuid){
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

}