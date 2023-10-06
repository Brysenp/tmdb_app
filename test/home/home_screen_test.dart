import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:net_flix/controller/page_state_notifier.dart';
import 'package:net_flix/home/enum/trend_enum.dart';
import 'package:net_flix/home/home_providers.dart';
import 'package:net_flix/home/widgets/horizontal_movie_skeletal.dart';
import 'package:net_flix/home/widgets/movie_hlist.dart';
import 'package:net_flix/home/widgets/random_movie.dart';
import 'package:net_flix/home/widgets/trend_hlist.dart';
import 'package:net_flix/main.dart';

import 'services/mock_home_service.dart';

void main() {
  testWidgets('Test UI when data is loaded (Home Screen)', (widgetTester) async {
    await widgetTester.pumpWidget(
        ProviderScope(
          overrides: [
            nowPlayingProvider.overrideWith((ref) => PageStateNotifier(fetchNext: (page) {
              return ref.read(mockHomeServiceProvider).getNowPlaying(page);
            })..inti()),
            topRatedProvider.overrideWith((ref) => PageStateNotifier(fetchNext: (page) {
              return ref.read(mockHomeServiceProvider).getTopRated(page);
            })..inti()),
            trendOfDayProvider.overrideWith((ref) => PageStateNotifier(fetchNext: (page) {
              return ref.read(mockHomeServiceProvider).getTrend(page, Trend.day);
            })..inti()),
            trendOfWeekProvider.overrideWith((ref) => PageStateNotifier(fetchNext: (page) {
              return ref.read(mockHomeServiceProvider).getTrend(page, Trend.week);
            })..inti()),
            nowPlayingProvider.overrideWith((ref) => PageStateNotifier(fetchNext: (page) {
              return ref.read(mockHomeServiceProvider).getNowPlaying(page);
            })..inti()),
          ],
          child: MyApp()
    ));

    // Before scroll, first frame render will be in the loading state
    // A few HorizontalMovieSkeletal widgets can be found in the screen in the loading state
    // because the horizontal list view and random movie widget is using the same widget in loading state
    expect(find.byType(RandomMovie), findsOneWidget);
    expect(find.byType(HorizontalMovieSkeletal), findsAtLeastNWidgets(3));
    expect(find.byType(CustomScrollView), findsOneWidget);
    // Then we will start scrolling the custom scroll view down until we found the text/type/widget we want
    final scrollView = find.byType(CustomScrollView);
    await widgetTester.dragUntilVisible(
        find.text('Movie of the Week'),
        scrollView,
        const Offset(0, -400)
    );
    // After we scrolling is done, we need to re-render the view
    await widgetTester.pump();
    // Lastly, check whether the expected widgets is rendered
    expect(find.byType(TrendHList),findsAtLeastNWidgets(2));
    expect(find.byType(MovieHList), findsAtLeastNWidgets(3));
  });

  testWidgets('Test UI when first API call has en error (Home Screen)', (widgetTester) async {
    await widgetTester.pumpWidget(
        ProviderScope(
            overrides: [
              nowPlayingProvider.overrideWith((ref) => PageStateNotifier(fetchNext: (page) {
                return ref.read(mockErrorHomeServiceProvider).getNowPlaying(page);
              })..inti()),
              topRatedProvider.overrideWith((ref) => PageStateNotifier(fetchNext: (page) {
                return ref.read(mockErrorHomeServiceProvider).getTopRated(page);
              })..inti()),
              trendOfDayProvider.overrideWith((ref) => PageStateNotifier(fetchNext: (page) {
                return ref.read(mockErrorHomeServiceProvider).getTrend(page, Trend.day);
              })..inti()),
              trendOfWeekProvider.overrideWith((ref) => PageStateNotifier(fetchNext: (page) {
                return ref.read(mockErrorHomeServiceProvider).getTrend(page, Trend.week);
              })..inti()),
              nowPlayingProvider.overrideWith((ref) => PageStateNotifier(fetchNext: (page) {
                return ref.read(mockErrorHomeServiceProvider).getNowPlaying(page);
              })..inti()),
            ],
            child: MyApp()
        ));

    // Before scroll, first frame render will be in the loading state
    // A few HorizontalMovieSkeletal widgets can be found in the screen in the loading state
    // because the horizontal list view and random movie widget is using the same widget in loading state
    expect(find.byType(HorizontalMovieSkeletal), findsAtLeastNWidgets(3));
    expect(find.byType(CustomScrollView), findsOneWidget);
    // Then we will start scrolling the custom scroll view down until we found the text/type/widget we want
    final scrollView = find.byType(CustomScrollView);
    await widgetTester.dragUntilVisible(
        find.text('Movie of the Week'),
        scrollView,
        const Offset(0, -400)
    );
    // After we scrolling is done, we need to re-render the view
    await widgetTester.pump();
    // Lastly, check whether the expected widgets is rendered
    expect(find.byType(RandomMovie), findsNothing);
    expect(find.byType(TrendHList),findsAtLeastNWidgets(2));
    expect(find.textContaining('999'), findsAtLeastNWidgets(3));
    expect(find.textContaining('testing with throwing error'), findsAtLeastNWidgets(3));
  });

}
