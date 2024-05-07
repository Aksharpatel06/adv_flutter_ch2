import 'package:flutter/material.dart';

import '../../../../../utils/colorlist.dart';

Padding indicator() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'Material Indicator : -',
          style: TextStyle(
              color: surfacecolor,
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        CircularProgressIndicator(
          color: buttoncolor,
        )
      ],
    ),
  );
}
