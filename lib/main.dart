import 'package:fitility/adminside/screen/createpage.dart';
import 'package:fitility/screens/homepage.dart';
import 'package:fitility/screens/login.dart';
import 'package:fitility/screens/onboarding.dart';
import 'package:fitility/services/sharedpref.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

int notFirstTime;
String userIdkey;
String userRole;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  notFirstTime = preferences.getInt('notFirstTime');
  await preferences.setInt('notFirstTime', 1);
  userIdkey = await SharedPrefHelper().getUserId();
  userRole = await SharedPrefHelper().getUserRole();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((val) {
    runApp(MyApp());
  });
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
        'notonboard': (context) {
          if (userIdkey != null) {
            return (userRole == "user") ? HomePage() : CreatePage();
          } else {
            return Signin();
          }
        },
      },
    );
  }
}
