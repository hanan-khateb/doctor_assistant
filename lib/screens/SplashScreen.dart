import 'dart:async';

import 'package:doctor_assistant/models/SignUpInformation.dart';
import 'package:doctor_assistant/screens/HomePage.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../generated/l10n.dart';
import '../utils/FontsStyle.dart';
import 'IntroPage.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class AppSplashScreen extends StatefulWidget {
  @override
  _AppSplashScreenState createState() => _AppSplashScreenState();
}

class _AppSplashScreenState extends State<AppSplashScreen> {
  Timer viewTime;
  int timeValue = 5;
  bool isNewClient;
  @override
  void initState() {
    /*  Future res = GetCountries.fetchAllCountries();
    res.then((value) {
      Navigator.of(context).pop();
      Navigator.of(context).pushNamed(IntroPage.id);
    });*/

    viewTime = new Timer.periodic(Duration(seconds: 1), (Timer t) {
      if (timeValue == 0) {
        t.cancel();
        Navigator.of(context).pop();
        Navigator.of(context).pushNamed(IntroPage.id);
        /* if (Provider.of<SignUpInformation>(context).isNewClient) {
          Navigator.of(context).pop();
          Navigator.of(context).pushNamed(IntroPage.id);
        } else {
          Navigator.of(context).pop();
          Navigator.of(context).pushNamed(HomePage.id);
        }*/
      } else {
        timeValue--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double w, h;
    double screenWidth, screenHeight;

    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Container(
          color: Colors.white,
          width: screenWidth * 0.8,
          height: screenHeight * 0.5,
          child: LayoutBuilder(
            builder: (builder, sizes) {
              w = sizes.maxWidth;
              h = sizes.maxHeight;
              return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/logo.png',
                      width: w,
                      height: h * 0.65,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(
                      width: w,
                      child: TextLiquidFill(
                        text: S.of(context).doctor_assistant,
                        waveColor: Colors.blue[900],
                        loadDuration: Duration(seconds: 4),
                        textStyle: FontsStyle.splashStyle(w, h * 0.3),
                        boxBackgroundColor: Colors.white,
                        boxHeight: h * 0.3,
                      ),
                    )
                  ]);
            },
          ),
        )));
  }
}
