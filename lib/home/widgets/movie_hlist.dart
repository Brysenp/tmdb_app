import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:net_flix/controller/page_state.dart';
import 'package:net_flix/controller/page_state_notifier.dart';
import 'package:net_flix/home/home_providers.dart';
import 'package:net_flix/models/movie/movie.dart';

import '../../providers/core_providers.dart';
import '../../home/widgets/horizontal_movie_skeletal.dart';

class MovieHList extends ConsumerWidget {
  const MovieHList(
      {super.key,
      required this.movies,
      required this.stateNotifierProvider,
      required this.scrollController});
  final List<Movie> movies;
  final ScrollController scrollController;
  final AutoDisposeStateNotifierProvider<PageStateNotifier<Movie>, PageState<Movie>>
      stateNotifierProvider;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(stateNotifierProvider);
    return ListView.builder(
        controller: scrollController,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.zero,
        itemCount: movies.length + 1,
        itemBuilder: (BuildContext context, int index) {
          return index == movies.length ?
              // The last widget will based on the state and render the respective widget
          state.maybeWhen(
            onSubsequentError: (loadedItems, message, code) => MovieItemError(
              errorMsg: '$message [$code]',
              refresh: ref.read(stateNotifierProvider.notifier).fetchNextPage,
            ),
            onSubsequentLoad: (loadedItems) => const MovieItemLoading(),
            data: (items, reachedEnd) => reachedEnd ? const MovieReachEnd() : const SizedBox.shrink(),
            orElse: () => const SizedBox.shrink(),
          ): MovieItem(
            movie: movies[index],
          );
        });
  }
}

class MovieItem extends ConsumerWidget {
  const MovieItem({super.key, required this.movie, this.isLast = false});
  final Movie movie;
  final bool isLast;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String heroUUID = ref.read(uuidProvider).v4();
    double heightFactor = ref.read(imageHeightFactor);
    double widthFactor = ref.read(imageWidthFactor);
    return InkWell(
      onTap: (){
        GoRouter.of(context).go('/home/movie_detail?id=${movie.id}&heroId=$heroUUID', extra: movie);
      },
      child: Container(
        width: MediaQuery.of(context).size.height * widthFactor,
        height: MediaQuery.of(context).size.height * heightFactor,
        margin: isLast
            ? const EdgeInsets.symmetric(horizontal: 8)
            : const EdgeInsets.only(left: 8),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          children: [
            Hero(
              tag: heroUUID,
              child: CachedNetworkImage(
                imageUrl: '${ref.read(movieImageBaseUrlProvider)}${movie.imageUrl}',
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.height * widthFactor,
                height: MediaQuery.of(context).size.height * heightFactor,
                placeholder: (BuildContext ctx, String url) {
                  return HorizontalMovieSkeletal(
                    key: ObjectKey(movie.imageUrl),
                    width: MediaQuery.of(context).size.height * widthFactor,
                    height: MediaQuery.of(context).size.height * heightFactor,
                  );
                },
                errorWidget: (BuildContext ctx, String url, dynamic error) {
                  return const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.broken_image_rounded,
                        color: Colors.white,
                      ),
                      Text('Unable to load image',
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MovieItemError extends ConsumerWidget {
  const MovieItemError(
      {super.key, required this.errorMsg, required this.refresh});
  final String errorMsg;
  final Function refresh;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double heightFactor = ref.read(imageHeightFactor);
    double widthFactor = ref.read(imageWidthFactor);
    return Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.height * widthFactor,
        height: MediaQuery.of(context).size.height * heightFactor,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
        clipBehavior: Clip.hardEdge,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              errorMsg,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: Colors.white),
            ),
            IconButton(
                onPressed: () {
                  refresh();
                  // ref.read(stateNotifierProvider.notifier).fetchNextPage();
                },
                icon: const Icon(
                  Icons.refresh,
                  color: Colors.white,
                ))
          ],
        ));
  }
}

class MovieItemLoading extends ConsumerWidget {
  const MovieItemLoading({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double heightFactor = ref.read(imageHeightFactor);
    double widthFactor = ref.read(imageWidthFactor);
    return Container(
      width: MediaQuery.of(context).size.height * widthFactor,
      height: MediaQuery.of(context).size.height * heightFactor,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
      clipBehavior: Clip.hardEdge,
      child: HorizontalMovieSkeletal(
        key: const ObjectKey('loading'),
        width: MediaQuery.of(context).size.height * widthFactor,
        height: MediaQuery.of(context).size.height * heightFactor,
      ),
    );
  }
}

class MovieReachEnd extends ConsumerWidget {
  const MovieReachEnd({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double heightFactor = ref.read(imageHeightFactor);
    double widthFactor = ref.read(imageWidthFactor);
    return Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.height * widthFactor,
        height: MediaQuery.of(context).size.height * heightFactor,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
        clipBehavior: Clip.hardEdge,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'That\'s it',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: Colors.white),
            ),
            const Icon(
              Icons.smart_display_rounded,
              color: Colors.white,
            )
          ],
        ));
  }
}
