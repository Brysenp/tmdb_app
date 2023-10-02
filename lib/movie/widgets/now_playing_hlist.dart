import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:net_flix/core/core_providers.dart';
import 'package:net_flix/movie/controller/get_movie_state.dart';
import 'package:net_flix/movie/controller/now_playing_state_notifier.dart';
import 'package:net_flix/movie/widgets/horizontal_movie_skeletal.dart';

class NowPlayingHList extends ConsumerWidget {
  const NowPlayingHList({super.key, this.title = 'Now Playing'});
  final String? title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(nowPlayingNotifierProvider);
    if (state == const GetMovieState.initial()) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        ref.read(nowPlayingNotifierProvider.notifier).getNowPlayingMovies();
      });
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(title!, style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white)),
        ),
        const Divider(height: 6),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.2,
          child: state.when(
              initial: () => Center(),
              loading: () => ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.zero,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) => Padding(
                  padding: index == 0 ? const EdgeInsets.symmetric(horizontal: 12) : const EdgeInsets.only(right: 12),
                  child: HorizontalMovieSkeletal(
                    key: ObjectKey(index),
                    width: 400,
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                ),
              ),
              data: (nowPlayingMovie) => ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.zero,
                itemCount: nowPlayingMovie.results.length,
                itemBuilder: (BuildContext context, int index) => Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  margin: index == nowPlayingMovie.results.length - 1 ? const EdgeInsets.symmetric(horizontal: 12) : const EdgeInsets.only(left: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Column(
                    children: [
                      Image.network(
                        '${ref.read(movieImageBaseUrlProvider)}${nowPlayingMovie.results[index].imageUrl}',
                        fit: BoxFit.contain,
                        height: MediaQuery.of(context).size.height * 0.2,
                        errorBuilder: (BuildContext context, Object error, StackTrace? stacktrace){
                          return Container();
                        },
                      ),
                    ],
                  ),
                ),
              ),
              error: (error) => Text(error)),
        )
      ],
    );
  }
}
