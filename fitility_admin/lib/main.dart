import 'package:fitility_admin/screen/createpage.dart';
import 'package:fitility_admin/screen/modifypage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screen/createpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ModifyPage(),
    );
  }
}
