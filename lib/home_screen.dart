import 'package:flutter/material.dart';
import 'package:net_flix/movie/widgets/now_playing_hlist.dart';

import 'movie/widgets/top_rated_hlist.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Theme.of(context).colorScheme.background,
      body:  const Column(
        children: [
          NowPlayingHList(title: 'Now Playing',),
          TopRatedHList(title: 'Top Rated',),
        ],
      ),
    );
  }
}
