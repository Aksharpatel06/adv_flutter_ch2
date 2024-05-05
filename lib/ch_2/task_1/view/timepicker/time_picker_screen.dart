import 'package:adv_flutter_ch2/ch_2/task_1/provider/picker_provider.dart';
import 'package:adv_flutter_ch2/ch_2/task_1/view/timepicker/componects/time_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'componects/cupertino_action_sheet.dart';

class TimePickerScreen extends StatelessWidget {
  const TimePickerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Picker'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              IndexedStack(
                index: (Provider.of<PickerProvider>(context, listen: true)
                                .pickerindex >=
                            0 &&
                        Provider.of<PickerProvider>(context, listen: true)
                                .pickerindex <=
                            2)
                    ? Provider.of<PickerProvider>(context, listen: true)
                        .pickerindex
                    : Provider.of<PickerProvider>(context, listen: true)
                        .pickerindex = 0,
                alignment: Alignment.center,
                children: [
                  //TIME PICKER
                  timepicker(context),

                  //CUPERTINO TIMER PICKER
                  SizedBox(
                    height: 400,
                    child: CupertinoTimerPicker(
                      onTimerDurationChanged: (value) {},
                    ),
                  ),

                  //CUPERTINO ACTION SHEET
                  cupertinoActionSheet(context),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      Provider.of<PickerProvider>(context, listen: false)
                          .backindex();
                    },
                    child: Icon(Icons.arrow_back_ios_new),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      Provider.of<PickerProvider>(context, listen: false)
                          .changeindex();
                    },
                    child: Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
