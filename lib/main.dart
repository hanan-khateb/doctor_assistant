import 'package:doctor_assistant/models/Countries.dart';
import 'package:doctor_assistant/screens/HomePage.dart';

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
      },
    );
  }
}
