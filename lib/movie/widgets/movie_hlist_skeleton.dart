import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:net_flix/movie/movie_providers.dart';
import 'package:net_flix/movie/widgets/horizontal_movie_skeletal.dart';

class MovieHListSkeleton extends ConsumerWidget {
  const MovieHListSkeleton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double heightFactor = ref.read(imageHeightFactor);
    double widthFactor = ref.read(imageWidthFactor);
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.zero,
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) => Container(
        width: MediaQuery.of(context).size.height * widthFactor,
        height: MediaQuery.of(context).size.height * heightFactor,
        margin: index == 5 - 1 ? const EdgeInsets.symmetric(horizontal: 8) : const EdgeInsets.only(left: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4)
        ),
        clipBehavior: Clip.hardEdge,
        child: HorizontalMovieSkeletal(
          key: ObjectKey(index),
          width: MediaQuery.of(context).size.height * widthFactor,
          height: MediaQuery.of(context).size.height * heightFactor,
        ),
      ),
    );
  }
}
