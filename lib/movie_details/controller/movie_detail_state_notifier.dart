import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:net_flix/controller/load_state.dart';
import 'package:net_flix/models/api_response.dart';
import 'package:net_flix/models/movie/movie_detail.dart';

import 'dart:developer' as dev;

import 'package:net_flix/movie_details/services/movie_details_service.dart';

class MovieDetailStateNotifier extends StateNotifier<LoadState<MovieDetail>> {
  MovieDetailStateNotifier({required this.fetchData})
      : super(const LoadState.loading());

  final Future<ApiResponse<MovieDetail>> Function() fetchData;


  bool _fetching = false;

  void init() async {
    fetchMovieDetail();
  }

  void refresh() async {
    state = const LoadState.loading();
    fetchMovieDetail();
  }

  Future<void> fetchMovieDetail() async {
    if (_fetching) {
      return;
    }
    try {
      _fetching = true;
      final result = await fetchData();
      updateState(result);
    } catch (error) {
      state = LoadState.error(error.toString(), null);
    } finally {
      _fetching = false;
    }
  }

  updateState(ApiResponse<MovieDetail> result) => switch (result) {
    ApiResponseSuccess(:final data) => {
      state = LoadState.data(data),
      dev.log('hello are you ok')
    },
    ApiResponseError(:final code, :final message, :final referenceId) ||
    ApiResponseClientError(
        :final code,
        :final message,
        :final referenceId
    ) ||
    ApiResponseServerError(
        :final code,
        :final message,
        :final referenceId
    ) =>
    {state = LoadState.error(message, code)}
  };
}
