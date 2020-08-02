import 'dart:ui';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, top: 20.0, right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: SizedBox(
                          height: 41.0,
                          child: RaisedButton(
                            onPressed: () {},
                            color: Colors.white,
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              'Workout',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Rubik Regular',
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: SizedBox(
                            height: 41.0,
                            child: RaisedButton(
                              onPressed: () {},
                              color: Colors.white,
                              elevation: 5.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text(
                                'Dance',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Rubik Regular',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: SizedBox(
                            height: 41.0,
                            child: RaisedButton(
                              onPressed: () {},
                              color: Colors.white,
                              elevation: 5.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text(
                                'Diet',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Rubik Regular',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0, right: 19.0),
                        child: SizedBox(
                          height: 41.0,
                          child: RaisedButton(
                            onPressed: () {},
                            color: Colors.white,
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              'Plans',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Rubik Regular',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 25.0, top: 20.0, right: 25.0),
                  child: Image.asset('images/box.png'),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20.0, top: 21),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 4.0, left: 0.0),
                              child: Icon(
                                Icons.remove,
                                color: Colors.red.shade700,
                                size: 30.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Text(
                                'Workout videos for you',
                                style: TextStyle(
                                  fontFamily: 'Rubik Regular',
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20.0, top: 11.0),
                              child: Image.asset(
                                'images/pic1.png',
                                height: 55.0,
                                width: 100.0,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 9.0, top: 11.0),
                                  child: Text(
                                    'Video Title',
                                    style: TextStyle(
                                      fontFamily: 'Rubik Regular',
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 9.0, right: 9.0),
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.50,
                                    child: Text(
                                      'lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut                                    ',
                                      //overflow: TextOverflow.fade,
                                      style: TextStyle(
                                        fontFamily: 'Rubik Regular',
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        //SizedBox(height: 15.0),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20.0, top: 11.0),
                              child: GestureDetector(
                                onTap: () {},
                                child: Image.asset(
                                  'images/pic2.png',
                                  height: 55.0,
                                  width: 100.0,
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 9.0, top: 11.0),
                                  child: Text(
                                    'Video Title',
                                    style: TextStyle(
                                      fontFamily: 'Rubik Regular',
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 9.0,
                                    right: 9.0,
                                  ),
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.50,
                                    child: Text(
                                      'lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut                                    ',
                                      //overflow: TextOverflow.fade,
                                      style: TextStyle(
                                        fontFamily: 'Rubik Regular',
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ),
                                //SizedBox(height: 30.0),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20.0, top: 11.0),
                              child: Image.asset(
                                'images/pic3.png',
                                height: 55.0,
                                width: 100.0,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 9.0, top: 11.0),
                                  child: Text(
                                    'Video Title',
                                    style: TextStyle(
                                      fontFamily: 'Rubik Regular',
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 9.0,
                                    right: 9.0,
                                  ),
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.50,
                                    child: Text(
                                      'lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut                                    ',
                                      //overflow: TextOverflow.fade,
                                      style: TextStyle(
                                        fontFamily: 'Rubik Regular',
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 15.0),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20.0, top: 21),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Icon(
                                Icons.remove,
                                color: Colors.red.shade700,
                                size: 30.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Text(
                                'Dance videos for you',
                                style: TextStyle(
                                  fontFamily: 'Rubik Regular',
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20.0, top: 11.0),
                              child: Image.asset(
                                'images/pic1.png',
                                height: 55.0,
                                width: 100.0,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 9.0, top: 11.0),
                                  child: Text(
                                    'Video Title',
                                    style: TextStyle(
                                      fontFamily: 'Rubik Regular',
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 9.0, right: 9.0),
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.50,
                                    child: Text(
                                      'lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut                                    ',
                                      //overflow: TextOverflow.fade,
                                      style: TextStyle(
                                        fontFamily: 'Rubik Regular',
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        //SizedBox(height: 15.0),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20.0, top: 11.0),
                              child: GestureDetector(
                                onTap: () {},
                                child: Image.asset(
                                  'images/pic2.png',
                                  height: 55.0,
                                  width: 100.0,
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 9.0, top: 11.0),
                                  child: Text(
                                    'Video Title',
                                    style: TextStyle(
                                      fontFamily: 'Rubik Regular',
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 9.0,
                                    right: 9.0,
                                  ),
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.50,
                                    child: Text(
                                      'lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut                                    ',
                                      //overflow: TextOverflow.fade,
                                      style: TextStyle(
                                        fontFamily: 'Rubik Regular',
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ),
                                //SizedBox(height: 30.0),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20.0, top: 11.0),
                              child: Image.asset(
                                'images/pic3.png',
                                height: 55.0,
                                width: 100.0,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 9.0, top: 11.0),
                                  child: Text(
                                    'Video Title',
                                    style: TextStyle(
                                      fontFamily: 'Rubik Regular',
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 9.0,
                                    right: 9.0,
                                  ),
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.50,
                                    child: Text(
                                      'lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut                                    ',
                                      //overflow: TextOverflow.fade,
                                      style: TextStyle(
                                        fontFamily: 'Rubik Regular',
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 15.0),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20.0, top: 21),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Icon(
                                Icons.remove,
                                color: Colors.red.shade700,
                                size: 30.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Text(
                                'Meal of the day',
                                style: TextStyle(
                                  fontFamily: 'Rubik Regular',
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20.0, top: 11.0),
                              child: Image.asset(
                                'images/meal.png',
                                height: 55.0,
                                width: 100.0,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 9.0, top: 11.0),
                                  child: Text(
                                    'Meal name',
                                    style: TextStyle(
                                      fontFamily: 'Rubik Regular',
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 9.0,
                                    right: 9.0,
                                  ),
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.50,
                                    child: Text(
                                      'lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut                                    ',
                                      //overflow: TextOverflow.fade,
                                      style: TextStyle(
                                        fontFamily: 'Rubik Regular',
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 15.0),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 21.0),
                  child: Image.asset(
                    'images/line.png',
                    height: 3.0,
                    width: 53.0,
                  ),
                ),
                SizedBox(height: 20.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
