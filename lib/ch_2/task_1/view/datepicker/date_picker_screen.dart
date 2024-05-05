import 'package:adv_flutter_ch2/ch_2/task_1/provider/picker_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'componects/date_picker.dart';
import 'componects/phone_ringtone_dialogs.dart';

class DatePickerScreen extends StatelessWidget {
  const DatePickerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Date Picker'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              IndexedStack(
                index: (Provider.of<PickerProvider>(context, listen: true)
                            .pickerindex >=
                        0 && Provider.of<PickerProvider>(context, listen: true)
                    .pickerindex <=
                    3)
                    ? Provider.of<PickerProvider>(context, listen: true)
                        .pickerindex
                    : Provider.of<PickerProvider>(context, listen: true)
                    .pickerindex=0,
                alignment: Alignment.center,
                children: [
                  DatePickerDialog(
                      firstDate: DateTime(1950), lastDate: DateTime(2050)),
                  datepicker(context),
                  phoneringtonedialogs(context),
                  SizedBox(
                    height: 400,
                    child: CupertinoDatePicker(
                      onDateTimeChanged: (value) {},
                    ),
                  ),
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
