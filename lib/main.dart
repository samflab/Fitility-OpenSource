import 'package:fitility/screens/dancepage.dart';
import 'package:fitility/screens/diet_nonveg.dart';
import 'package:fitility/screens/diet_veg.dart';
import 'package:fitility/screens/homepage.dart';
import 'package:fitility/screens/login.dart';
import 'package:fitility/screens/onboarding.dart';
import 'package:fitility/screens/plans_zumba.dart';
import 'package:fitility/screens/signup.dart';
import 'package:fitility/screens/workout.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

int notFirstTime;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  notFirstTime = preferences.getInt('notFirstTime');
  await preferences.setInt('notFirstTime', 1);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:
          notFirstTime == 0 || notFirstTime == null ? 'onboard' : 'notonboard',
      routes: {
        'onboard': (context) => StartPage(),
        'home': (context) => HomePage(),
        'notonboard': (context) => DietNonVeg(),
      },
    );
  }
}
