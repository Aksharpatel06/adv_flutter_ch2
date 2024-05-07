
import 'package:flutter/material.dart';

class PlatForm extends ChangeNotifier{
  bool isAndoid = true;

  void change_platfrom(bool value)
  {
    isAndoid = value;
    notifyListeners();
  }
}