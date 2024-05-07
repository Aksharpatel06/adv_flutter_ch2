import 'dart:io';

import 'package:adv_flutter_ch2/ch_2/task_2/view/cupertinoscreen/cupertino_screen.dart';
import 'package:adv_flutter_ch2/utils/colorlist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../ch_2/task_2/provider/platform.dart';
import '../ch_2/task_2/view/materialscreen/matrial_screen.dart';

class AdaptiveWidegt extends StatelessWidget {
  const AdaptiveWidegt({super.key});

  @override
  Widget build(BuildContext context) {
    if (Provider.of<PlatForm>(context,listen: true).isAndoid) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(

        ),
        home: MaterialScreen(),
      );
    } else {
      return CupertinoApp(
        theme: CupertinoThemeData(
          textTheme: CupertinoTextThemeData(
            dateTimePickerTextStyle: TextStyle(color: surfacecolor),
          )
        ),
        debugShowCheckedModeBanner: false,
        home: CupertinoScreen(),
      );
    }
  }
}
