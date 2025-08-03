import 'package:flutter/material.dart';

class ListProvider extends ChangeNotifier {
  List<int> numbers = [1, 2, 3, 4];

  void add() {
    int num = numbers.last;
    numbers.add(num + 1);
    notifyListeners();
  }
}
