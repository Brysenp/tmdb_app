import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:net_flix/home/enum/trend_enum.dart';
import 'package:net_flix/home/interface/home_interface.dart';
import 'package:net_flix/home/services/home_service.dart';
import 'package:net_flix/models/api_response.dart';
import 'package:net_flix/models/base_list_result.dart';
import 'package:net_flix/models/movie/movie.dart';
import 'mock_data_home.dart';

final mockHomeServiceProvider = Provider<HomeInterface>(
    (ref) => MockHomeService()
);

final mockErrorHomeServiceProvider = Provider<HomeInterface>(
        (ref) => MockErrorHomeService()
);

class MockHomeService implements HomeInterface{
  @override
  Future<ApiResponse<BaseListResult<Movie>>> getNowPlaying(int page) async {
    final mockData = MockDataHome.movieListResponse;
    return ApiResponseSuccess(BaseListResult.fromJson(mockData, (movie) => Movie.fromJson(movie  as Map<String, dynamic>)));
  }

  @override
  Future<ApiResponse<BaseListResult<Movie>>> getTopRated(int page) async {
    final mockData = MockDataHome.movieListResponse;
    return ApiResponseSuccess(BaseListResult.fromJson(mockData, (movie) => Movie.fromJson(movie  as Map<String, dynamic>)));
  }

  @override
  Future<ApiResponse<BaseListResult<Movie>>> getTrend(int page, Trend trend) async {
    final mockData = MockDataHome.movieListResponse;
    return ApiResponseSuccess(BaseListResult.fromJson(mockData, (movie) => Movie.fromJson(movie  as Map<String, dynamic>)));
  }

}

class MockErrorHomeService implements HomeInterface{

  @override
  Future<ApiResponse<BaseListResult<Movie>>> getNowPlaying(int page) async {
    return const ApiResponseError(999, 'Now Playing testing with throwing error', '123456789');
  }

  @override
  Future<ApiResponse<BaseListResult<Movie>>> getTopRated(int page) async {
    return const ApiResponseError(999, 'Top Rated testing with throwing error', '123456789');
  }

  @override
  Future<ApiResponse<BaseListResult<Movie>>> getTrend(int page, Trend trend) async {
    return const ApiResponseError(999, 'Trend testing with throwing error', '123456789');
  }

}
