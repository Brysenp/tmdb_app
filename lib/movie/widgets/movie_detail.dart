import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:net_flix/core/core_providers.dart';
import 'package:net_flix/movie/models/movie.dart';

import '../../core/controller/load_state.dart';
import '../movie_providers.dart';
import 'horizontal_movie_skeletal.dart';

class MovieDetailWidget extends ConsumerWidget {
  const MovieDetailWidget({super.key, required this.selectedMovie, required this.heroUUID});
  final Movie selectedMovie;
  final String heroUUID;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(movieDetailProvider(selectedMovie.id));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height:MediaQuery.of(context).viewPadding.top),
        Align(
          alignment: Alignment.center,
          child: Hero(
            tag: heroUUID,
            child: Container(
              alignment: Alignment.bottomCenter,
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.height * 0.25,
              clipBehavior: Clip.antiAlias,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 0.3),
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: CachedNetworkImageProvider(
                        '${ref.read(movieImageBaseUrlProvider)}${selectedMovie.imageUrl}',),),),
            ),
          ),
        ),
        const Divider(height: 12),
        Text(selectedMovie.title,
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: Colors.white)),
        const Divider(height: 10),
        Container(
          constraints: const BoxConstraints(maxHeight: 22),
          child: Wrap(
            spacing: 18,
            children: [
              Text(selectedMovie.releaseDate?.year.toString() ?? '',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: Colors.grey, fontSize: 12)),
              selectedMovie.adult
                  ? Container(
                decoration: BoxDecoration(
                    color: Color(0xff363636),
                    borderRadius: BorderRadius.circular(2)),
                padding: const EdgeInsets.symmetric(
                    horizontal: 4, vertical: 2),
                child: Text('+18',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: Colors.grey, fontSize: 12)),
              )
                  : const SizedBox.shrink()
            ],
          ),
        ),
        const Divider(height: 10),
        switch (state) {
          Loading() => const HorizontalMovieSkeletal(
            height: 20,
            width: 40,
          ),
          Data(:final data) => Wrap(
            spacing: 10,
            children: List.generate(
              data.genres.length,
                  (index) => Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.white,
                  ),
                  color: Theme.of(context).colorScheme.background,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                child: Text(
                  data.genres[index].name ?? '',
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontSize: 10,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Error(:final message, :final code) => const SizedBox.shrink()
        },
        const Divider(height: 10),
        ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.play_arrow_rounded, color: Colors.black87),
          label: Text('Play',
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(color: Colors.black87)),
          style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              minimumSize: MaterialStateProperty.all(
                const Size(
                  double.infinity,
                  40,
                ),
              ),
              padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(vertical: 10))),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.download_for_offline_rounded,
              color: Colors.white),
          label: Text('Download',
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(color: Colors.white)),
          style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
            backgroundColor:
            MaterialStateProperty.all<Color>(const Color(0xff262626)),
            minimumSize: MaterialStateProperty.all(
              const Size(
                double.infinity,
                40,
              ),
            ),
            padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(
                vertical: 10,
              ),
            ),
          ),
        ),
        const Divider(height: 10),
        Text(
          selectedMovie.overview,
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 12,
              wordSpacing: 1,
              letterSpacing: 0.1),
        ),
        const Divider(height: 10),
        Wrap(
          spacing: 5,
          children: [
            Text(
              'Production: ',
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  color: const Color(0xffb0b0b0),
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
            ...switch (state) {
            Loading() =>
            [
              const HorizontalMovieSkeletal(
                height: 20,
                width: 40,
              )
            ],
              Data(:final data) => List.generate(
                data.productions.length,
                    (index) => Text(
                      data.productions[index].companyName ?? '',
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          color: const Color(0xffb0b0b0), fontSize: 12),
                    ),
              ),
              Error(:final message, :final code) => [const SizedBox.shrink()]
          }
          ],
        ),
      ],
    );
  }
}
