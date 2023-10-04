import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:net_flix/home/home_providers.dart';
import 'package:net_flix/home/widgets/now_playing_hlist.dart';
import 'package:net_flix/home/widgets/random_movie.dart';
import 'package:net_flix/home/widgets/top_rated_hlist.dart';
import 'package:net_flix/home/widgets/trend_hlist.dart';

import 'dart:developer' as dev;

final appBarTransparency = StateProvider<double>((ref)=> 0.0);

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  late ScrollController customScrollController;

  @override
  void initState() {
    customScrollController = ScrollController();
    super.initState();
  }

  // This function updates the appBarTransparency state based on scroll position
  void _handleScroll(WidgetRef ref) {
    customScrollController.addListener(() {
      final newOpacity = customScrollController.offset / (MediaQuery.of(context).size.height * 0.2); // Adjust this value as needed
      final clampedOpacity = newOpacity.clamp(0.0, 0.5); // Clamp opacity between 0.0 and 0.5
      ref.read(appBarTransparency.notifier).state = clampedOpacity;
    });
  }

  @override
  Widget build(BuildContext context) {
    dev.log('Rebuilt Home Screen Widget');
    final maxScrollOffset = MediaQuery.of(context).size.height * 0.1;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body:  CustomScrollView(
        controller: customScrollController,
        slivers: [
        Consumer(
            builder: (BuildContext context, WidgetRef ref, Widget? child){
              dev.log('Rebuilt Consumer Widget');
              _handleScroll(ref);
              return SliverAppBar(
                floating: true,
                pinned: true,
                backgroundColor: Colors.transparent.withOpacity(ref.watch(appBarTransparency)),
                shadowColor: Colors.transparent,
                foregroundColor: Colors.transparent,
                elevation: 0,
                leading: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: SvgPicture.asset(
                    'assets/logo/app_bar.svg',
                  ),
                ),
                actions:  [
                  IconButton(
                    icon: const Icon(
                      Icons.search,
                      color: Colors.white,
                      size: kToolbarHeight * 0.7,
                    ),
                    onPressed: (){},
                  ),
                  const VerticalDivider(width: 12),
                  Center(
                    child: ClipRRect(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      borderRadius: BorderRadius.circular(6),
                      child: CachedNetworkImage(
                        imageUrl: 'https://wallpapers.com/images/high/netflix-profile-pictures-1000-x-1000-dyrp6bw6adbulg5b.webp',
                        height: kToolbarHeight * 0.7,
                        width: kToolbarHeight * 0.7,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const VerticalDivider(width: 12),
                ],
              );
            },
          ),
          const SliverToBoxAdapter(
              child: Divider(height: 12)
          ),
          const SliverToBoxAdapter(
            child: RandomMovie(),
          ),
          const SliverToBoxAdapter(
              child: Divider(height: 12)
          ),
          SliverToBoxAdapter(
            child: NowPlayingHList(),
          ),
          const SliverToBoxAdapter(
              child: Divider(height: 12)
          ),
          SliverToBoxAdapter(
            child: TopRatedHList(),
          ),
          const SliverToBoxAdapter(
              child: Divider(height: 12)
          ),
          SliverToBoxAdapter(
            child: TrendHList(title: 'Movie of the Day', trendProvider: trendOfDayProvider),
          ),
          const SliverToBoxAdapter(
              child: Divider(height: 12)
          ),
          SliverToBoxAdapter(
            child: TrendHList(title: 'Movie of the Week', trendProvider: trendOfWeekProvider),
          ),
        ],
      ),
    );
  }
}
