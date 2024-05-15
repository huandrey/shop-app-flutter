import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  int _pageIndex = 0;

  int get pageIndex => _pageIndex;

  void navigationBetweenPages(int index) {
    _pageIndex = index;
    notifyListeners();
  }
}
