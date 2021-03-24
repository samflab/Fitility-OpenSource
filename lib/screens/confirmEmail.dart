import 'package:flutter/material.dart';

class ConfirmEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Container(
          child: Center(
            child: Text(
              "Please confirm your email with the link sent on your email ID\nTry signing in again later.",
              style: TextStyle(
                fontFamily: 'Rubik',
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
