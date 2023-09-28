import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:net_flix/movie/models/movie.dart';
import 'package:net_flix/movie/movie_providers.dart';
import 'package:net_flix/movie/widgets/horizontal_movie_skeletal.dart';

import '../../core/core_providers.dart';

class RandomMovie extends ConsumerWidget {
  const RandomMovie({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(nowPlayingProvider);
    return state.maybeWhen(
      loading: (){
        return Align(
          alignment: Alignment.center,
          child: Container(
            alignment: Alignment.bottomCenter,
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width * 0.8,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 0.3),
                borderRadius: BorderRadius.circular(12),
            ),
            child: HorizontalMovieSkeletal(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width * 0.8,
            ),
          ),
        );
      },
      data: (items){
        Movie randomMovie = ref.read(nowPlayingProvider.notifier).getRandom();
        return Align(
          alignment: Alignment.center,
          child: Container(
            alignment: Alignment.bottomCenter,
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width * 0.8,
            clipBehavior: Clip.antiAlias,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 0.3),
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: CachedNetworkImageProvider(
                        '${ref.read(movieImageBaseUrlProvider)}${randomMovie.imageUrl}'))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 6, height: 0),
                Expanded(
                    child: ElevatedButton(
                        onPressed: () {},
                        style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.white
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.play_arrow_rounded, color: Colors.black),
                            Text('Play', style: Theme.of(context).textTheme.labelLarge),
                          ],
                        ))),
                const SizedBox(width: 10, height: 0),
                Expanded(
                    child: ElevatedButton(
                        onPressed: () {},
                        style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.black54
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.add_rounded, color: Colors.white),
                            Text('My List', style: Theme.of(context).textTheme.labelLarge?.copyWith(color: Colors.white)),
                          ],
                        ))),
                const SizedBox(width: 6, height: 0),
              ],
            ),
          ),
        );
      },
      orElse: (){
        return const SizedBox.shrink();
      }
    );
  }
}
