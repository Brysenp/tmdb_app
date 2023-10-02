import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intrinsic_dimension/intrinsic_dimension.dart';
import 'package:net_flix/core/controller/load_state.dart';
import 'package:net_flix/core/core_providers.dart';
import 'package:net_flix/movie/models/movie.dart';
import 'package:net_flix/movie/models/movie_detail.dart';
import 'package:net_flix/movie/movie_providers.dart';
import 'package:net_flix/movie/widgets/horizontal_movie_skeletal.dart';
import 'package:net_flix/movie/widgets/movie_detail.dart';

import 'dart:developer' as dev;

import 'package:tab_indicator_styler/tab_indicator_styler.dart';

import '../widgets/recommend_glist.dart';
import '../widgets/review_vlist.dart';

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
