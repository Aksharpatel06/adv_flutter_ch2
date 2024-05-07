import 'package:flutter/cupertino.dart';

import '../../../../../utils/colorlist.dart';

Padding activityIndiacator() {
  return Padding(
    padding:
    const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'Cupertino Activity Indicator : -',
          style: TextStyle(
              color: surfacecolor,
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        CupertinoActivityIndicator(
          color: buttoncolor,
        ),
      ],
    ),
  );
}
