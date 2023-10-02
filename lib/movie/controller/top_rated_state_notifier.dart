import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:net_flix/core/models/api_response.dart';
import 'package:net_flix/movie/controller/get_movie_state.dart';
import 'package:net_flix/movie/models/movie.dart';
import 'package:net_flix/movie/services/movie_service.dart';

import '../interface/movie_interface.dart';

final topRatedNotifierProvider =
StateNotifierProvider<TopRatedStateNotifier, GetMovieState>(
        (ref) => TopRatedStateNotifier(ref.watch(movieServiceProvider)));

class TopRatedStateNotifier extends StateNotifier<GetMovieState> {

  final MovieInterface _movieService;
  TopRatedStateNotifier(this._movieService): super(const GetMovieState.initial());


  GetMovieState matchState(ApiResponse<TopRated> result) => switch(result){
    ApiResponseSuccess(:final data) => state = GetMovieState.data(data),
    ApiResponseError(:final code, :final message, :final referenceId) => state = GetMovieState.error(message),
    ApiResponseClientError(:final code, :final message, :final referenceId) => state = GetMovieState.error(message),
    ApiResponseServerError(:final code, :final message, :final referenceId) => state = GetMovieState.error(message),
  };

  Future<void> getTopRatedMovies() async {

    state = const GetMovieState.loading();
    final result = await _movieService.getTopRated();
    matchState(result);

  }

}