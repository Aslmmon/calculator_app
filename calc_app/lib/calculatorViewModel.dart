import 'dart:async';
import 'package:flutter/cupertino.dart';

import 'base/BaseViewModel.dart';
import 'package:function_tree/function_tree.dart';

class CalculatorViewModel extends BaseViewModel with ChangeNotifier {
  late final List<ButtonTextsView> _list;

  List<ButtonTextsView> _provideButtons() => [
        ButtonTextsView(btnText: "AC"),
        ButtonTextsView(btnText: "+/-"),
        ButtonTextsView(btnText: "%", btnTextProducted: "%"),
        ButtonTextsView(btnText: "/", btnTextProducted: "/"),
        ButtonTextsView(btnText: "7", btnTextProducted: "7"),
        ButtonTextsView(btnText: "8", btnTextProducted: "8"),
        ButtonTextsView(btnText: "9", btnTextProducted: "9"),
        ButtonTextsView(btnText: "x", btnTextProducted: "x"),
        ButtonTextsView(btnText: "4", btnTextProducted: "4"),
        ButtonTextsView(btnText: "5", btnTextProducted: "5"),
        ButtonTextsView(btnText: "6", btnTextProducted: "6"),
        ButtonTextsView(btnText: "-", btnTextProducted: "-"),
        ButtonTextsView(btnText: "1", btnTextProducted: "1"),
        ButtonTextsView(btnText: "2", btnTextProducted: "2"),
        ButtonTextsView(btnText: "3", btnTextProducted: "3"),
        ButtonTextsView(btnText: "+", btnTextProducted: "+"),
        ButtonTextsView(btnText: "Cl", btnTextProducted: "cl"),
        ButtonTextsView(btnText: "0", btnTextProducted: "0"),
        ButtonTextsView(btnText: ".", btnTextProducted: "."),
        ButtonTextsView(btnText: "=", btnTextProducted: "="),
      ];

  @override
  void start() {
    _list = _provideButtons();
    // notifyListeners();
  }

  String interpret(String equationString, String buttonClicked) {
    String equationResult = '';
    switch (buttonClicked) {
      case "cl":
        return equationResult;
      case "=":
        return equationResult = equationString.interpret().toInt().toString();
      default:
        return equationResult+=equationString;
    }
  }

  List<ButtonTextsView> buttons() => _provideButtons();
}

class ButtonTextsView {
  final String btnText;
  final String? btnTextProducted;

  ButtonTextsView({required this.btnText, this.btnTextProducted = null});
}
