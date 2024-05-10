import 'package:flutter/cupertino.dart';

class ListSectionScreen extends StatelessWidget {
  const ListSectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            largeTitle: Text('Settings'),
          ),
          SliverFillRemaining(
            child: Column(
              children: [
                CupertinoListSection(
                  dividerMargin: 0,
                  children: <CupertinoListTile> [
                    CupertinoListTile.notched(
                      title: Text('General'),
                      leading: Icon(CupertinoIcons.settings),
                      trailing: CupertinoListTileChevron(),
                    ),
                    CupertinoListTile.notched(
                      title: Text('Display & Brightness'),
                      leading: Icon(CupertinoIcons.text_cursor),
                      trailing: CupertinoListTileChevron(),
                    ),
                    CupertinoListTile.notched(
                      title: Text('Wallpaper'),
                      leading: Icon(CupertinoIcons.photo),
                      trailing: CupertinoListTileChevron(),
                    ),
                    CupertinoListTile.notched(
                      title: Text('Sounds'),
                      leading: Icon(CupertinoIcons.speaker_2),
                      trailing: CupertinoListTileChevron(),
                    ),
                    CupertinoListTile.notched(
                      title: Text('Privacy'),
                      leading: Icon(CupertinoIcons.hand_raised),
                      trailing: CupertinoListTileChevron(),
                    ),
                  ],
                ),
                CupertinoListSection(
                  children: <CupertinoListTile> [
                    CupertinoListTile.notched(
                      title: Text('iCloud'),
                      subtitle: Text('sarah@9to5mac.com'),
                      leading: Icon(CupertinoIcons.cloud),
                      trailing: CupertinoListTileChevron(),
                    ),
                    CupertinoListTile.notched(
                      title: Text('iTunes & App Store'),
                      leading: Icon(CupertinoIcons.textformat),
                      trailing: CupertinoListTileChevron(),
                    ),
                    CupertinoListTile.notched(
                      title: Text('Password & Apple Pay'),
                      leading: Icon(CupertinoIcons.book),
                      trailing: CupertinoListTileChevron(),
                    ),
                  ],
                ),
                CupertinoListSection(
                  children: <CupertinoListTile> [
                    CupertinoListTile.notched(
                      title: Text('Mail,Contacts,Calendars'),
                      leading: Icon(CupertinoIcons.mail),
                      trailing: CupertinoListTileChevron(),
                    ),
                    CupertinoListTile.notched(
                      title: Text('Notes'),
                      leading: Icon(CupertinoIcons.text_append),
                      trailing: CupertinoListTileChevron(),
                    ),
                    CupertinoListTile.notched(
                      title: Text('Reminders'),
                      leading: Icon(CupertinoIcons.book),
                      trailing: CupertinoListTileChevron(),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
