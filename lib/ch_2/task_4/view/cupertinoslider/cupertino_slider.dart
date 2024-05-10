import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/sliding_provider.dart';
import '../cupertinobottomtab/cupertino_bottom_tab.dart';
import 'componexts/theme_mode_change.dart';

SlidingProvider? slidingProvidertrue;
SlidingProvider? slidingProviderfalse;

class CupertinoSliderScreen extends StatelessWidget {
  const CupertinoSliderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    slidingProviderfalse = Provider.of<SlidingProvider>(context, listen: false);
    slidingProvidertrue = Provider.of<SlidingProvider>(context, listen: true);
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        automaticallyImplyLeading: false,
        middle: Text('Display & Brightess'),
        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          child: Icon(CupertinoIcons.chevron_right),
          onPressed: () {
            Navigator.of(context).push(CupertinoPageRoute(
              builder: (context) => CupertinoBottomTab(),
            ));
          },
        ),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CupertinoListSection(
                header: Text('APPEARANCE'),
                children: [
                  CupertinoListTile(title: thememode()),
                  CupertinoListTile(
                    title: Text('Automatic'),
                    trailing: CupertinoSwitch(
                      value: slidingProvidertrue!.isAuto,
                      onChanged: (value) {
                        slidingProviderfalse!.automatic(value);
                      },
                    ),
                  ),
                ],
              ),
              CupertinoListSection(
                header: Text('BRIGHTNESS'),
                footer: Text(
                    'Automatically adapt iPhone display based on ambient lighting conditions to make colors appear consistent in different environments.'),
                children: [
                  CupertinoListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(CupertinoIcons.sun_min),
                        CupertinoSlider(
                          value: slidingProvidertrue!.rangeslindervalue,
                          onChanged: (value) {
                            slidingProviderfalse!.rangeSliderChangeValue(value);
                          },
                        ),
                        Icon(CupertinoIcons.sun_max_fill)
                      ],
                    ),
                  ),
                  CupertinoListTile(
                    title: Text('True Tone'),
                    trailing: CupertinoSwitch(
                      value: slidingProvidertrue!.istone,
                      onChanged: (value) {
                        slidingProviderfalse!.truetone(value);
                      },
                    ),
                  ),
                ],
              ),
              CupertinoListSection(
                children: [
                  CupertinoListTile(
                    title: Text('Night Shift'),
                    additionalInfo: Row(
                      children: [
                        Text('Sunset to Sunrise'),
                        Icon(CupertinoIcons.chevron_right)
                      ],
                    ),
                  ),
                ],
              ),
              CupertinoListSection(
                children: [
                  CupertinoListTile(
                    title: Text('Auto-Lock'),
                    additionalInfo: Row(
                      children: [
                        Text('3 Minutes'),
                        Icon(CupertinoIcons.chevron_right)
                      ],
                    ),
                  ),
                  CupertinoListTile(
                    title: Text('Raise to Wake'),
                    trailing: CupertinoSwitch(
                      value: slidingProvidertrue!.isWake,
                      onChanged: (value) {
                        slidingProviderfalse!.raisetowake(value);
                      },
                    ),
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
