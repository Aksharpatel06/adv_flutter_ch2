import 'package:adv_flutter_ch2/utils/colorlist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/platform.dart';
import 'componects/activity_Indiacator.dart';
import 'componects/date_picker.dart';
import 'componects/dialong_sheet.dart';
import 'componects/list_tile.dart';
import 'componects/time_picker.dart';

class CupertinoScreen extends StatelessWidget {
  const CupertinoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: secondarycolor,
      navigationBar: CupertinoNavigationBar(
        middle: const Text('iOS Platform'),
        backgroundColor: primarycolor,
        trailing: CupertinoSwitch(
          value: Provider.of<PlatForm>(context, listen: true).isAndoid,
          onChanged: (value) {
            Provider.of<PlatForm>(context, listen: false)
                .change_platfrom(value);
          },
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //INDIACATOR
            activityIndiacator(),

            //DATE PICKER
            datePicker(),

            //TIME PICKER
            timePicker(),

            //LIST TILE
            listTile(),

            //BUTTON , ALERT DIALONG , ACTION SHEET
            button(context),
          ],
        ),
      ),
    );
  }
}