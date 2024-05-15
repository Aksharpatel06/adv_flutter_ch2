import 'package:flutter/cupertino.dart';

class CupertinoActionSheetScreen extends StatelessWidget {
  const CupertinoActionSheetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Cupertino App'),
      ),
        child: Center(
          child: CupertinoButton(
                child: Text('Show CupertinoActionSheet'),
                onPressed: () {
          showCupertinoModalPopup<void>(
            context: context,
            builder: ( context) => CupertinoActionSheet(
              title: const Text('Title',textAlign: TextAlign.start,),
              message: const Text('Message',textAlign: TextAlign.start,),
              actions: [
                CupertinoActionSheetAction(
                  isDefaultAction: true,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Default Action'),
                ),
                CupertinoActionSheetAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Normal Action'),
                ),
                CupertinoActionSheetAction(
                  isDestructiveAction: true,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Destructive Action'),
                ),
              ],
              cancelButton: CupertinoActionSheetAction(
                isDefaultAction: true,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Cancel'),
              ),
            ),
          );
                },
              ),
        ));
  }
}
