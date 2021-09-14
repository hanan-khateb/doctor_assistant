import '../generated/l10n.dart';
import '../utils/AppColors.dart';
import '../utils/FontsStyle.dart';
import '../weidgets/WelcomeContent.dart';
import '../weidgets/MyDrawer.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  static const id = "intro";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          S.of(context).doctor_assistant,
          style: FontsStyle.appBarStyle,
        ),
        backgroundColor: AppColors.appBarColor,
      ),
      drawer: MyDrawer(),
      body: ListView(scrollDirection: Axis.horizontal, children: [
        WelcomeContent(
          imageName: "1",
          welcomeNumber: 1,
        ),
        WelcomeContent(
          imageName: "13",
          welcomeNumber: 2,
        ),
        WelcomeContent(
          imageName: "8",
          welcomeNumber: 3,
        ),
        WelcomeContent(
          imageName: "5",
          welcomeNumber: 4,
        ),
        WelcomeContent(
          imageName: "9",
          welcomeNumber: 5,
        ),
        WelcomeContent(
          imageName: "10",
          welcomeNumber: 6,
        ),
      ]),
    );
  }
}
