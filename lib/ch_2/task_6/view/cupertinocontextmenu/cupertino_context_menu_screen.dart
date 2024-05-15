import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../modal/gallery_modal.dart';
import '../../modal/imgdata.dart';

GalleryModal? galleryModal;
class CupertinoContextMenuScreen extends StatelessWidget {
  const CupertinoContextMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: Icon(Icons.menu),
        middle: Text('Gallery'),
      ),
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              //MULTI GALLERY CATEGORIES IMAGES
              GridView.builder(
                  shrinkWrap: true,
                  itemCount: galleryimglist.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, mainAxisExtent: 175),
                  itemBuilder: (context, index) {
                    galleryModal= GalleryModal.setdata(galleryimglist[index]);
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 110,
                            width: 110,
                            child: CupertinoContextMenu(
                              actions: <Widget>[
                                CupertinoContextMenuAction(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  trailingIcon: CupertinoIcons.doc_on_clipboard_fill,
                                  child: const Text('Copy'),
                                ),
                                CupertinoContextMenuAction(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  trailingIcon: CupertinoIcons.share,
                                  child: const Text('Share'),
                                ),
                                CupertinoContextMenuAction(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  trailingIcon: CupertinoIcons.heart,
                                  child: const Text('Favorite'),
                                ),
                                CupertinoContextMenuAction(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  trailingIcon: CupertinoIcons.chat_bubble_2,
                                  child: const Text('Show in All Photos'),
                                ),
                                CupertinoContextMenuAction(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  isDestructiveAction: true,
                                  trailingIcon: CupertinoIcons.delete,
                                  child: const Text('Delete'),
                                ),
                              ],
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  galleryModal!.img,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Text(galleryModal!.name, style: const TextStyle(fontWeight: FontWeight
                              .bold,),),
                          Text(galleryModal!.numberofimg.toString(), style: const TextStyle(fontWeight: FontWeight
                              .w200, fontSize: 12,height: 0.9),),
                        ],
                      ),
                    );
                  }
              )
            ],
          ),
        ),
      ),
    );
  }
}