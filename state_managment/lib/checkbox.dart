import 'package:flutter/cupertino.dart';

class myCheckBox extends ChangeNotifier {
  bool? value = false;
  int counter = 0;

  checkValue() {
    value = !value!;
    notifyListeners();
  }

  inc(){
    counter++;
    notifyListeners();
  }

  dec(){
    if (counter > 0) {
      counter--;
    }
    notifyListeners();
  }


}