import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provider/picker_provider.dart';

CupertinoButton phoneringtonedialogs(BuildContext context) {
  return CupertinoButton(
    onPressed: () {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Phone Ringtione'),
          content: SizedBox(
            height: 250,
            child: Column(
              children: [
                Divider(),
                RadioListTile(
                  value:0,
                  groupValue: Provider.of<PickerProvider>(context,listen: true).dialogsradioindex,
                  onChanged: (value) {
                    Provider.of<PickerProvider>(context,listen: false).changeringtone(value);
                  },
                  title: Text('None'),
                ),
                RadioListTile(
                  value:1,
                  groupValue: Provider.of<PickerProvider>(context,listen: true).dialogsradioindex,
                  onChanged: (value) {
                    Provider.of<PickerProvider>(context,listen: false).changeringtone(value);
                  },
                  title: Text('Callisto'),
                ),
                RadioListTile(
                  value:2,
                  groupValue: Provider.of<PickerProvider>(context,listen: true).dialogsradioindex,
                  onChanged: (value) {
                    Provider.of<PickerProvider>(context,listen: false).changeringtone(value);
                  },
                  title: Text('Ganymede'),
                ),
                RadioListTile(
                  value:3,
                  groupValue: Provider.of<PickerProvider>(context,listen: true).dialogsradioindex,
                  onChanged: (value) {
                    Provider.of<PickerProvider>(context,listen: false).changeringtone(value);
                  },
                  title: Text('Luna'),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(onPressed: () {
              Navigator.of(context).pop();
            }, child: Text('Save')),
            TextButton(onPressed: () {
              Navigator.of(context).pop();
            }, child: Text('Cancel'))
          ],
        ),
      );
    },
    child: Container(
      width: 250,
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
        children: [Icon(Icons.message,size: 30,color: Colors.grey.shade500,), Text(' Dialogs',style: TextStyle(fontSize: 25,color: Colors.grey.shade500),)],
      ),
    ),
  );
}
