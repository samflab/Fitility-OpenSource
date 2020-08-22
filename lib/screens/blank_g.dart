import 'package:fitility/screens/settings_g.dart';
import 'package:fitility/services/transition.dart';
import 'package:flutter/material.dart';
import 'package:fitility/icons/fitility_icons.dart';
import 'package:fitility/screens/dance.dart';
import 'package:fitility/screens/diet.dart';
import 'package:fitility/screens/plans.dart';
import 'package:fitility/screens/workout.dart';
import 'package:fitility/screens/home.dart';

class BlankG extends StatefulWidget {
  @override
  _BlankGState createState() => _BlankGState();
}

class _BlankGState extends State<BlankG> {
  int _currentIndex = 0;
  final List<Widget> _tabs = [Home(), Workout(), Dance(), Diet(), Plans()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              FadeRoute(
                page: SettingsG(),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 0.0),
            child: Icon(Icons.menu),
          ),
        ),
        iconTheme: IconThemeData(color: Colors.red.shade700, size: 30.0),
        bottom: PreferredSize(
            child: Container(
              color: Colors.red.shade700,
              height: 3.0,
            ),
            preferredSize: Size.fromHeight(4.0)),
        elevation: 0.0,
        title: Row(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 80.0,
              ),
              child: Image.asset('images/logo.png', height: 35.0, width: 35.0),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 5.0, right: 100.0),
                child: Text(
                  'Fitility',
                  style: TextStyle(
                    fontFamily: 'Rubik',
                    fontSize: 25,
                    color: Colors.red.shade700,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: new Icon(
                Fitility.browser,
                color: Colors.red.shade700,
                size: 23.0,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(
                top: 7.0,
              ),
              child: new Text(
                'Home',
                style: TextStyle(
                  fontFamily: 'Rubik',
                  fontSize: 10,
                  color: Colors.red.shade700,
                ),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(
                top: 8.0,
                right: 18.0,
              ),
              child: new Icon(
                Fitility.gym,
                color: Colors.red.shade700,
                size: 22.0,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(
                top: 8.0,
                right: 5.0,
              ),
              child: Text(
                'Workout',
                style: TextStyle(
                  fontFamily: 'Rubik',
                  color: Colors.red.shade700,
                  fontSize: 10,
                ),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: new Icon(Fitility.diners_club,
                  color: Colors.red.shade700, size: 30.0),
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: new Text(
                'Dance',
                style: TextStyle(
                  fontFamily: 'Rubik',
                  fontSize: 10,
                  color: Colors.red.shade700,
                ),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: new Icon(
                Fitility.meal,
                color: Colors.red.shade700,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: new Text(
                  'Diet',
                  style: TextStyle(
                    fontFamily: 'Rubik',
                    fontSize: 10,
                    color: Colors.red.shade700,
                  ),
                ),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: new Icon(
                Fitility.strategic_plan,
                color: Colors.red.shade700,
                size: 30,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: new Text(
                'Plans',
                style: TextStyle(
                  fontFamily: 'Rubik',
                  fontSize: 10,
                  color: Colors.red.shade700,
                ),
              ),
            ),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
