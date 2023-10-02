import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:net_flix/core/models/api_response.dart';
import 'package:net_flix/movie/controller/get_movie_state.dart';
import 'package:net_flix/movie/models/movie.dart';
import 'package:net_flix/movie/services/movie_service.dart';

import '../interface/movie_interface.dart';

final nowPlayingNotifierProvider =
StateNotifierProvider<NowPlayingStateNotifier, GetMovieState>(
        (ref) => NowPlayingStateNotifier(ref.watch(movieServiceProvider)));

class NowPlayingStateNotifier extends StateNotifier<GetMovieState> {

  final MovieInterface _movieService;
  NowPlayingStateNotifier(this._movieService): super(const GetMovieState.initial());


  GetMovieState matchState(ApiResponse<NowPlaying> result) => switch(result){
    ApiResponseSuccess(:final data) => state = GetMovieState.data(data),
    ApiResponseError(:final code, :final message, :final referenceId) => state = GetMovieState.error(message),
    ApiResponseClientError(:final code, :final message, :final referenceId) => state = GetMovieState.error(message),
    ApiResponseServerError(:final code, :final message, :final referenceId) => state = GetMovieState.error(message),
  };

  Future<void> getNowPlayingMovies() async {

    state = const GetMovieState.loading();
    final result = await _movieService.getNowPlaying();
    matchState(result);

  }

}