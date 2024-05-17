import 'package:adv_flutter_ch2/ch_2/task_8/modal/color_list.dart';
import 'package:flutter/material.dart';

class SliverScreen extends StatelessWidget {
  const SliverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 160,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Space Bar',
                style: TextStyle(color: Colors.white),
              ),
              background: Image.asset('asset/img/Tatus.jpg', fit: BoxFit.cover),
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            delegate: SliverChildBuilderDelegate(childCount: colorlists.length,(context, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color:colorlists[index],
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
            ))
          ),
        ],
      ),
    );
  }
}
