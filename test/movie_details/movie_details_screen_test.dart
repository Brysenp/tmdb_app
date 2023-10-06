import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:net_flix/controller/page_state_notifier.dart';
import 'package:net_flix/home/widgets/horizontal_movie_skeletal.dart';
import 'package:net_flix/models/movie/movie.dart';
import 'package:net_flix/movie_details/controller/movie_detail_state_notifier.dart';
import 'package:net_flix/movie_details/movie_detail_providers.dart';
import 'package:net_flix/movie_details/movie_detail_screen.dart';
import 'package:net_flix/movie_details/services/movie_details_service.dart';

import 'services/mock_movie_detail_service.dart';

void main() {
  testWidgets('Test UI when data is loaded (Movie Details Screen)', (tester) async {
    await tester.pumpWidget(ProviderScope(
        overrides: [
          movieDetailProvider.overrideWith((ref, id) =>
              MovieDetailStateNotifier(
                  fetchData: () => ref
                      .read(mockMovieDetailServiceProvider)
                      .getMovieDetail(id))
                ..init()),
          movieRecommendation.overrideWith(
              (ref, id) => PageStateNotifier(fetchNext: (int page) {
                    return ref
                        .read(mockMovieDetailServiceProvider)
                        .getRecommendMovie(id, page);
                  })
                    ..inti()),
          movieReviewsProvider.overrideWith(
              (ref, id) => PageStateNotifier(fetchNext: (int page) {
                    return ref
                        .read(mockMovieDetailServiceProvider)
                        .getMovieReviews(id, page);
                  })
                    ..inti())
        ],
        child: MaterialApp(
          home: MovieDetailScreen(
              heroUUID: '123',
              selectedMovie: Movie(
                id: 1,
                adult: false,
                title: 'UI Test Movie Detail Title',
                overview: 'UI Test Movie Detail Overview',
                imageUrl: '/mXLOHHc1Zeuwsl4xYKjKh2280oL.jpg',
                releaseDate: DateTime.now(),
              )),
        ))
    );

    expect(find.byType(NestedScrollView), findsOneWidget);
    // Screen is in loading state
    expect(find.byType(HorizontalMovieSkeletal), findsAtLeastNWidgets(2));
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
    expect(find.byType(SliverGrid), findsNothing);
    expect(find.byType(SliverList), findsNothing);

    await tester.pump();

    expect(find.byType(SliverGrid), findsOneWidget);
    expect(find.byType(SliverList), findsNothing);

    await tester.tap(find.text('Reviews'));
    await tester.pumpAndSettle();
    expect(find.byType(SliverList), findsOneWidget);

  });

  testWidgets('Test UI when error occurred (Movie Details Screen)', (tester) async {
    await tester.pumpWidget(ProviderScope(
        overrides: [
          movieDetailProvider.overrideWith((ref, id) =>
          MovieDetailStateNotifier(
              fetchData: () => ref
                  .read(mockErrorMovieDetailServiceProvider)
                  .getMovieDetail(id))
            ..init()),
          movieRecommendation.overrideWith(
                  (ref, id) => PageStateNotifier(fetchNext: (int page) {
                return ref
                    .read(mockErrorMovieDetailServiceProvider)
                    .getRecommendMovie(id, page);
              })
                ..inti()),
          movieReviewsProvider.overrideWith(
                  (ref, id) => PageStateNotifier(fetchNext: (int page) {
                return ref
                    .read(mockErrorMovieDetailServiceProvider)
                    .getMovieReviews(id, page);
              })
                ..inti())
        ],
        child: MaterialApp(
          home: MovieDetailScreen(
              heroUUID: '123',
              selectedMovie: Movie(
                id: 1,
                adult: false,
                title: 'UI Test Movie Detail Title',
                overview: 'UI Test Movie Detail Overview',
                imageUrl: '/mXLOHHc1Zeuwsl4xYKjKh2280oL.jpg',
                releaseDate: DateTime.now(),
              )),
        ))
    );

    expect(find.byType(NestedScrollView), findsOneWidget);
    // Screen is in loading state
    expect(find.byType(HorizontalMovieSkeletal), findsAtLeastNWidgets(2));
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
    expect(find.byType(SliverGrid), findsNothing);
    expect(find.byType(SliverList), findsNothing);

    await tester.pump();

    expect(find.byType(SliverGrid), findsNothing);
    expect(find.byType(SliverList), findsNothing);
    expect(find.textContaining('999'), findsOneWidget);
    expect(find.textContaining('Recommend Movie testing with throwing error'), findsOneWidget);

    await tester.tap(find.text('Reviews'));
    await tester.pumpAndSettle();
    expect(find.textContaining('999'), findsOneWidget);
    expect(find.textContaining('Movie Review testing with throwing error'), findsOneWidget);

  });
}
