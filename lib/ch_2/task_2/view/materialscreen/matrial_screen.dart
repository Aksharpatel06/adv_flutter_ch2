import 'package:adv_flutter_ch2/utils/colorlist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/platform.dart';

class MaterialScreen extends StatelessWidget {
  const MaterialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondarycolor,
      appBar: AppBar(
        backgroundColor: primarycolor,
        title: const Text('Android Platform'),
        actions: [
          Switch(
            value: Provider.of<PlatForm>(context, listen: true).isAndoid,
            onChanged: (value) {
              Provider.of<PlatForm>(context, listen: false)
                  .change_platfrom(value);
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
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
          ),
          Padding(
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
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Column(
              children: [
                Text(
                  'Material Button : -',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: surfacecolor),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(buttoncolor)),
                    child: const Text(
                      'Date Picker',
                      style: TextStyle(color: CupertinoColors.white),
                    ),
                    onPressed: () {
                      showDatePicker(
                          context: context,
                          firstDate: DateTime(1950),
                          lastDate: DateTime(2050));
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(buttoncolor)),
                    child: const Text(
                      'Time Picker',
                      style: TextStyle(color: CupertinoColors.white),
                    ),
                    onPressed: () {
                      showTimePicker(
                          context: context, initialTime: TimeOfDay.now());
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(buttoncolor)),
                    child: const Text(
                      'Alert Dialong',
                      style: TextStyle(color: CupertinoColors.white),
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text("Welcome to iOS platform"),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('Next')),
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('Close')),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
