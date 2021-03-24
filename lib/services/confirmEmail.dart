import 'package:flutter/material.dart';

class ConfirmEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "Please confirm your email with the link sent on your email ID\ntry signing in again later.",
            style: TextStyle(
              fontFamily: 'Rubik',
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
