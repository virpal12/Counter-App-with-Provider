import 'package:flutter/cupertino.dart';

class CounterApp extends ChangeNotifier {
  int counter = 0;

  Increment() {
    counter++;
  }

  Decrement() {
    if (counter == 0) {
      return counter;
    } else {
      counter--;
    }
  }
}
