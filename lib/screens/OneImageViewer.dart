import 'package:flutter/cupertino.dart';
import 'package:photo_view/photo_view.dart';

class OneImageViewer extends StatelessWidget {
  static String imagePath;
  static const id = "OneImageViewer";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PhotoView(
        imageProvider: AssetImage(imagePath),
      ),
    );
  }
}
