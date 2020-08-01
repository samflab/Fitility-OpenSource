import 'package:fitility/screens/blank.dart';
import 'package:fitility/screens/home.dart';
import 'package:fitility/screens/login.dart';
import 'package:fitility/screens/onboarding.dart';
import 'package:fitility/screens/settings.dart';
import 'package:fitility/screens/sign_up.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: StartPage(), routes: <String, WidgetBuilder>{
      '/onboarding': (BuildContext context) => StartPage(),
      '/signup': (BuildContext context) => Register(),
      '/login': (BuildContext context) => Signin(),
      '/home': (BuildContext context) => Home(),
      '/profile': (BuildContext context) => Settings(),
      '/blank': (BuildContext context) => Blank(),
    });
  }
}
