import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

CupertinoButton datepicker(BuildContext context) {
  return CupertinoButton(
    onPressed: () async {
      DateTime datetime = await showDatePicker(
          context: context,
          firstDate: DateTime(1950),
          lastDate: DateTime(2050)) ??
          DateTime.now();
    },
    child: Container(
      width: 275,
      height: 75,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5,
            spreadRadius:1
          )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Icon(Icons.calendar_month,size: 30,color: Colors.grey.shade500,), Text(' Show Date Picker',style: TextStyle(fontSize: 25,color: Colors.grey.shade500),)],
      ),
    ),
  );
}
