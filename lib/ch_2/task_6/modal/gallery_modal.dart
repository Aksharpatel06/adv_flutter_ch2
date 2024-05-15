
import 'imgdata.dart';

class GalleryModal {
  String img;
  String name;
  int numberofimg;
  List<GalleryModal> list = [];

  GalleryModal(
      {required this.img, required this.name, required this.numberofimg});

  factory GalleryModal.setdata(Map m1) {
    return GalleryModal(
        img: m1['img'], name: m1['name'], numberofimg: m1['num']);
  }

  void makeList() {
    list = galleryimglist.map((e) => GalleryModal.setdata(e)).toList();
  }
}