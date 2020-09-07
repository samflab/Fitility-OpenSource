import 'package:fitility/screens/diet_nonveg.dart';
import 'package:fitility/screens/diet_veg.dart';
import 'package:flutter/material.dart';

class Diet extends StatefulWidget {
  @override
  _DietState createState() => _DietState();
}

class _DietState extends State<Diet> {
  bool vegColour = true;
  bool vegText = true;
  bool nonVegColour = false;
  bool nonVegText = false;
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
                                vegColour = true;
                                vegText = true;
                                nonVegColour = false;
                                nonVegText = false;
                              });
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              'Veg',
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Rubik Regular',
                                color: vegText ? Colors.white : Colors.black,
                              ),
                            ),
                            color: vegColour
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
                                  vegColour = false;
                                  vegText = false;
                                  nonVegColour = true;
                                  nonVegText = true;
                                });
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text(
                                'Non-Veg',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'Rubik Regular',
                                  color:
                                      nonVegText ? Colors.white : Colors.black,
                                ),
                              ),
                              color: nonVegColour
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
                      visible: vegColour,
                      child: VegDiet(),
                    ),
                    Visibility(
                      visible: nonVegColour,
                      child: NonVegDiet(),
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
