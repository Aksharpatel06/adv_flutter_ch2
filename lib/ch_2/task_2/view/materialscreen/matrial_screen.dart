import 'package:adv_flutter_ch2/utils/colorlist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/platform.dart';
import '../cupertinoscreen/componects/list_tile.dart';
import 'componects/indicator.dart';
import 'componects/material_button.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            indicator(),
            listTile(),
            materialButton(context),
          ],
        ),
      ),
    );
  }
}
