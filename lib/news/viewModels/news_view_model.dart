import 'package:flutter/material.dart';

class NewsProvider extends ChangeNotifier {
  int selectedCategory = 0;
  void setSelectedCategory(int index) {
    selectedCategory = index;
    notifyListeners();
  }
}
