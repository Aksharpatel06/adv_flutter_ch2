import 'package:adv_flutter_ch2/ch_2/task_4/modal/screen_lists.dart';
import 'package:flutter/cupertino.dart';

import '../slidingsegment/sliding_segment.dart';

class CupertinoBottomTab extends StatelessWidget {
  const CupertinoBottomTab({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Kindacode.com'),
        automaticallyImplyLeading: false,
        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          child: Icon(CupertinoIcons.chevron_right),
          onPressed: () {
            Navigator.of(context).push(CupertinoPageRoute(builder: (context) => SlidingSegmentScreen(),));
          },
        ),
      ),
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.settings), label: 'Settings'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.heart), label: 'Like'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person), label: 'Person'),
        ]),
        tabBuilder: (context, index) {
          return Center(child: Text(screenlist[index]));
        },
      ),
    );
  }
}
