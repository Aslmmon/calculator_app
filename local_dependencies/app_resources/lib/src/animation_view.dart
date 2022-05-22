import 'package:app_resources/app_resources.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimationView extends StatelessWidget {
  final AppAnimation animation;
  final double? width;
  final double? height;

  const AnimationView(
    this.animation, {
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      'assets/animations/${animation.value}.json',
      package: 'app_resources',
      width: width,
      height: height,
    );
  }
}
