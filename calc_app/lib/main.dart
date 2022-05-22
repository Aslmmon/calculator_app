import 'package:app_resources/app_resources.dart';
import 'package:calc/calculatorViewModel.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyCalcApp(),
    );
  }
}

class MyCalcApp extends StatelessWidget {
  const MyCalcApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CalculatorViewModel _calculatorViewModel = CalculatorViewModel();






    return Scaffold(
      body: Column(
        children: [
          Expanded(flex: 1, child: Center(child: CustomButton())),
          Expanded(
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
          )
        ],
      ),
      backgroundColor: ColorManager.greySubtitle,
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
        decoration: BoxDecoration(
            border: Border.all(
              color: ColorManager.grey,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Center(child: Text("1")));
  }
}
