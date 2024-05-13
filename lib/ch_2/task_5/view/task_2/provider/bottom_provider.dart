import 'package:flutter/material.dart';

class BottomProvider extends ChangeNotifier{
  int pageIndex = 0;

  changeIndex(int index){
    pageIndex = index;
    notifyListeners();
  }
}