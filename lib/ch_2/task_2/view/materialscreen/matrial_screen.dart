import 'package:adv_flutter_ch2/utils/colorlist.dart';
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
        title:Text('Android'),
        actions: [
          Switch(
            value: Provider.of<PlatForm>(context,listen: true).isAndoid,
            onChanged: (value) {
              Provider.of<PlatForm>(context,listen: false).change_platfrom(value);
            },
          ),
        ],
      ),
    );
  }
}
