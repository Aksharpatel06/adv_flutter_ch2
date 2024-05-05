import 'package:adv_flutter_ch2/ch_2/task_1/provider/picker_provider.dart';
import 'package:adv_flutter_ch2/ch_2/task_1/view/timepicker/componects/time_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
                    0)
                    ? Provider.of<PickerProvider>(context, listen: true)
                    .pickerindex
                    : Provider.of<PickerProvider>(context, listen: true)
                    .pickerindex=0,
                alignment: Alignment.center,
                children: [
                  timepicker(context),
                  SizedBox(
                    height: 400,
                    child: CupertinoTimerPicker(
                      onTimerDurationChanged: (value) {},
                    ),
                  ),
                  CupertinoActionSheet(
                    title: Text('Favorite Dessert',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
                    message: Column(
                      children: [
                        SizedBox(height: 10,),
                        Text('Please select the best dessert from the options belows',style: TextStyle(fontSize: 15),),
                        SizedBox(height: 10,),
                        Divider(),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text('Profiteroles',style: TextStyle(color: Colors.blueAccent,letterSpacing: 1.5,fontSize: 22,fontWeight: FontWeight.w600),),
                        ),
                        Divider(),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text('Cannolis',style: TextStyle(color: Colors.blueAccent,fontSize: 22,letterSpacing: 1.5,fontWeight: FontWeight.w600),),
                        ),
                        Divider(),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text('Trifle',style: TextStyle(color: Colors.blueAccent,fontSize: 22,letterSpacing: 1.5,fontWeight: FontWeight.w600),),
                        ),
                      ],
                    ),
                    cancelButton: CupertinoButton(
                      onPressed: () {

                      },
                      child: Text('Cancel',style: TextStyle(color: Colors.blueAccent,fontSize: 22,letterSpacing: 1.5,fontWeight: FontWeight.bold),),
                    ),
                  )
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
