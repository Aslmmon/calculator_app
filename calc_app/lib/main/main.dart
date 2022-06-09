import 'package:app_resources/app_resources.dart';
import 'package:calc/app/theme_viewmodel.dart';
import 'package:calc/calculatorViewModel.dart';
import 'package:calc/main/theme_view.dart';
import 'package:flutter/material.dart';
import 'package:app_resources/src/theme_manager.dart';
import 'package:provider/provider.dart';
import 'package:function_tree/function_tree.dart';

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
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child:
        Consumer<CalculatorViewModel>(builder: (context, calcviewModel, child) {
      return Container(
        color: Theme.of(context).primaryColor,
        child: Column(
          children: [
            ThemeView(),
            Flexible(
                flex: 1,
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextField(
                      decoration: new InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40.0)),
                        enabledBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                      ),
                      controller: myController,
                      style: TextStyle(color: Theme.of(context).focusColor),
                      onChanged: (text) {
                        print('First text field: $text');
                      },
                    ),
                  ],
                ))),
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
                        doProduceText: (numbers) {
                          myController.text = calcviewModel.interpret(myController.text+=numbers, numbers);
                        },
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
  final ButtonTextsView buttonTextsView;
  final String? Function(String) doProduceText;

  CustomButton({required this.buttonTextsView, required this.doProduceText})
      : super();

  @override
  Widget build(BuildContext context) {
    return Container(
        width: AppSizes.s50,
        height: AppSizes.s50,
        child: InkWell(
          onTap: () {
            doProduceText(buttonTextsView.btnTextProducted ?? '');
          },
          child: Center(
              child: Text(
            buttonTextsView.btnText,
            style: TextStyle(color: Theme.of(context).focusColor),
          )),
        ));
  }
}
