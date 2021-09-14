import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FontsStyle {
  static TextStyle splashStyle(double w, double h) {
    double fonteSize = w < h ? w * 0.3 : h * 0.3;
    return TextStyle(fontSize: fonteSize, fontWeight: FontWeight.bold);
  }

  static TextStyle wellcomeStyle(double w, double h) {
    double fonteSize = w < h ? w * 0.07 : h * 0.07;
    return TextStyle(
        fontSize: fonteSize,
        color: Colors.blue[900],
        fontWeight: FontWeight.bold,
        fontFamily: "KaiseiHarunoUmi");
  }

  static final appBarStyle =
      TextStyle(fontWeight: FontWeight.bold, fontFamily: "Merienda");

  static TextStyle formLabelTextStyle(double w, double h) {
    double fSize = w < h ? 0.04 * w : 0.04 * h;
    return TextStyle(fontSize: fSize);
  }

  static TextStyle formContentTextStyle(double w, double h) {
    double fSize = w < h ? 0.04 * w : 0.04 * h;
    return TextStyle(
        color: Colors.black, fontFamily: 'SFUIDisplay', fontSize: fSize);
  }
}
