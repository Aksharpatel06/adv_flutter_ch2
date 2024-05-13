import 'package:adv_flutter_ch2/ch_2/task_5/view/task_2/provider/bottom_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomNavigationBarScreen extends StatelessWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Bar App'),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value){
            Provider.of<BottomProvider>(context, listen: false).changeIndex(value);
          },
        selectedIconTheme: IconThemeData(color: Colors.black54),
        selectedLabelStyle: TextStyle(color: Colors.black54),
        currentIndex: Provider.of<BottomProvider>(context, listen: true).pageIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
            backgroundColor: Colors.green.shade100,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'search',
            backgroundColor: Colors.red.shade100,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'add',
            backgroundColor: Colors.grey.shade300,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_call),
            label: 'video call',
            backgroundColor: Colors.purple.shade100,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'favourite border',
            backgroundColor: Colors.cyan.shade100,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'person',
              backgroundColor: Colors.amber.shade100),
        ],
      ),
    );
  }
}
