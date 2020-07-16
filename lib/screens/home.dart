import 'package:fitility/screens/profle.dart';
import 'package:flutter/material.dart';
import 'package:fitility/screens/fitility_login.dart';

Login login = new Login();

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ProfileScreen(email: null));
  }
}
