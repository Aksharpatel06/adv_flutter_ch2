import 'package:flutter/material.dart';

import '../../../../../utils/colorlist.dart';

Padding listTile() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
    child: Column(
      children: [
        Text(
          'Material List Tile : -',
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: surfacecolor),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: ListTile(
              leading: Icon(Icons.person),
              trailing: Icon(Icons.add),
              title: Text('Android platform')),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: ListTile(
              leading: Icon(Icons.ac_unit),
              trailing: Icon(Icons.add),
              title: Text('Android')),
        ),
      ],
    ),
  );
}
