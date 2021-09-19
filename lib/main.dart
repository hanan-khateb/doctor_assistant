import 'package:doctor_assistant/models/SignUpInformation.dart';
import 'package:doctor_assistant/screens/ImagesOfResults.dart';
import 'package:doctor_assistant/screens/OneImageViewer.dart';
import 'package:doctor_assistant/screens/OnePatientProfile.dart';

import 'models/Countries.dart';
import 'screens/HomePage.dart';
import 'screens/WelcomePage.dart';
import 'screens/SignUpSecond.dart';
import 'screens/IntroPage.dart';
import 'screens/LogIn.dart';
import 'screens/SignUp.dart';
import 'models/FavoriteSetting.dart';
import 'screens/SplashScreen.dart';
import 'generated/l10n.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => FavoriteSetting()),
      ChangeNotifierProvider(create: (context) => Countries()),
      FutureProvider<bool>(
        create: (context) => SignUpInformation().getIsNewClient(),
        initialData: false,
        child: MyApp(),
      ),
      /* FutureProvider<void>(
        create: (context) => SignUpInformation().removeClient(),
        child: MyApp(),
      ),
      FutureProvider<void>(
        create: (context) => SignUpInformation().addClient(),
        child: MyApp(),
      ),*/
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        S.delegate
      ],
      supportedLocales: S.delegate.supportedLocales,
      home: AppSplashScreen(),
      title: "Depression Treatment",
      routes: {
        SignUp.id: (context) => SignUp(),
        SignUpSecond.id: (context) => SignUpSecond(),
        LogIn.id: (context) => LogIn(),
        IntroPage.id: (context) => IntroPage(),
        HomePage.id: (context) => HomePage(),
        WelcomePage.id: (context) => WelcomePage(),
        ImagesOfResults.id: (context) => ImagesOfResults(),
        OneImageViewer.id: (context) => OneImageViewer(),
        OnePatientProfile.id: (context) => OnePatientProfile()
      },
    );
  }
}
