import 'package:calc/app/theme_prefrences.dart';
import 'package:flutter/material.dart';

class ThemeViewModel extends ChangeNotifier {
  late bool _isDark;
  late ThemePreferences _preferences;
  bool get isDark => _isDark;

  ThemeViewModel() {
    _isDark = false;
    _preferences = ThemePreferences();
    getPreferences();
  }
//Switching themes in the flutter apps - Flutterant
  set isDark(bool value) {
    _isDark = value;
    _preferences.setTheme(value);
    notifyListeners();
  }

  getPreferences() async {
    _isDark = await _preferences.getTheme();
    notifyListeners();
  }
}