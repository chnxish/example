import 'package:flutter/material.dart';
import 'package:flutter_example/theme/theme_preference.dart';

class ThemeModel extends ChangeNotifier {
  late bool isDk; // isDark
  late ThemePreferences preferences;
  bool get isDark => isDk;

  ThemeModel() {
    isDk = false;
    preferences = ThemePreferences();
    getPreferences();
  }

  set isDark(bool value) {
    isDk = value;
    preferences.setTheme(value);
    notifyListeners();
  }

  getPreferences() async {
    isDk = await preferences.getTheme();
    notifyListeners();
  }
}
