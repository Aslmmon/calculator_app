import 'package:app_resources/app_resources.dart';
import 'package:calc/app/theme_viewmodel.dart';
import 'package:calc/calculatorViewModel.dart';
import 'package:calc/main/theme_view.dart';
import 'package:flutter/material.dart';
import 'package:app_resources/src/theme_manager.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => ThemeViewModel(),
        child: Consumer<ThemeViewModel>(builder: (context, ThemeViewModel themeViewModel, child) {
          return MaterialApp(
              title: AppConstants.applicationName,
              debugShowCheckedModeBanner: false,
              theme: themeViewModel.isDark
                  ? getApplicationTheme(appTheme: AppTheme.dark_theme)
                  : getApplicationTheme(appTheme: AppTheme.light_theme),
              home: const MyCalcApp());
        }));
  }
}

class MyCalcApp extends StatelessWidget {
  const MyCalcApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CalculatorViewModel _calculatorViewModel = CalculatorViewModel();

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: Column(
            children: [
              ThemeView(),
              Expanded(flex: 1, child: Center(child: CustomButton())),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColorLight,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(AppSizes.s25),
                          topRight: Radius.circular(AppSizes.s25))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GridView.builder(
                      itemCount: 20,
                      itemBuilder: (context, list) {
                        return CustomButton();
                      },
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 5,
                          crossAxisSpacing: 10.0,
                          mainAxisSpacing: 10.0),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 50,
        height: 50,
        child: Center(
            child: Text(
          "1",
          style: TextStyle(color: Theme.of(context).focusColor),
        )));
  }
}
