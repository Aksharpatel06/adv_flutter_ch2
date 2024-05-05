import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

CupertinoButton timepicker(BuildContext context) {
  return CupertinoButton(
    onPressed: () async {
      TimeOfDay timeOfDay = await showTimePicker(
          context: context,
          initialTime: TimeOfDay.now(),
      ) ??
          TimeOfDay.now();
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
        children: [Icon(Icons.hourglass_bottom,size: 30,color: Colors.grey.shade500,), Text(' Show Time Picker',style: TextStyle(fontSize: 25,color: Colors.grey.shade500),)],
      ),
    ),
  );
}
