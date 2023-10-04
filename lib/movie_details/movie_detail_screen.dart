import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:net_flix/models/movie/movie.dart';
import 'package:net_flix/movie_details/widgets/movie_detail.dart';
import 'package:net_flix/movie_details/widgets/recommend_glist.dart';
import 'package:net_flix/movie_details/widgets/review_vlist.dart';

import 'dart:developer' as dev;
import 'dart:math' as math;

import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class MovieDetailScreen extends StatelessWidget {
  const MovieDetailScreen(
      {super.key, required this.selectedMovie, required this.heroUUID});
  final Movie selectedMovie;
  final String heroUUID;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      // To have the status bar on top the screen
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverOverlapAbsorber(
                  handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                  sliver: SliverPadding(
                    sliver: SliverToBoxAdapter(
                      child: MovieDetailWidget(
                          selectedMovie: selectedMovie,
                          heroUUID: heroUUID,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                  ),
                ),
                const SliverToBoxAdapter(
                  child: Divider(
                    height: 12,
                  ),
                ),
                SliverPersistentHeader(
                    pinned: true,
                    delegate: _SliverAppBarDelegate(
                      minHeight: kToolbarHeight,
                      maxHeight: kToolbarHeight,
                      child: Container(
                        color: Theme.of(context).colorScheme.background,
                        child: TabBar(
                          indicator: MaterialIndicator(
                            tabPosition: TabPosition.top,
                            color: const Color(0xffe50913),
                            topRightRadius: 0,
                            topLeftRadius: 0,
                            height: 3,
                            strokeWidth: 1,
                          ),
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
                ),
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

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });
  final double minHeight;
  final double maxHeight;
  final Widget child;
  @override
  double get minExtent => minHeight;
  @override
  double get maxExtent => math.max(maxHeight, minHeight);
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
