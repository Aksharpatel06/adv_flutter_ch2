import 'package:adv_flutter_ch2/ch_2/task_4/view/cupertinoslider/cupertino_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Padding thememode() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            SizedBox(
              height: 150,
              child: Image.asset('asset/img/img1.jpg'),
            ),
            SizedBox(
              height: 5,
            ),
            Text('Light'),
            SizedBox(
              height: 5,
            ),
            CupertinoRadio(
              value:Brightness.light,
              groupValue: slidingProvidertrue!.brightness,
              onChanged: (value) {
                slidingProviderfalse!.changeTheme(value ?? Brightness.light);
              },
            )
          ],
        ),
        Column(
          children: [
            SizedBox(
              height: 150,
              child: Image.asset('asset/img/img2.jpg'),
            ),
            SizedBox(
              height: 5,
            ),
            Text('Dark'),
            SizedBox(
              height: 5,
            ),
            CupertinoRadio(
              value: Brightness.dark,
              groupValue: slidingProvidertrue!.brightness,
              onChanged: (value) {
                slidingProviderfalse!.changeTheme(value ?? Brightness.dark);
              },
            )
          ],
        ),
      ],
    ),
  );
}
