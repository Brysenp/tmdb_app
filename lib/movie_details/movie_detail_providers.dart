import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:net_flix/controller/load_state.dart';
import 'package:net_flix/controller/page_state.dart';
import 'package:net_flix/controller/page_state_notifier.dart';
import 'package:net_flix/models/movie/movie.dart';
import 'package:net_flix/models/movie/movie_detail.dart';
import 'package:net_flix/models/movie/review.dart';
import 'package:net_flix/movie_details/controller/movie_detail_state_notifier.dart';
import 'package:net_flix/movie_details/services/movie_details_service.dart';

final movieDetailProvider = StateNotifierProvider.autoDispose.family<
    MovieDetailStateNotifier,
    LoadState<MovieDetail>,
    int>((ref, id) => MovieDetailStateNotifier(ref: ref, movieId: id)..init());

final movieReviewsProvider = StateNotifierProvider.autoDispose.family<PageStateNotifier<Review>,
    PageState<Review>, int>(
        (ref, movieId) => PageStateNotifier(fetchNext: (page) {
      return ref.read(movieDetailServiceProvider).getMovieReviews(movieId, page);
    })..inti());

final movieRecommendation = StateNotifierProvider.autoDispose.family<
    PageStateNotifier<Movie>, PageState<Movie>, int>(
        (ref, movieId) => PageStateNotifier(
      fetchNext: (page) {
        return ref
            .read(movieDetailServiceProvider)
            .getRecommendMovie(movieId, page);
      },
      maxPageNumber: 1,
    )..inti());

