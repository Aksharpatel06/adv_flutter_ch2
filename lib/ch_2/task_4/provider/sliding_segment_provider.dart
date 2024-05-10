import 'package:flutter/cupertino.dart';

class SlidingSegmentProvider extends ChangeNotifier{
  int slidingindex=0;

  void changesliding(String value)
  {
    slidingindex=int.parse(value);
    notifyListeners();
  }
}