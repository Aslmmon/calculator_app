import 'package:shared_preferences/shared_preferences.dart';

///@Todo : refactor to use AppSharedPrefrences and pass this dependency to it .
class ThemePreferences {
  static const PREF_KEY = "theme_key";

  setTheme(bool value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool(PREF_KEY, value);
  }

  getTheme() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool(PREF_KEY) ?? false;
  }
}