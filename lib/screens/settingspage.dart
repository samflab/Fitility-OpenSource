import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffdc2126),
        toolbarHeight: 100.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Row(
                children: [
                  Container(
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                      color: Color(0xfff8fafa),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Center(
                      child: Text(
                        "JD",
                        style: TextStyle(
                          color: Color(0xffdc2126),
                          fontSize: 25.0,
                          fontFamily: 'Rubik',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    "John Doe",
                    style: TextStyle(
                      color: Color(0xfff8fafa),
                      fontSize: 25.0,
                      fontFamily: 'Rubik',
                    ),
                  ),
                  SizedBox(width: 20.0),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xffffffff),
              Color(0xffedf0f1),
              Color(0xffeceff1),
            ],
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 25.0),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Account",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontFamily: 'Rubik',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Color(0xffdc2126),
                    size: 30.0,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Support",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontFamily: 'Rubik',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Color(0xffdc2126),
                    size: 30.0,
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.0),
            Container(
              alignment: Alignment.center,
              child: Container(
                height: 50.0,
                width: 120.0,
                decoration: BoxDecoration(
                  color: Color(0xffdc2126),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text(
                    "Log Out",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontFamily: 'Rubik',
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.bottomRight,
                child: Image.asset(
                  'images/dumble.png',
                  height: 330.0,
                  width: 330.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
