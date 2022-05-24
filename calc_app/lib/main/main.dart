import 'package:app_resources/app_resources.dart';
import 'package:calc/app/theme_viewmodel.dart';
import 'package:calc/calculatorViewModel.dart';
import 'package:calc/main/theme_view.dart';
import 'package:flutter/material.dart';
import 'package:app_resources/src/theme_manager.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  /// This is Used to make Only singleton For MyAppClass

  MyApp._singleInstance();

  static final MyApp _instance = MyApp._singleInstance();

  factory MyApp() => _instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) => MultiProvider(
          providers: [
            ChangeNotifierProvider<ThemeViewModel>(
              create: (_) => ThemeViewModel(),
            ),
            ChangeNotifierProvider<CalculatorViewModel>(
              create: (_) => CalculatorViewModel(),
            ),
          ],
          child: Consumer<ThemeViewModel>(
              builder: (context, ThemeViewModel themeViewModel, child) {
            return MaterialApp(
                title: AppConstants.applicationName,
                debugShowCheckedModeBanner: false,
                theme: themeViewModel.isDark
                    ? getApplicationTheme(appTheme: AppTheme.dark_theme)
                    : getApplicationTheme(appTheme: AppTheme.light_theme),
                home: const MyCalcApp());
          }));
}

class MyCalcApp extends StatefulWidget {
  const MyCalcApp({Key? key}) : super(key: key);

  @override
  State<MyCalcApp> createState() => _MyCalcAppState();
}

class _MyCalcAppState extends State<MyCalcApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child:
        Consumer<CalculatorViewModel>(builder: (context, calcviewModel, child) {
      return Container(
        color: Theme.of(context).primaryColor,
        child: Column(
          children: [
            ThemeView(),
            Flexible(flex: 1, child: Center(child: Container())),
            Flexible(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColorLight,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(AppSizes.s25),
                        topRight: Radius.circular(AppSizes.s25))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                    itemCount: calcviewModel.buttons().length,
                    itemBuilder: (context, index) {
                      return CustomButton(
                        buttonTextsView: calcviewModel.buttons()[index],
                      );
                    },
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0),
                  ),
                ),
              ),
            )
          ],
        ),
      );
    })));
  }
}

class CustomButton extends StatelessWidget {
  ButtonTextsView buttonTextsView;

  CustomButton({required this.buttonTextsView}) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 50,
        height: 50,
        child: Center(
            child: Text(
          buttonTextsView.btnText,
          style: TextStyle(color: Theme.of(context).focusColor),
        )));
  }
}
