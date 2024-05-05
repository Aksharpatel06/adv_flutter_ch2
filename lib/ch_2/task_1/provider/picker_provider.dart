import 'package:flutter/cupertino.dart';

class PickerProvider extends ChangeNotifier{
  int pickerindex=0;
  int dialogsradioindex=0;

  void changeindex(){
    pickerindex++;
    notifyListeners();
  }
  void backindex(){
    pickerindex--;
    notifyListeners();
  }

  void changeringtone(value)
  {
    dialogsradioindex=value;
    notifyListeners();
  }
}