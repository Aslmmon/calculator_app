import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgImage extends StatelessWidget {
  final AppImage image;
  final double? width;
  final double? height;
  final String? semanticsLabel;

  const SvgImage(
    this.image, {
    Key? key,
    this.width,
    this.height,
    this.semanticsLabel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/images/${image.name}.svg',
      package: 'app_resources',
      semanticsLabel: semanticsLabel,
      width: width,
      height: height,
    );
  }
}

class AppImage {
  final String name;

  const AppImage(this.name);
}

class AppImages {
  const AppImages._();

  static const noProducts = AppImage('no_products');
  static const shoppingOnline = AppImage('shopping_online');
}
