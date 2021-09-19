import 'package:doctor_assistant/screens/OneImageViewer.dart';
import 'package:doctor_assistant/utils/AppColors.dart';
import 'package:flutter/material.dart';

class ImagesOfResults extends StatelessWidget {
  static const id = "imagesResult";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBarColor,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Wrap(
            children: [
              InkWell(
                child: Image.asset(
                  "images/test2.jpg",
                  width: MediaQuery.of(context).size.width / 2 - 20,
                  height: MediaQuery.of(context).size.height / 3,
                ),
                onTap: () {
                  OneImageViewer.imagePath = "images/test2.jpg";
                  Navigator.of(context).pushNamed(OneImageViewer.id);
                },
              ),
              InkWell(
                child: Image.asset(
                  "images/test2.jpg",
                  width: MediaQuery.of(context).size.width / 2 - 20,
                  height: MediaQuery.of(context).size.height / 3,
                ),
                onTap: () {
                  OneImageViewer.imagePath = "images/test2.jpg";
                  Navigator.of(context).pushNamed(OneImageViewer.id);
                },
              ),
              InkWell(
                child: Image.asset(
                  "images/test2.jpg",
                  width: MediaQuery.of(context).size.width / 2 - 20,
                  height: MediaQuery.of(context).size.height / 3,
                ),
                onTap: () {
                  OneImageViewer.imagePath = "images/test2.jpg";
                  Navigator.of(context).pushNamed(OneImageViewer.id);
                },
              ),
              InkWell(
                child: Image.asset(
                  "images/test2.jpg",
                  width: MediaQuery.of(context).size.width / 2 - 20,
                  height: MediaQuery.of(context).size.height / 3,
                ),
                onTap: () {
                  OneImageViewer.imagePath = "images/test2.jpg";
                  Navigator.of(context).pushNamed(OneImageViewer.id);
                },
              ),
              InkWell(
                child: Image.asset(
                  "images/test2.jpg",
                  width: MediaQuery.of(context).size.width / 2 - 20,
                  height: MediaQuery.of(context).size.height / 3,
                ),
                onTap: () {
                  OneImageViewer.imagePath = "images/test2.jpg";
                  Navigator.of(context).pushNamed(OneImageViewer.id);
                },
              ),
              InkWell(
                child: Image.asset(
                  "images/test2.jpg",
                  width: MediaQuery.of(context).size.width / 2 - 20,
                  height: MediaQuery.of(context).size.height / 3,
                ),
                onTap: () {
                  OneImageViewer.imagePath = "images/test2.jpg";
                  Navigator.of(context).pushNamed(OneImageViewer.id);
                },
              ),
              InkWell(
                child: Image.asset(
                  "images/test2.jpg",
                  width: MediaQuery.of(context).size.width / 2 - 20,
                  height: MediaQuery.of(context).size.height / 3,
                ),
                onTap: () {
                  OneImageViewer.imagePath = "images/test2.jpg";
                  Navigator.of(context).pushNamed(OneImageViewer.id);
                },
              ),
              InkWell(
                child: Image.asset(
                  "images/test2.jpg",
                  width: MediaQuery.of(context).size.width / 2 - 20,
                  height: MediaQuery.of(context).size.height / 3,
                ),
                onTap: () {
                  OneImageViewer.imagePath = "images/test2.jpg";
                  Navigator.of(context).pushNamed(OneImageViewer.id);
                },
              ),
              InkWell(
                child: Image.asset(
                  "images/test2.jpg",
                  width: MediaQuery.of(context).size.width / 2 - 20,
                  height: MediaQuery.of(context).size.height / 3,
                ),
                onTap: () {
                  OneImageViewer.imagePath = "images/test2.jpg";
                  Navigator.of(context).pushNamed(OneImageViewer.id);
                },
              ),
              InkWell(
                child: Image.asset(
                  "images/test2.jpg",
                  width: MediaQuery.of(context).size.width / 2 - 20,
                  height: MediaQuery.of(context).size.height / 3,
                ),
                onTap: () {
                  OneImageViewer.imagePath = "images/test2.jpg";
                  Navigator.of(context).pushNamed(OneImageViewer.id);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
