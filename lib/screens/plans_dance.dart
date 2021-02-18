import 'package:fitility/screens/diet_veg.dart';
import 'package:fitility/screens/plans_zumba.dart';
import 'package:fitility/services/transition.dart';
import 'package:fitility/widgets/appbar.dart';
import 'package:fitility/widgets/bottomNavigation.dart';
import 'package:flutter/material.dart';

class PlansDance extends StatefulWidget {
  @override
  _PlansDanceState createState() => _PlansDanceState();
}

class _PlansDanceState extends State<PlansDance> {
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
                  GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          FadeRoute(
                            page: PlansZumba(),
                          ),
                        );
                      },
                      child: Categorycardplans1(isDance: false)),
                  Categorycardplans1(isDance: true),
                ],
              ),
              SizedBox(height: 20.0),
              MainTitleText(
                text: "Dance",
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
                        "500+",
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
                        'images/circles1.png',
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
                      "Calorie Burning | Stress Reduction | Flexibility",
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
                text: "Dance Session",
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
                      'images/bar2.png',
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
                image: 'images/circle3.png',
                time: "42 Mins",
                work: "Choreography",
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
                  color: Color(0xffceeff1).withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Bollywood Dance (8 Classes/month)",
                        style: TextStyle(
                          color: Color(0xff181818),
                          fontSize: 15.0,
                          fontFamily: 'Rubik Medium' 'Regular',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    MermershipPlan(
                      duration: "1 Month",
                      price: "1600 INR",
                    ),
                    MermershipPlan(
                      duration: "3 Months",
                      price: "4200 INR",
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
                  color: Color(0xffceeff1).withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Contemporary (8 Classes/month)",
                        style: TextStyle(
                          color: Color(0xff181818),
                          fontSize: 15.0,
                          fontFamily: 'Rubik Medium' 'Regular',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    MermershipPlan(
                      duration: "1 Month",
                      price: "1600 INR",
                    ),
                    MermershipPlan(
                      duration: "3 Months",
                      price: "4200 INR",
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
                  color: Color(0xffceeff1).withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Belly Dance (8 Classes/month)",
                        style: TextStyle(
                          color: Color(0xff181818),
                          fontSize: 15.0,
                          fontFamily: 'Rubik Medium' 'Regular',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    MermershipPlan(
                      duration: "1 Month",
                      price: "1600 INR",
                    ),
                    MermershipPlan(
                      duration: "3 Months",
                      price: "4200 INR",
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

class Categorycardplans1 extends StatelessWidget {
  final bool isDance;
  Categorycardplans1({this.isDance});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46.0,
      width: 140.0,
      decoration: BoxDecoration(
        color: isDance ? Color(0xffdc2126) : Color(0xffeceff1),
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
          isDance ? "Dance" : "Zumba/Aerobics",
          style: TextStyle(
            color: isDance ? Colors.white : Color(0xff181818),
            fontSize: 14.0,
            fontFamily: 'Rubik' 'Regular',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
