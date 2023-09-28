import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:net_flix/core/controller/load_state.dart';
import 'package:net_flix/core/controller/page_state.dart';
import 'package:net_flix/core/controller/page_state_notifier.dart';
import 'package:net_flix/movie/controller/movie_detail_state_notifier.dart';
import 'package:net_flix/movie/enum/trend_enum.dart';
import 'package:net_flix/movie/models/movie.dart';
import 'package:net_flix/movie/models/movie_detail.dart';
import 'package:net_flix/movie/services/movie_service.dart';

final nowPlayingProvider =
    StateNotifierProvider<PageStateNotifier<Movie>, PageState<Movie>>(
        (ref) => PageStateNotifier(fetchNext: (page) {
              return ref.read(movieServiceProvider).getNowPlaying(page);
            })
              ..inti());

final topRatedProvider =
    StateNotifierProvider<PageStateNotifier<Movie>, PageState<Movie>>(
        (ref) => PageStateNotifier(fetchNext: (page) {
              return ref.read(movieServiceProvider).getTopRated(page);
            })
              ..inti());

final trendOfDayProvider =
    StateNotifierProvider<PageStateNotifier<Movie>, PageState<Movie>>(
        (ref) => PageStateNotifier(fetchNext: (page) {
              return ref.read(movieServiceProvider).getTrend(page, Trend.day);
            })
              ..inti());

final trendOfWeekProvider =
    StateNotifierProvider<PageStateNotifier<Movie>, PageState<Movie>>(
        (ref) => PageStateNotifier(fetchNext: (page) {
              return ref.read(movieServiceProvider).getTrend(page, Trend.week);
            })
              ..inti());

final movieDetailProvider =
    StateNotifierProvider.family<MovieDetailStateNotifier, LoadState, Movie>(
        (ref, arg) => MovieDetailStateNotifier(ref: ref, movieId: arg.id));

final imageHeightFactor = Provider<double>((ref) => 0.21);
final imageWidthFactor = Provider<double>((ref) => 0.15);
