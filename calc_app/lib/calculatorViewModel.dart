import 'dart:async';
import 'base/BaseViewModel.dart';

class CalculatorViewModel extends BaseViewModel
    with OnBoardingViewModelInputs, OnBoardingViewModelOutputs {
  final StreamController _streamController =
      StreamController<ButtonTextsView>();
  late final List<ButtonTextsView> _list;

  int _currentIndex = 0;

  @override
  void dispose() {
  }

  @override
  void start() {
    _list = _provideButtons();
    _postDataToView();
  }
  void _postDataToView() => inputSliderView.add(ButtonTextsView(_list[_currentIndex].btnText));


  @override
  Sink get inputSliderView => _streamController.sink;

  @override
  Stream<List<ButtonTextsView>> get outputSliderView => _streamController.stream.map((event) => event);

  List<ButtonTextsView> _provideButtons() => [
        ButtonTextsView("AC"),
        ButtonTextsView("AC"),
        ButtonTextsView("AC"),
        ButtonTextsView("AC"),
        ButtonTextsView("AC"),
        ButtonTextsView("AC"),
        ButtonTextsView("AC"),
        ButtonTextsView("AC"),
        ButtonTextsView("AC"),
        ButtonTextsView("AC"),
        ButtonTextsView("AC"),
        ButtonTextsView("AC"),
        ButtonTextsView("AC"),
        ButtonTextsView("AC"),
        ButtonTextsView("AC"),
        ButtonTextsView("AC"),
        ButtonTextsView("AC"),
        ButtonTextsView("AC"),
        ButtonTextsView("AC"),
        ButtonTextsView("AC"),
      ];
}

// Actions needed
abstract class OnBoardingViewModelInputs {
  Sink get inputSliderView;
}

// dat returned to update view
abstract class OnBoardingViewModelOutputs {
  Stream<List<ButtonTextsView>> get outputSliderView;
}

class ButtonTextsView {
  final String btnText;

  ButtonTextsView(this.btnText);
}
