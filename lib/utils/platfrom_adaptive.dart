import 'package:adv_flutter_ch2/ch_2/task_7/view/simplescreen/simple_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../ch_2/task_7/provider/platfrom_provider.dart';
import 'global_variable.dart';

class PlatfromAdaptive extends StatelessWidget {
  const PlatfromAdaptive({super.key});

  @override
  Widget build(BuildContext context) {
    providerfalse = Provider.of<PlatfromProvider>(context, listen: false);
    providertrue = Provider.of<PlatfromProvider>(context, listen: true);

    if (providertrue!.isios) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.light),
        darkTheme: ThemeData(brightness: Brightness.dark),
        home: PlatfromScreen(),
      );
    } else {
      return CupertinoApp(
        debugShowCheckedModeBanner: false,
        home: PlatfromScreen(),
      );
    }
  }
}
