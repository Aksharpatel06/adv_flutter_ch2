import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

CupertinoButton cupertinoActionSheet(BuildContext context) {
  return CupertinoButton(
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
                spreadRadius: 1)
          ]),
      child: Center(
        child: Text(
          ' Cupertino Action Sheet',
          style: TextStyle(
              fontSize: 21, color: Colors.grey.shade500),
        ),
      ),
    ),
    onPressed: () {
      showModalBottomSheet(
        context: context,
        builder: (context) => CupertinoActionSheet(
          title: Text(
            'Favorite Dessert',
            style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: 20),
          ),
          message: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                'Please select the best dessert from the options belows',
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(),
              Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'Profiteroles',
                  style: TextStyle(
                      color: Colors.blueAccent,
                      letterSpacing: 1.5,
                      fontSize: 22,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Divider(),
              Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'Cannolis',
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 22,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Divider(),
              Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'Trifle',
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 22,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
          cancelButton: CupertinoButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Cancel',
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 22,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      );
    },
  );
}
