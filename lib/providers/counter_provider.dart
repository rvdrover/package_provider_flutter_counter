import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterProvider extends ChangeNotifier{

   int _count = 0;

  void increment() {
    _count++;
    notifyListeners();
  }

  void dicrement() {
    _count--;
    notifyListeners();
  }

}