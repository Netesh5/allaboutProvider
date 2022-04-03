import 'package:flutter/widgets.dart';

class validate with ChangeNotifier {
  bool isvalid = false;
  String validatemsg = "";

  void validataion(String msg) {
    if (msg.contains('@gmail.com')) {
      isvalid = true;
      validatemsg = "available";
      notifyListeners();
    } else {
      validatemsg = "Enter valid email";
      notifyListeners();
    }

    // if (age >= 18) {
    //   isvalid = true;
    //   validatemsg = "You are eligiable";
    //   notifyListeners();
    // } else {
    //   isvalid = false;
    //   validatemsg = "You are not eligiable";
    //   notifyListeners();
    // }
  }
}
