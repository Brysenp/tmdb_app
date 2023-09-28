import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:net_flix/core/core_providers.dart';
import 'package:net_flix/movie/models/movie.dart';

class MovieDetailScreen extends ConsumerWidget {
  const MovieDetailScreen({super.key, required this.selectedMovie});
  final Movie selectedMovie;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          CachedNetworkImage(
            imageUrl: '${ref.read(movieImageBaseUrlProvider)}${selectedMovie.imageUrl}',
            fit: BoxFit.fitHeight,
            height: MediaQuery.of(context).size.height * 0.18,
          ),
          Text(selectedMovie.title, style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.white))
        ],
      ),
    );
  }
}
