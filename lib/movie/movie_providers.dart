import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:net_flix/core/controller/load_state.dart';
import 'package:net_flix/core/controller/page_state.dart';
import 'package:net_flix/core/controller/page_state_notifier.dart';
import 'package:net_flix/movie/controller/movie_detail_state_notifier.dart';
import 'package:net_flix/movie/enum/trend_enum.dart';
import 'package:net_flix/movie/models/movie.dart';
import 'package:net_flix/movie/models/movie_detail.dart';
import 'package:net_flix/movie/models/review.dart';
import 'package:net_flix/movie/services/movie_service.dart';

final nowPlayingProvider =
    StateNotifierProvider.autoDispose<PageStateNotifier<Movie>, PageState<Movie>>(
        (ref) => PageStateNotifier(fetchNext: (page) {
              return ref.read(movieServiceProvider).getNowPlaying(page);
            })
              ..inti());

final topRatedProvider =
    StateNotifierProvider.autoDispose<PageStateNotifier<Movie>, PageState<Movie>>(
        (ref) => PageStateNotifier(fetchNext: (page) {
              return ref.read(movieServiceProvider).getTopRated(page);
            })
              ..inti());

final trendOfDayProvider =
    StateNotifierProvider.autoDispose<PageStateNotifier<Movie>, PageState<Movie>>(
        (ref) => PageStateNotifier(fetchNext: (page) {
              return ref.read(movieServiceProvider).getTrend(page, Trend.day);
            })
              ..inti());

final trendOfWeekProvider =
    StateNotifierProvider.autoDispose<PageStateNotifier<Movie>, PageState<Movie>>(
        (ref) => PageStateNotifier(fetchNext: (page) {
              return ref.read(movieServiceProvider).getTrend(page, Trend.week);
            })
              ..inti());

final movieDetailProvider = StateNotifierProvider.autoDispose.family<
    MovieDetailStateNotifier,
    LoadState<MovieDetail>,
    int>((ref, id) => MovieDetailStateNotifier(ref: ref, movieId: id)..init());

final movieReviewsProvider = StateNotifierProvider.autoDispose.family<PageStateNotifier<Review>,
        PageState<Review>, int>(
    (ref, movieId) => PageStateNotifier(fetchNext: (page) {
          return ref.read(movieServiceProvider).getMovieReviews(movieId, page);
        })..inti());

final movieRecommendation = StateNotifierProvider.autoDispose.family<
        PageStateNotifier<Movie>, PageState<Movie>, int>(
    (ref, movieId) => PageStateNotifier(
          fetchNext: (page) {
            return ref
                .read(movieServiceProvider)
                .getRecommendMovie(movieId, page);
          },
          maxPageNumber: 1,
        )..inti());

final imageHeightFactor = Provider<double>((ref) => 0.21);
final imageWidthFactor = Provider<double>((ref) => 0.15);
final imageHeroTransitionTag = Provider<String>((ref) => 'movie_image_hero');
