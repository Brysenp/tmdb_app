import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:net_flix/controller/page_state.dart';
import 'package:net_flix/home/home_providers.dart';
import 'package:net_flix/home/widgets/movie_hlist.dart';
import 'package:net_flix/home/widgets/movie_hlist_skeleton.dart';

import 'dart:developer' as dev;

class TopRatedHList extends StatelessWidget {
  TopRatedHList({super.key, this.title = 'Top Rated'});
  final String? title;

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
                  ref.read(topRatedProvider.notifier).fetchNextPage();
                }
              });
              final state = ref.watch(topRatedProvider);
              return switch(state){
                Loading() => const MovieHListSkeleton(),
                Error(:final message, :final code) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text('$message [$code]', style: Theme.of(context).textTheme.displaySmall?.copyWith(color: Colors.white)),
                ),
                OnSubsequentLoad(:final items) => MovieHList(
                    stateNotifierProvider: topRatedProvider,
                    movies: items,
                    scrollController: scrollController,
                ),
                OnSubsequentError(:final loadedItems, :final message, :final code) => MovieHList(
                    stateNotifierProvider: topRatedProvider,
                    movies: loadedItems,
                    scrollController: scrollController
                ),
                Data(:final items) => MovieHList(
                  stateNotifierProvider: topRatedProvider,
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
