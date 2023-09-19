import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_movie_state.freezed.dart';

@Freezed(genericArgumentFactories: true)
sealed class GetMovieState<T> with _$GetMovieState<T> {
  const factory GetMovieState.initial() = _Initial;
  const factory GetMovieState.loading() = _Loading;
  const factory GetMovieState.data(T movie) = _NowPlaying;
  const factory GetMovieState.error(String message) = _Error;
}

extension GetMovieStateStateX<T> on GetMovieState<T> {

  T? get nowPlaying => maybeWhen(data: (data) => data, orElse: () => null);

}