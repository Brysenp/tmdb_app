import 'package:flutter/material.dart';
import 'package:net_flix/models/movie/movie.dart';
import 'package:net_flix/movie_details/widgets/movie_detail.dart';
import 'package:net_flix/movie_details/widgets/recommend_glist.dart';
import 'package:net_flix/movie_details/widgets/review_vlist.dart';

import 'dart:developer' as dev;

import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class MovieDetailScreen extends StatelessWidget {
  const MovieDetailScreen({super.key, required this.selectedMovie, required this.heroUUID});
  final Movie selectedMovie;
  final String heroUUID;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverToBoxAdapter(
                  child: MovieDetailWidget(selectedMovie: selectedMovie, heroUUID: heroUUID),
                ),
                SliverOverlapAbsorber(
                  handle:
                      NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                  sliver: SliverAppBar(
                    pinned: true,
                    forceElevated: innerBoxIsScrolled,
                    automaticallyImplyLeading: false,
                    backgroundColor: Theme.of(context).colorScheme.background,
                    titleSpacing: 0,
                    title: TabBar(
                      // tabAlignment: TabAlignment.start,
                      indicator: MaterialIndicator(
                          tabPosition: TabPosition.top,
                          color: const Color(0xffe50913),
                          topRightRadius: 0,
                          topLeftRadius: 0,
                          height: 3,
                          strokeWidth: 1),
                      isScrollable: true,
                      tabs: const [
                        Tab(
                          text: 'Recommendations',
                        ),
                        Tab(
                          text: 'Reviews',
                        )
                      ],
                    ),
                  ),
                )
              ];
            },
            body: TabBarView(
              children: [
                RecommendGList(movieId: selectedMovie.id),
                ReviewVList(movieId: selectedMovie.id)
              ],
            )),
      ),
    );
  }
}
