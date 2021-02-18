import 'package:fitility/screens/login.dart';
import 'package:fitility/services/transition.dart';
import 'package:flutter/material.dart';
import 'package:fitility/services/authentication.dart';

class AdminPage extends StatefulWidget {
  @override
  _AdminPageState createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.red,
              height: 150.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 80.0,
                    width: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        "A",
                        style: TextStyle(
                          color: Colors.red[800],
                          fontSize: 45.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15.0),
                  Text(
                    "Admin",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 38.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 100.0),
            GestureDetector(
              onTap: () {
                signOut().whenComplete(() {
                  Navigator.pushReplacement(
                    context,
                    FadeRoute(page: Signin()),
                  );
                });
              },
              child: Container(
                height: 50.0,
                width: 140.0,
                decoration: BoxDecoration(
                  color: Colors.red[600],
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[350],
                      blurRadius: 2.0,
                      spreadRadius: 2.0,
                      offset: Offset(2.0, 5.0),
                    )
                  ],
                ),
                child: Center(
                  child: Text(
                    "Logout",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
