import 'package:fitility/screens/blank.dart';
import 'package:fitility/screens/home.dart';
import 'package:fitility/screens/login.dart';
import 'package:fitility/screens/onboarding.dart';
import 'package:fitility/screens/settings.dart';
import 'package:fitility/screens/sign_up.dart';
import 'package:fitility/screens/splashscreen.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Signin(), routes: <String, WidgetBuilder>{
      '/splash': (BuildContext context) => SplashScreen(),
      '/onboarding': (BuildContext context) => StartPage(),
      '/signup': (BuildContext context) => Register(),
      '/login': (BuildContext context) => Signin(),
      '/home': (BuildContext context) => Home(),
      '/profile': (BuildContext context) => Settings(),
      '/blank': (BuildContext context) => Blank(),
    });
  }
}
