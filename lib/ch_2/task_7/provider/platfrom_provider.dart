import 'package:flutter/material.dart';

class PlatfromProvider extends ChangeNotifier {
  bool isios = false;
  DateTime dateTime = DateTime.now();

  void changePlatfrom(bool value) {
    isios = value;
    notifyListeners();
  }

  void changedate(DateTime dateTime)
  {
    this.dateTime = dateTime;
    notifyListeners();
  }
}