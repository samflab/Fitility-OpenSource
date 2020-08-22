import 'package:fitility/screens/blank_g.dart';
import 'package:fitility/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GooglePage extends StatefulWidget {
  @override
  _GooglePageState createState() => _GooglePageState();
}

final GoogleSignIn _googleSignIn = new GoogleSignIn();
GoogleSignInAccount currentUser = _googleSignIn.currentUser;

class _GooglePageState extends State<GooglePage> {
  bool isLoggedIn = false;
  @override
  void initState() {
    super.initState();
    if (currentUser != null) {
      setState(() {
        isLoggedIn = true;
      });
    } else {
      setState(() {
        isLoggedIn = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return isLoggedIn ? BlankG() : Signin();
  }
}
