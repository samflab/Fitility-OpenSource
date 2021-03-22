import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fitility/screens/diet_veg.dart';
import 'package:fitility/screens/plans_dance.dart';
import 'package:fitility/services/transition.dart';
import 'package:fitility/widgets/appbar.dart';
import 'package:fitility/widgets/bottomNavigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PlansZumba extends StatefulWidget {
  @override
  _PlansZumbaState createState() => _PlansZumbaState();
}

class _PlansZumbaState extends State<PlansZumba> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(context),
      bottomNavigationBar: customBottomNavigationBar(context),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(top: 20.0, bottom: 5.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Categorycardplans(iszumba: true),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        FadeRoute(
                          page: PlansDance(),
                        ),
                      );
                    },
                    child: Categorycardplans(iszumba: false),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              MainTitleText(
                text: "Zumba/Aerobics",
              ),
              SizedBox(height: 8.0),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25.0),
                height: 2.0,
                color: Color(0xffdc2126),
              ),
              SizedBox(height: 10.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 25.0),
                  Column(
                    children: [
                      Text(
                        "CALORIES",
                        style: TextStyle(
                          color: Color(0xffdc2126),
                          fontSize: 15.0,
                          fontFamily: 'Rubik' 'Regular',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 6.0),
                      Text(
                        "700+",
                        style: TextStyle(
                          color: Color(0xff181818),
                          fontSize: 14.0,
                          fontFamily: 'Rubik' 'Regular',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 35.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "INTENSITY",
                        style: TextStyle(
                          color: Color(0xffdc2126),
                          fontSize: 15.0,
                          fontFamily: 'Rubik' 'Regular',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Image.asset(
                        'images/circles.png',
                        height: 10.0,
                        width: 90.0,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "BENEFIT",
                      style: TextStyle(
                        color: Color(0xffdc2126),
                        fontSize: 15.0,
                        fontFamily: 'Rubik' 'Regular',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      "Calorie Burning | Stress Reduction | Stamina | Endurance",
                      style: TextStyle(
                        color: Color(0xff181818),
                        fontSize: 14.0,
                        fontFamily: 'Rubik' 'Regular',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              MainTitleText(
                text: "Zumba/Aerobics Session",
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Begin",
                      style: TextStyle(
                        color: Color(0xff181818),
                        fontSize: 13.0,
                        fontFamily: 'Rubik' 'Regular',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Image.asset(
                      'images/bar1.png',
                      height: 10.0,
                      width: MediaQuery.of(context).size.width * (6 / 10),
                    ),
                    Text(
                      "55 min",
                      style: TextStyle(
                        color: Color(0xff181818),
                        fontSize: 13.0,
                        fontFamily: 'Rubik' 'Regular',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              ZumbaSessionTime(
                image: 'images/circle1.png',
                time: "8 Mins",
                work: "Warm up",
              ),
              ZumbaSessionTime(
                image: 'images/circle2.png',
                time: "15 Mins",
                work: "Routine Dance Workout",
              ),
              ZumbaSessionTime(
                image: 'images/circle3.png',
                time: "20 Mins",
                work: "Main Workout",
              ),
              ZumbaSessionTime(
                image: 'images/circle4.png',
                time: "7 Mins",
                work: "Stretching",
              ),
              ZumbaSessionTime(
                image: 'images/circle1.png',
                time: "5 Mins",
                work: "Cooldown",
              ),
              SizedBox(height: 10.0),
              MainTitleText(
                text: "Membership",
              ),
              SizedBox(height: 10.0),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30.0),
                padding: EdgeInsets.all(10.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xFFECEFF1).withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "2 classes/week",
                        style: TextStyle(
                          color: Color(0xff181818),
                          fontSize: 15.0,
                          fontFamily: 'Rubik Medium' 'Regular',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    StreamBuilder(
                      stream: Firestore.instance
                          .collection('plan_zumba')
                          .document('2classes1month')
                          .snapshots(),
                      builder: (BuildContext context, snapshot) {
                        if (snapshot.hasError) {
                          return new Column(
                            children: [
                              SvgPicture.asset('error.svg'),
                              Center(
                                child: Text(
                                  'Something went wrong.\n Please try again later.',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Rubik',
                                    fontSize: 16.0,
                                  ),
                                ),
                              )
                            ],
                          );
                        }
                        switch (snapshot.connectionState) {
                          case ConnectionState.waiting:
                            return Center(
                                child: new CupertinoActivityIndicator());
                          default:
                            return MermershipPlan(
                              duration: snapshot.data['duration'],
                              price: snapshot.data['price'],
                            );
                        }
                      },
                    ),
                    StreamBuilder(
                      stream: Firestore.instance
                          .collection('plan_zumba')
                          .document('2classes3month')
                          .snapshots(),
                      builder: (BuildContext context, snapshot) {
                        if (snapshot.hasError) {
                          return new Column(
                            children: [
                              SvgPicture.asset('error.svg'),
                              Center(
                                child: Text(
                                  'Something went wrong.\n Please try again later.',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Rubik',
                                    fontSize: 16.0,
                                  ),
                                ),
                              )
                            ],
                          );
                        }
                        switch (snapshot.connectionState) {
                          case ConnectionState.waiting:
                            return Center(
                                child: new CupertinoActivityIndicator());
                          default:
                            return MermershipPlan(
                              duration: snapshot.data['duration'],
                              price: snapshot.data['price'],
                            );
                        }
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.0),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30.0),
                padding: EdgeInsets.all(10.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xFFECEFF1).withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "3 classes/week",
                        style: TextStyle(
                          color: Color(0xff181818),
                          fontSize: 15.0,
                          fontFamily: 'Rubik Medium' 'Regular',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    StreamBuilder(
                      stream: Firestore.instance
                          .collection('plan_zumba')
                          .document('3classes1month')
                          .snapshots(),
                      builder: (BuildContext context, snapshot) {
                        if (snapshot.hasError) {
                          return new Column(
                            children: [
                              SvgPicture.asset('error.svg'),
                              Center(
                                child: Text(
                                  'Something went wrong.\n Please try again later.',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Rubik',
                                    fontSize: 16.0,
                                  ),
                                ),
                              )
                            ],
                          );
                        }
                        switch (snapshot.connectionState) {
                          case ConnectionState.waiting:
                            return Center(
                                child: new CupertinoActivityIndicator());
                          default:
                            return MermershipPlan(
                              duration: snapshot.data['duration'],
                              price: snapshot.data['price'],
                            );
                        }
                      },
                    ),
                    StreamBuilder(
                      stream: Firestore.instance
                          .collection('plan_zumba')
                          .document('3classes3month')
                          .snapshots(),
                      builder: (BuildContext context, snapshot) {
                        if (snapshot.hasError) {
                          return new Column(
                            children: [
                              SvgPicture.asset('error.svg'),
                              Center(
                                child: Text(
                                  'Something went wrong.\n Please try again later.',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Rubik',
                                    fontSize: 16.0,
                                  ),
                                ),
                              )
                            ],
                          );
                        }
                        switch (snapshot.connectionState) {
                          case ConnectionState.waiting:
                            return Center(
                                child: new CupertinoActivityIndicator());
                          default:
                            return MermershipPlan(
                              duration: snapshot.data['duration'],
                              price: snapshot.data['price'],
                            );
                        }
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.0),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30.0),
                padding: EdgeInsets.all(10.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xFFECEFF1).withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "5 classes/week",
                        style: TextStyle(
                          color: Color(0xff181818),
                          fontSize: 15.0,
                          fontFamily: 'Rubik Medium' 'Regular',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    StreamBuilder(
                      stream: Firestore.instance
                          .collection('plan_zumba')
                          .document('5classes1Month')
                          .snapshots(),
                      builder: (BuildContext context, snapshot) {
                        if (snapshot.hasError) {
                          return new Column(
                            children: [
                              SvgPicture.asset('error.svg'),
                              Center(
                                child: Text(
                                  'Something went wrong.\n Please try again later.',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Rubik',
                                    fontSize: 16.0,
                                  ),
                                ),
                              )
                            ],
                          );
                        }
                        switch (snapshot.connectionState) {
                          case ConnectionState.waiting:
                            return Center(
                                child: new CupertinoActivityIndicator());
                          default:
                            return MermershipPlan(
                              duration: snapshot.data['duration'],
                              price: snapshot.data['price'],
                            );
                        }
                      },
                    ),
                    StreamBuilder(
                      stream: Firestore.instance
                          .collection('plan_zumba')
                          .document('5classes3month')
                          .snapshots(),
                      builder: (BuildContext context, snapshot) {
                        if (snapshot.hasError) {
                          return new Column(
                            children: [
                              SvgPicture.asset('error.svg'),
                              Center(
                                child: Text(
                                  'Something went wrong.\n Please try again later.',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Rubik',
                                    fontSize: 16.0,
                                  ),
                                ),
                              )
                            ],
                          );
                        }
                        switch (snapshot.connectionState) {
                          case ConnectionState.waiting:
                            return Center(
                                child: new CupertinoActivityIndicator());
                          default:
                            return MermershipPlan(
                              duration: snapshot.data['duration'],
                              price: snapshot.data['price'],
                            );
                        }
                      },
                    ),
                    StreamBuilder(
                      stream: Firestore.instance
                          .collection('plan_zumba')
                          .document('5classes6month')
                          .snapshots(),
                      builder: (BuildContext context, snapshot) {
                        if (snapshot.hasError) {
                          return new Column(
                            children: [
                              SvgPicture.asset('error.svg'),
                              Center(
                                child: Text(
                                  'Something went wrong.\n Please try again later.',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Rubik',
                                    fontSize: 16.0,
                                  ),
                                ),
                              )
                            ],
                          );
                        }
                        switch (snapshot.connectionState) {
                          case ConnectionState.waiting:
                            return Center(
                                child: new CupertinoActivityIndicator());
                          default:
                            return MermershipPlan(
                              duration: snapshot.data['duration'],
                              price: snapshot.data['price'],
                            );
                        }
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.0),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30.0),
                padding: EdgeInsets.all(10.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xFFECEFF1).withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "7 classes/week",
                        style: TextStyle(
                          color: Color(0xff181818),
                          fontSize: 15.0,
                          fontFamily: 'Rubik Medium' 'Regular',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    StreamBuilder(
                      stream: Firestore.instance
                          .collection('plan_zumba')
                          .document('7classes1month')
                          .snapshots(),
                      builder: (BuildContext context, snapshot) {
                        if (snapshot.hasError) {
                          return new Column(
                            children: [
                              SvgPicture.asset('error.svg'),
                              Center(
                                child: Text(
                                  'Something went wrong.\n Please try again later.',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Rubik',
                                    fontSize: 16.0,
                                  ),
                                ),
                              )
                            ],
                          );
                        }
                        switch (snapshot.connectionState) {
                          case ConnectionState.waiting:
                            return Center(
                                child: new CupertinoActivityIndicator());
                          default:
                            return MermershipPlan(
                              duration: snapshot.data['duration'],
                              price: snapshot.data['price'],
                            );
                        }
                      },
                    ),
                    StreamBuilder(
                      stream: Firestore.instance
                          .collection('plan_zumba')
                          .document('7classes3month')
                          .snapshots(),
                      builder: (BuildContext context, snapshot) {
                        if (snapshot.hasError) {
                          return new Column(
                            children: [
                              SvgPicture.asset('error.svg'),
                              Center(
                                child: Text(
                                  'Something went wrong.\n Please try again later.',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Rubik',
                                    fontSize: 16.0,
                                  ),
                                ),
                              )
                            ],
                          );
                        }
                        switch (snapshot.connectionState) {
                          case ConnectionState.waiting:
                            return Center(
                                child: new CupertinoActivityIndicator());
                          default:
                            return MermershipPlan(
                              duration: snapshot.data['duration'],
                              price: snapshot.data['price'],
                            );
                        }
                      },
                    ),
                    StreamBuilder(
                      stream: Firestore.instance
                          .collection('plan_zumba')
                          .document('7classes6month')
                          .snapshots(),
                      builder: (BuildContext context, snapshot) {
                        if (snapshot.hasError) {
                          return new Column(
                            children: [
                              SvgPicture.asset('error.svg'),
                              Center(
                                child: Text(
                                  'Something went wrong.\n Please try again later.',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Rubik',
                                    fontSize: 16.0,
                                  ),
                                ),
                              )
                            ],
                          );
                        }
                        switch (snapshot.connectionState) {
                          case ConnectionState.waiting:
                            return Center(
                                child: new CupertinoActivityIndicator());
                          default:
                            return MermershipPlan(
                              duration: snapshot.data['duration'],
                              price: snapshot.data['price'],
                            );
                        }
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.0),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30.0),
                padding: EdgeInsets.all(10.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xFFECEFF1).withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Unlimited Classes",
                        style: TextStyle(
                          color: Color(0xff181818),
                          fontSize: 15.0,
                          fontFamily: 'Rubik Medium' 'Regular',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    StreamBuilder(
                      stream: Firestore.instance
                          .collection('plan_zumba')
                          .document('unlimited')
                          .snapshots(),
                      builder: (BuildContext context, snapshot) {
                        if (snapshot.hasError) {
                          return new Column(
                            children: [
                              SvgPicture.asset('error.svg'),
                              Center(
                                child: Text(
                                  'Something went wrong.\n Please try again later.',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Rubik',
                                    fontSize: 16.0,
                                  ),
                                ),
                              )
                            ],
                          );
                        }
                        switch (snapshot.connectionState) {
                          case ConnectionState.waiting:
                            return Center(
                                child: new CupertinoActivityIndicator());
                          default:
                            return MermershipPlan(
                              duration: snapshot.data['duration'],
                              price: snapshot.data['price'],
                            );
                        }
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                color: Color(0xffeceff1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Note",
                      style: TextStyle(
                        color: Color(0xff181818),
                        fontFamily: 'Rubik' 'Regular',
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      "1. No prior dance experience is required to attend the class.\n \n2. This is a no-judgement zone. You walk in concerned but you walk out stress free.\n \n3. Please carry a pair of clean workout shoes, water bottle, hand towel and be in comfortable clothes for the class.",
                      style: TextStyle(
                        color: Color(0xff181818),
                        fontFamily: 'Rubik' 'Regular',
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MermershipPlan extends StatelessWidget {
  final String duration, price;
  MermershipPlan({this.duration, this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            duration,
            style: TextStyle(
              color: Color(0xff181818),
              fontSize: 14.0,
              fontFamily: 'Rubik' 'Regular',
              fontWeight: FontWeight.w400,
            ),
          ),
          Container(
            height: 25.0,
            width: 120,
            decoration: BoxDecoration(
              color: Color(0xffdc2126),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Center(
              child: Text(
                price,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontFamily: 'Rubik' 'Regular',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ZumbaSessionTime extends StatelessWidget {
  final String image, time, work;
  ZumbaSessionTime({this.image, this.time, this.work});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
      child: Row(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            width: 25.0,
            child: Image.asset(image, height: 10.0),
          ),
          Container(
            alignment: Alignment.centerLeft,
            width: 60.0,
            child: Text(
              time,
              style: TextStyle(
                color: Color(0xff181818),
                fontSize: 11.0,
                fontFamily: 'Rubik' 'Regular',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              work,
              style: TextStyle(
                color: Color(0xff181818),
                fontSize: 11.0,
                fontFamily: 'Rubik' 'Regular',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Categorycardplans extends StatelessWidget {
  final bool iszumba;
  Categorycardplans({this.iszumba});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46.0,
      width: 140.0,
      decoration: BoxDecoration(
        color: iszumba ? Color(0xffdc2126) : Color(0xffeceff1),
        borderRadius: BorderRadius.circular(5.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.7),
            blurRadius: 6.0,
            offset: Offset(0, 3.0),
          ),
        ],
      ),
      child: Center(
        child: Text(
          iszumba ? "Zumba/Aerobics" : "Dance",
          style: TextStyle(
            color: iszumba ? Colors.white : Color(0xff181818),
            fontSize: 14.0,
            fontFamily: 'Rubik' 'Regular',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
