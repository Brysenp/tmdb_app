import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:net_flix/core/controller/load_state.dart';
import 'package:net_flix/core/models/api_response.dart';
import 'package:net_flix/movie/services/movie_service.dart';

import '../models/movie_detail.dart';

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
      final ApiResponse<MovieDetail> result =
          await ref.watch(movieServiceProvider).getMovieDetail(movieId);
      () => switch (result) {
            ApiResponseSuccess(:final data) => {state = LoadState.data(data)},
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
    } catch (error) {
      state = LoadState.error(error.toString(), null);
    } finally {
      _fetching = false;
    }
  }
}
