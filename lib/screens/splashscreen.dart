import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitility/screens/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'blank.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    new Timer(new Duration(milliseconds: 200), () {
      checkFirstSeen();
    });
  }

  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('seen') ?? false);

    if (_seen) {
      FirebaseAuth.instance
          .currentUser()
          .then(
            (authResult) => authResult == null
                ? Navigator.pushReplacementNamed(context, "/login")
                : Firestore.instance
                    .collection('users')
                    .document(authResult.uid)
                    .get()
                    .then(
                      (DocumentSnapshot result) => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Blank(),
                        ),
                      ),
                    )
                    .catchError(
                      (err) => print(err),
                    ),
          )
          .catchError((err) => print(err));
    } else {
      prefs.setBool('seen', true);
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => new StartPage()));
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.0, -1.0),
                  end: Alignment(0.0, 1.0),
                  colors: [
                    const Color(0xffffffff),
                    const Color(0x00ffffff),
                    const Color(0xf6edf0f1),
                    const Color(0xffeceff1)
                  ],
                ),
              ),
            ),
            Center(
              child: Image.asset(
                'images/logo.png',
                height: 70.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
