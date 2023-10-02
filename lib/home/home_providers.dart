import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:net_flix/controller/page_state.dart';
import 'package:net_flix/controller/page_state_notifier.dart';
import 'package:net_flix/home/enum/trend_enum.dart';
import 'package:net_flix/home/services/home_service.dart';
import 'package:net_flix/models/movie/movie.dart';

final nowPlayingProvider =
StateNotifierProvider.autoDispose<PageStateNotifier<Movie>, PageState<Movie>>(
        (ref) => PageStateNotifier(fetchNext: (page) {
      return ref.read(homeServiceProvider).getNowPlaying(page);
    })
      ..inti());

final topRatedProvider =
StateNotifierProvider.autoDispose<PageStateNotifier<Movie>, PageState<Movie>>(
        (ref) => PageStateNotifier(fetchNext: (page) {
      return ref.read(homeServiceProvider).getTopRated(page);
    })
      ..inti());

final trendOfDayProvider =
StateNotifierProvider.autoDispose<PageStateNotifier<Movie>, PageState<Movie>>(
        (ref) => PageStateNotifier(fetchNext: (page) {
      return ref.read(homeServiceProvider).getTrend(page, Trend.day);
    })
      ..inti());

final trendOfWeekProvider =
StateNotifierProvider.autoDispose<PageStateNotifier<Movie>, PageState<Movie>>(
        (ref) => PageStateNotifier(fetchNext: (page) {
      return ref.read(homeServiceProvider).getTrend(page, Trend.week);
    })
      ..inti());


final imageHeightFactor = Provider<double>((ref) => 0.21);
final imageWidthFactor = Provider<double>((ref) => 0.15);
