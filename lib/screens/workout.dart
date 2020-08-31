import 'package:fitility/screens/all.dart';
import 'package:fitility/screens/bolly-aero.dart';
import 'package:fitility/screens/bootcamp.dart';
import 'package:fitility/screens/hiit.dart';
import 'package:fitility/screens/pillates.dart';
import 'package:fitility/screens/steppers.dart';
import 'package:fitility/screens/zumba.dart';
import 'package:flutter/material.dart';

class Workout extends StatefulWidget {
  @override
  _WorkoutState createState() => _WorkoutState();
}

class _WorkoutState extends State<Workout> {
  bool allColor = true;
  bool zumbaColor = false;
  bool pillatesColor = false;
  bool hiitColor = false;
  bool steppersColor = false;
  bool bollyaeroColor = false;
  bool bootcampColor = false;
  bool allTextColor = true;
  bool zumbaTextColor = false;
  bool pillatesTextColor = false;
  bool hiitTextColor = false;
  bool steppersTextColor = false;
  bool bollyaeroTextColor = false;
  bool bootcampTextColor = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      top: 20.5,
                      right: 20,
                      bottom: 81.0,
                    ),
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                          height: 41.0,
                          width: 130.0,
                          child: RaisedButton(
                            onPressed: () {
                              setState(() {
                                allColor = true;
                                allTextColor = true;
                                zumbaColor = false;
                                zumbaTextColor = false;
                                pillatesColor = false;
                                pillatesTextColor = false;
                                hiitColor = false;
                                hiitTextColor = false;
                                steppersColor = false;
                                steppersTextColor = false;
                                bollyaeroColor = false;
                                bollyaeroTextColor = false;
                                bootcampColor = false;
                                bootcampTextColor = false;
                              });
                            },
                            color:
                                allColor ? Colors.red.shade700 : Colors.white,
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              'All',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Rubik Regular',
                                color:
                                    allTextColor ? Colors.white : Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        SizedBox(
                          height: 41.0,
                          width: 130.0,
                          child: RaisedButton(
                            onPressed: () {
                              setState(() {
                                zumbaColor = true;
                                zumbaTextColor = true;
                                allColor = false;
                                allTextColor = false;
                                pillatesColor = false;
                                pillatesTextColor = false;
                                hiitColor = false;
                                hiitTextColor = false;
                                steppersColor = false;
                                steppersTextColor = false;
                                bollyaeroColor = false;
                                bollyaeroTextColor = false;
                                bootcampColor = false;
                                bootcampTextColor = false;
                              });
                              Zumba();
                            },
                            color:
                                zumbaColor ? Colors.red.shade700 : Colors.white,
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              'Zumba',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Rubik Regular',
                                color: zumbaTextColor
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        SizedBox(
                          height: 41.0,
                          width: 130.0,
                          child: RaisedButton(
                            onPressed: () {
                              setState(() {
                                pillatesColor = true;
                                pillatesTextColor = true;
                                zumbaColor = false;
                                zumbaTextColor = false;
                                allColor = false;
                                allTextColor = false;
                                hiitColor = false;
                                hiitTextColor = false;
                                steppersColor = false;
                                steppersTextColor = false;
                                bollyaeroColor = false;
                                bollyaeroTextColor = false;
                                bootcampColor = false;
                                bootcampTextColor = false;
                              });
                            },
                            color: pillatesColor
                                ? Colors.red.shade700
                                : Colors.white,
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              'Pillates',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Rubik Regular',
                                color: pillatesTextColor
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        SizedBox(
                          height: 41.0,
                          width: 130.0,
                          child: RaisedButton(
                            onPressed: () {
                              setState(() {
                                hiitColor = true;
                                hiitTextColor = true;
                                pillatesColor = false;
                                pillatesTextColor = false;
                                zumbaColor = false;
                                zumbaTextColor = false;
                                allColor = false;
                                allTextColor = false;
                                steppersColor = false;
                                steppersTextColor = false;
                                bollyaeroColor = false;
                                bollyaeroTextColor = false;
                                bootcampColor = false;
                                bootcampTextColor = false;
                              });
                            },
                            color:
                                hiitColor ? Colors.red.shade700 : Colors.white,
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              'HIIT',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Rubik Regular',
                                color:
                                    hiitTextColor ? Colors.white : Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        SizedBox(
                          height: 41.0,
                          width: 130.0,
                          child: RaisedButton(
                            onPressed: () {
                              setState(() {
                                steppersColor = true;
                                steppersTextColor = true;
                                hiitColor = false;
                                hiitTextColor = false;
                                pillatesColor = false;
                                pillatesTextColor = false;
                                zumbaColor = false;
                                zumbaTextColor = false;
                                allColor = false;
                                allTextColor = false;
                                bollyaeroColor = false;
                                bollyaeroTextColor = false;
                                bootcampColor = false;
                                bootcampTextColor = false;
                              });
                            },
                            color: steppersColor
                                ? Colors.red.shade700
                                : Colors.white,
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              'Steppers',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Rubik Regular',
                                color: steppersTextColor
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        SizedBox(
                          height: 41.0,
                          width: 130.0,
                          child: RaisedButton(
                            onPressed: () {
                              setState(() {
                                bollyaeroColor = true;
                                bollyaeroTextColor = true;
                                steppersColor = false;
                                steppersTextColor = false;
                                hiitColor = false;
                                hiitTextColor = false;
                                pillatesColor = false;
                                pillatesTextColor = false;
                                zumbaColor = false;
                                zumbaTextColor = false;
                                allColor = false;
                                allTextColor = false;

                                bootcampColor = false;
                                bootcampTextColor = false;
                              });
                            },
                            color: bollyaeroColor
                                ? Colors.red.shade700
                                : Colors.white,
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              'Bolly-Aero',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Rubik Regular',
                                color: bollyaeroTextColor
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        SizedBox(
                          height: 41.0,
                          width: 130.0,
                          child: RaisedButton(
                            onPressed: () {
                              setState(() {
                                bootcampColor = true;
                                bootcampTextColor = true;
                                bollyaeroColor = false;
                                bollyaeroTextColor = false;
                                steppersColor = false;
                                steppersTextColor = false;
                                hiitColor = false;
                                hiitTextColor = false;
                                pillatesColor = false;
                                pillatesTextColor = false;
                                zumbaColor = false;
                                zumbaTextColor = false;
                                allColor = false;
                                allTextColor = false;
                              });
                            },
                            color: bootcampColor
                                ? Colors.red.shade700
                                : Colors.white,
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              'Bootcamp',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Rubik Regular',
                                color:
                                    bootcampColor ? Colors.white : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 80.0,
                left: 20.0,
                right: 20.0,
              ),
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Visibility(
                      visible: allColor,
                      child: All(),
                    ),
                    Visibility(
                      visible: zumbaColor,
                      child: Zumba(),
                    ),
                    Visibility(
                      visible: pillatesColor,
                      child: Pillates(),
                    ),
                    Visibility(
                      visible: hiitColor,
                      child: Hiit(),
                    ),
                    Visibility(
                      visible: steppersColor,
                      child: Steppers(),
                    ),
                    Visibility(
                      visible: bollyaeroColor,
                      child: BollyAero(),
                    ),
                    Visibility(
                      visible: bootcampColor,
                      child: Bootcamp(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
