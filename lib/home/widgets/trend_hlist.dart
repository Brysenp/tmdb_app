import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:net_flix/controller/page_state.dart';
import 'package:net_flix/controller/page_state_notifier.dart';
import 'package:net_flix/home/widgets/movie_hlist.dart';
import 'package:net_flix/home/widgets/movie_hlist_skeleton.dart';

import 'dart:developer' as dev;

import 'package:net_flix/models/movie/movie.dart';

class TrendHList extends StatelessWidget {
  TrendHList({super.key, this.title = 'Top Rated', required this.trendProvider});
  final String? title;
  final AutoDisposeStateNotifierProvider<PageStateNotifier<Movie>, PageState<Movie>> trendProvider;

  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context){
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(title!, style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.white)),
        ),
        const Divider(height: 8),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.21,
          child: Consumer(
            builder: (ctx, ref, child){
              scrollController.addListener(() {
                double maxScroll = scrollController.position.maxScrollExtent;
                double currentScroll = scrollController.position.pixels;
                double delta = MediaQuery.of(context).size.width * 0.1;
                if(maxScroll - currentScroll <= delta){
                  ref.read(trendProvider.notifier).fetchNextPage();
                }
              });
              final state = ref.watch(trendProvider);
              return switch(state){
                Loading() => const MovieHListSkeleton(),
                Error(:final message, :final code) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text('$message [$code]', style: Theme.of(context).textTheme.displaySmall?.copyWith(color: Colors.white)),
                ),
                OnSubsequentLoad(:final items) => MovieHList(
                  stateNotifierProvider: trendProvider,
                  movies: items,
                  scrollController: scrollController,
                ),
                OnSubsequentError(:final loadedItems, :final message, :final code) => MovieHList(
                    stateNotifierProvider: trendProvider,
                    movies: loadedItems,
                    scrollController: scrollController
                ),
                Data(:final items) => MovieHList(
                  stateNotifierProvider: trendProvider,
                  movies: items,
                  scrollController: scrollController,
                ),
              };
            },
          ),
        )
      ],
    );
  }
}
