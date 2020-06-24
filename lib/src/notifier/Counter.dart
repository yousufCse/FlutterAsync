import 'package:flutter/foundation.dart';

class Counter extends ChangeNotifier {
  int value = 0;

  void increment() {
    value += 1;
    notifyListeners();
  }

  void decrement() {
    value -= 1;
    notifyListeners();
  }

  void reset() {
    value = 0;
    notifyListeners();
  }

  void fetchImage() {
    value = 0;
    notifyListeners();

    Future.delayed(Duration(seconds: 5), () {
      value = 1000;
      notifyListeners();
    });

  }
}