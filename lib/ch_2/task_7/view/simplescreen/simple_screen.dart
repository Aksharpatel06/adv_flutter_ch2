import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../utils/global_variable.dart';
import '../../provider/platfrom_provider.dart';

class PlatfromScreen extends StatelessWidget {
  const PlatfromScreen({super.key});

  @override
  Widget build(BuildContext context) {
    providerfalse = Provider.of<PlatfromProvider>(context, listen: false);
    providertrue = Provider.of<PlatfromProvider>(context, listen: true);
    if (providertrue!.isios) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Platfrom Converter'),
          actions: [
            Switch(
              value: providertrue!.isios,
              onChanged: (value) {
                providerfalse!.changePlatfrom(value);
              },
            )
          ],
        ),
        body: SafeArea(
          child: ListTile(
            leading: Icon(Icons.calendar_month),
            onTap: () async {
              DateTime dateTime = await showDatePicker(
                context: context,
                firstDate: DateTime(1950),
                lastDate: DateTime(2050),
              ) ??
                  DateTime.now();
              providerfalse!.changedate(dateTime);
            },
            title: Text('Pick Date',),
            trailing: Text(
                "${providertrue!.dateTime.day} - ${providertrue!.dateTime.month} - ${providertrue!.dateTime.year}"),
          ),
        ),
      );
    } else {
      return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: const Text('Platfrom Converter'),
          trailing: CupertinoSwitch(
            value: providertrue!.isios,
            onChanged: (value) {
              providerfalse!.changePlatfrom(value);
            },
          ),
        ),
        child:SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CupertinoListTile(
                  padding: EdgeInsets.zero,
                  leading: Icon(CupertinoIcons.calendar),
                  onTap: () {
                    showCupertinoModalPopup(
                      context: context,
                      builder: (context) {
                        return Container(
                          height: 200,
                          child: CupertinoDatePicker(
                            mode: CupertinoDatePickerMode.date,
                            onDateTimeChanged: (value) {
                              providerfalse!.changedate(value);
                            },
                          ),
                        );
                      },
                    );
                  },
                  title: Text('Pick Date'),
                  trailing: Text(
                      "${providertrue!.dateTime.day} - ${providertrue!.dateTime.month} - ${providertrue!.dateTime.year}"),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }
}
