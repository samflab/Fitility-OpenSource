import 'package:fitility/screens/home.dart';
import 'package:fitility/screens/fitility_login.dart';
import 'package:fitility/screens/fitility_start_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future<bool> getprefs() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    bool loggedIn = preferences.getBool("isLoggedIn");
    return loggedIn;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FutureBuilder(
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return StartPage();
          } else if (snapshot.data == true) {
            return Home();
          } else {
            return Login();
          }
        },
      ),
    );
  }
}
