import 'package:app_resources/app_resources.dart';
import 'package:flutter/material.dart';

class ThemeView extends StatelessWidget {
  const ThemeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.s8),
      child: Container(
        width: AppSizes.s100,
        height: AppSizes.s40,
        decoration: BoxDecoration(
            color: ColorManager.secondary,
            borderRadius: BorderRadius.all(Radius.circular(AppSizes.s24))),
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.s8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.light_mode_outlined),
              Icon(Icons.dark_mode_outlined)
            ],
          ),
        ),
      ),
    );
  }
}
