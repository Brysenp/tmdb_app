import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:net_flix/core/network_interceptors/authorization_interceptor.dart';
import 'package:net_flix/core/network_interceptors/logger_interceptor.dart';
import 'package:net_flix/movie/models/movie.dart';
import 'package:net_flix/core/core_providers.dart';
import 'package:uuid/uuid.dart';
import 'dart:developer' as developer;

import '../../core/models/api_response.dart';
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
  Future<ApiResponse<NowPlaying>> getNowPlaying() async {

    try{
      final response = await dio.get(
          'movie/now_playing',
          queryParameters: {
            'language':'en-US',
            'page':1
          }
      );
      developer.log('MovieService - Get Now Playing API ${response.statusCode}', time: DateTime.now());

      return ApiResponseSuccess(NowPlaying.fromJson(response.data));
    }on DioException catch (e, stacktrace){
      developer.log('MovieService - Get Now Playing API [DioException]', error: e.error);
      return ApiResponseError(e.response?.statusCode ?? 999, e.response?.statusMessage ?? 'Unknown', uuid.v4());
    }

  }

  @override
  Future<ApiResponse<TopRated>> getTopRated() async {
    try{
      final response = await dio.get(
          'movie/top_rated',
          queryParameters: {
            'language':'en-US',
            'page':1
          }
      );
      developer.log('MovieService - Get Top Rated API ${response.statusCode}', time: DateTime.now());

      return ApiResponseSuccess(TopRated.fromJson(response.data));
    }on DioException catch (e, stacktrace){
      developer.log('MovieService - Get Top Rated API [DioException]', error: e.error);
      return ApiResponseError(e.response?.statusCode ?? 999, e.response?.statusMessage ?? 'Unknown', uuid.v4());
    }
  }



}