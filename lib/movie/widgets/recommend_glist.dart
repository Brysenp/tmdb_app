import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:net_flix/core/controller/page_state.dart';
import 'package:net_flix/core/core_providers.dart';
import 'package:net_flix/movie/movie_providers.dart';

class RecommendGList extends ConsumerStatefulWidget{
  const RecommendGList({super.key, required this.movieId});
  final int movieId;

  @override
  ConsumerState createState() => _RecommendGListState();
}

class _RecommendGListState extends ConsumerState<RecommendGList> with AutomaticKeepAliveClientMixin {

  Widget imagePlaceholder = Padding(
    padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 12),
    child: SvgPicture.asset(
      'assets/logo/app_bar.svg',
      alignment: Alignment.center,
      fit: BoxFit.scaleDown,
    ),
  );

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(movieRecommendation(widget.movieId));
    return CustomScrollView(
      slivers: [
        SliverOverlapInjector(
          handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
        ),
        switch(state){
          Loading() => const SliverToBoxAdapter(
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: CircularProgressIndicator(
                  color: Color(0xffe50913),
                ),
              ),
            ),
          ),
          Data(:final items) => SliverGrid.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 2/3,
            ),
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: AspectRatio(
                  aspectRatio: 2/3,
                  child: CachedNetworkImage(
                    fit: BoxFit.cover,
                    imageUrl: '${ref.read(movieImageBaseUrlProvider)}${items[index].imageUrl}',
                    errorWidget:
                        (BuildContext ctx, String url, Object? error) {
                      return imagePlaceholder;
                    },
                    placeholder: (BuildContext ctx, String url) {
                      return imagePlaceholder;
                    },
                  ),
                ),
              );
            },
          ),
          Error(:final message, :final code) => SliverToBoxAdapter(
            child: Center(
              child: Text(
                '[$code] - $message',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.white
                ),
              ),
            ),
          ),
          OnSubsequentError(:final loadedItems, :final message, :final code) => const SliverToBoxAdapter(child: SizedBox.shrink(),),
          OnSubsequentLoad(:final items) => const SliverToBoxAdapter(child: SizedBox.shrink(),)
        }
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}