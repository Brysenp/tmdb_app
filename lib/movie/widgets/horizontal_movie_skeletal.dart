import 'package:flutter/material.dart';

class HorizontalMovieSkeletal extends StatefulWidget {
  const HorizontalMovieSkeletal({super.key, required this.height, required this.width});
  final double height;
  final double width;

  @override
  State<HorizontalMovieSkeletal> createState() => _HorizontalMovieSkeletalState();
}

class _HorizontalMovieSkeletalState extends State<HorizontalMovieSkeletal> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> animation;

  @override
  void initState() {
    super.initState();
    _controller  = AnimationController(
        duration: const Duration(milliseconds: 180),
        vsync: this
    );
    animation = TweenSequence<Color?>(
      [
        TweenSequenceItem(
          weight: 1.0,
          tween: ColorTween(
            begin: Colors.white10,
            end: const Color(0x22FFFFFF),
          ),
        ),
        TweenSequenceItem(
          weight: 1.0,
          tween: ColorTween(
            begin: const Color(0x22FFFFFF),
            end: Colors.white10,
          ),
        )
      ]
    ).animate(_controller)..addListener(() {
      setState(() {

      });
    });
    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      color: animation.value,
    );
  }
}
