import 'package:app_resources/app_resources.dart';
import 'package:calc/app/theme_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeView extends StatelessWidget {
  const ThemeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeViewModel>(
        builder: (context, ThemeViewModel themeViewModel, child) {
      return Padding(
        padding: const EdgeInsets.all(AppSizes.s8),
        child: Container(
          width: AppSizes.s100,
          height: AppSizes.s40,
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColorLight,
              borderRadius: BorderRadius.all(Radius.circular(AppSizes.s24))),
          child: Padding(
            padding: const EdgeInsets.all(AppSizes.s8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () => themeViewModel.isDark = false,
                  child: Icon(Icons.light_mode_outlined,
                      color: Theme.of(context).focusColor),
                ),
                InkWell(
                  onTap: () => themeViewModel.isDark = true,
                  child: Icon(Icons.dark_mode_outlined,
                      color: Theme.of(context).focusColor),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
