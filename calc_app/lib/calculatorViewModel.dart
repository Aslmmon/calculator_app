import 'dart:async';
import 'package:flutter/cupertino.dart';

import 'base/BaseViewModel.dart';

class CalculatorViewModel extends BaseViewModel with ChangeNotifier {
  late final List<ButtonTextsView> _list;


  List<ButtonTextsView> _provideButtons() => [
        ButtonTextsView("AC",),
        ButtonTextsView("+/-"),
        ButtonTextsView("%"),
        ButtonTextsView("/"),
        ButtonTextsView("7"),
        ButtonTextsView("8"),
        ButtonTextsView("9"),
        ButtonTextsView("x"),
        ButtonTextsView("4"),
        ButtonTextsView("5"),
        ButtonTextsView("6"),
        ButtonTextsView("-"),
        ButtonTextsView("1"),
        ButtonTextsView("2"),
        ButtonTextsView("3"),
        ButtonTextsView("+"),
        ButtonTextsView("Cl"),
        ButtonTextsView("0"),
        ButtonTextsView("."),
        ButtonTextsView("="),
      ];

  @override
  void start() {
    _list = _provideButtons();
   // notifyListeners();
  }

   List<ButtonTextsView> buttons() => _provideButtons();
}

class ButtonTextsView {
  final String btnText;

  ButtonTextsView(this.btnText);
}
