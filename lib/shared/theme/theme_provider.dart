import 'package:flutter/material.dart';
import 'package:simple_shop_app/shared/theme/dark_theme.dart';
import 'package:simple_shop_app/shared/theme/light_theme.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = ThemeData.light();

  ThemeData get themeData => _themeData;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {

    if (_themeData == lightTheme) {
      _themeData = darkTheme;
    } else {
      _themeData = lightTheme;
    }
    notifyListeners();
  }
}