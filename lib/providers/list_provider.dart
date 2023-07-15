import 'package:flutter/material.dart';

class NumbersListProvider extends ChangeNotifier {
  final List<int> numbers = [1, 2, 3, 4, 5];

  void add() {
    final last = numbers.last;
    numbers.add(last + 1);
    notifyListeners();
  }
}
