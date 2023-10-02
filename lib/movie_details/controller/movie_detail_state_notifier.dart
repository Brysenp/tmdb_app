import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:net_flix/controller/load_state.dart';
import 'package:net_flix/models/api_response.dart';
import 'package:net_flix/models/movie/movie_detail.dart';

import 'dart:developer' as dev;

import 'package:net_flix/movie_details/services/movie_details_service.dart';

class MovieDetailStateNotifier extends StateNotifier<LoadState<MovieDetail>> {
  MovieDetailStateNotifier({required this.ref, required this.movieId})
      : super(const LoadState.loading());
  int movieId;
  Ref ref;

  bool _fetching = false;

  void init() async {
    fetchData();
  }

  void refresh() async {
    state = const LoadState.loading();
    fetchData();
  }

  Future<void> fetchData() async {
    if (_fetching) {
      return;
    }
    try {
      _fetching = true;
      final result =
          await ref.watch(movieDetailServiceProvider).getMovieDetail(movieId);
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
