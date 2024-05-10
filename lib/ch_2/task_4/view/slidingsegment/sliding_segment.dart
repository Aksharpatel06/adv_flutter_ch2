import 'package:adv_flutter_ch2/ch_2/task_4/modal/screen_lists.dart';
import 'package:adv_flutter_ch2/ch_2/task_4/provider/sliding_segment_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../cupertinoslider/cupertino_slider.dart';

class SlidingSegmentScreen extends StatelessWidget {
  const SlidingSegmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            automaticallyImplyLeading: false,
            middle: Text('Title'),
            largeTitle: Center(
              child: CupertinoSlidingSegmentedControl(
                groupValue: Provider.of<SlidingSegmentProvider>(context, listen: true)
                    .slidingindex
                    .toString(),
                thumbColor: CupertinoColors.systemBlue,
                children: {
                  '0': Text(
                    'Home',
                    style: TextStyle(fontSize: 15),
                  ),
                  '1': Text(
                    'Settings',
                    style: TextStyle(fontSize: 15),
                  ),
                  '2': Text(
                    'Like',
                    style: TextStyle(fontSize: 15),
                  ),
                  '3': Text(
                    'Profile',
                    style: TextStyle(fontSize: 15),
                  ),
                },
                onValueChanged: (value) {
                  Provider.of<SlidingSegmentProvider>(context, listen: false)
                      .changesliding(value!);
                },
              ),
            ),
            trailing: CupertinoButton(
              padding: EdgeInsets.zero,
              child: Icon(CupertinoIcons.chevron_right),
              onPressed: () {
                Navigator.of(context).push(CupertinoPageRoute(
                  builder: (context) => CupertinoSliderScreen(),
                ));
              },
            ),
          ),
          SliverFillRemaining(
            child: Center(
              child: Text(
                screenlist[Provider.of<SlidingSegmentProvider>(context).slidingindex],
              ),
            ),
          )
        ],
      ),
    );
  }
}
