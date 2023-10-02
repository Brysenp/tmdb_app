import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:net_flix/core/controller/page_state.dart';
import 'package:net_flix/core/core_providers.dart';
import 'package:net_flix/movie/models/review.dart';
import 'package:net_flix/movie/movie_providers.dart';

class ReviewVList extends ConsumerStatefulWidget {
  const ReviewVList({super.key, required this.movieId});
  final int movieId;

  @override
  ConsumerState createState() => _ReviewVListState();
}

class _ReviewVListState extends ConsumerState<ReviewVList> with AutomaticKeepAliveClientMixin {

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(movieReviewsProvider(widget.movieId));
    return CustomScrollView(
      slivers: [
        SliverOverlapInjector(
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context)),
        switch (state) {
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
          Data(:final items) =>
            ReviewSliverList(reviews: items, movieId: widget.movieId),
          Error(:final message, :final code) => SliverToBoxAdapter(
              child: Center(
                child: Text(
                  '[$code] - $message',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: Colors.white),
                ),
              ),
            ),
          OnSubsequentError(:final loadedItems, :final message, :final code) =>
            ReviewSliverList(reviews: loadedItems, movieId: widget.movieId),
          OnSubsequentLoad(:final items) =>
            ReviewSliverList(reviews: items, movieId: widget.movieId),
        }
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class ReviewSliverList extends ConsumerWidget {
  const ReviewSliverList(
      {super.key, required this.reviews, required this.movieId});
  final List<Review> reviews;
  final int movieId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(movieReviewsProvider(movieId));
    return SliverList.builder(
        itemCount: reviews.length + 1,
        itemBuilder: (BuildContext context, int index) {
          return index == reviews.length
              ? state.maybeWhen(
                  onSubsequentError: (loadedItems, message, code) =>
                      ReviewItemError(
                    errorMsg: '$message [$code]',
                    refresh: ref
                        .read(movieReviewsProvider(movieId).notifier)
                        .fetchNextPage,
                  ),
                  onSubsequentLoad: (loadedItems) => const SizedBox(
                    height: 100,
                    child: Center(
                      child: CircularProgressIndicator(
                        color: Color(0xffe50913),
                      ),
                    ),
                  ),
                  data: (items, reachedEnd) => reachedEnd
                      ? const ReviewReachEnd()
                      : const SizedBox.shrink(),
                  orElse: () => const SizedBox.shrink(),
                )
              : ReviewListItem(
                  review: reviews[index],
                  isLast: index == (reviews.length - 1),
                );
        });
  }
}

class ReviewListItem extends StatelessWidget {
  const ReviewListItem({super.key, required this.review, this.isLast = false});
  final Review review;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    final avatarPlaceholder = Padding(
      padding: const EdgeInsets.all(10.0),
      child: SvgPicture.asset(
        'assets/logo/app_bar.svg',
        alignment: Alignment.center,
        fit: BoxFit.scaleDown,
      ),
    );

    return Padding(
      padding: EdgeInsets.fromLTRB(12, 12, 12, isLast ? 12 : 0),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        tileColor: const Color(0xff252525),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  color: Color(0xff252525),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                width: MediaQuery.of(context).size.width * 0.12,
                height: MediaQuery.of(context).size.width * 0.12,
                child: Consumer(
                  builder: (ctx, ref, _) {
                    return CachedNetworkImage(
                      imageUrl:
                          '${ref.read(movieImageBaseUrlProvider)}${review.authorDetails?.avatarPath}',
                      fit: BoxFit.fill,
                      errorWidget:
                          (BuildContext ctx, String url, Object? error) {
                        return avatarPlaceholder;
                      },
                      placeholder: (BuildContext ctx, String url) {
                        return avatarPlaceholder;
                      },
                    );
                  },
                ),
              ),
              const VerticalDivider(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    review.author ?? 'Unknown',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(color: Colors.white, fontSize: 16),
                  ),
                  const Divider(height: 6),
                  Text(
                    review.createdAt == null
                        ? ''
                        : DateFormat('dd MMM yyyy').format(review.createdAt!),
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(color: Colors.white38, fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
        ),
        subtitle: Text(
          review.content ?? '-',
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: Colors.white, fontWeight: FontWeight.w300),
        ),
      ),
    );
  }
}

class ReviewItemError extends StatelessWidget {
  const ReviewItemError(
      {super.key, required this.errorMsg, required this.refresh});
  final String errorMsg;
  final Function refresh;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
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

class ReviewReachEnd extends StatelessWidget {
  const ReviewReachEnd({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
        clipBehavior: Clip.hardEdge,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You have reached the end',
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
