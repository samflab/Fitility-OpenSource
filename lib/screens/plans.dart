import 'package:fitility/screens/plans_dance.dart';
import 'package:fitility/screens/plans_zumba.dart';
import 'package:flutter/material.dart';

class Plans extends StatefulWidget {
  @override
  _PlansState createState() => _PlansState();
}

class _PlansState extends State<Plans> {
  bool zumbaColor = true;
  bool zumbaTextColor = true;
  bool danceTextColor = false;
  bool danceColor = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30.0,
                      top: 20.5,
                      right: 20,
                      bottom: 81.0,
                    ),
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                          height: 46.0,
                          width: 150.0,
                          child: RaisedButton(
                            onPressed: () {
                              setState(() {
                                zumbaColor = true;
                                zumbaTextColor = true;
                                danceColor = false;
                                danceTextColor = false;
                              });
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              'Zumba/Aerobics',
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Rubik Regular',
                                color: zumbaTextColor
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                            color: zumbaColor
                                ? Colors.red.shade700
                                : Colors.grey.shade300,
                            elevation: 5.0,
                          ),
                        ),
                        SizedBox(
                          width: 34.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 30.0),
                          child: SizedBox(
                            height: 46.0,
                            width: 150.0,
                            child: RaisedButton(
                              onPressed: () {
                                setState(() {
                                  zumbaColor = false;
                                  zumbaTextColor = false;
                                  danceColor = true;
                                  danceTextColor = true;
                                });
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text(
                                'Dance',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'Rubik Regular',
                                  color: danceTextColor
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                              color: danceColor
                                  ? Colors.red.shade700
                                  : Colors.grey.shade300,
                              elevation: 5.0,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 95.0,
                left: 0.0,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Visibility(
                      visible: zumbaColor,
                      child: ZumbaPlans(),
                    ),
                    Visibility(
                      visible: danceColor,
                      child: DancePlans(),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
