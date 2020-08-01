import 'package:fitility/screens/blank.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  initState() {
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
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text("Loading..."),
        ),
      ),
    );
  }
}
