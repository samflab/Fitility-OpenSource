import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ZumbaPlans extends StatefulWidget {
  @override
  _ZumbaPlansState createState() => _ZumbaPlansState();
}

class _ZumbaPlansState extends State<ZumbaPlans> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset(
              'images/bullet.png',
              height: 5.0,
              width: 15.0,
            ),
            Text(
              '  Zumba/Aerobics',
              style: TextStyle(
                fontFamily: 'Rubik',
                fontSize: 25.0,
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 25.0,
            right: 30.0,
            top: 15.0,
          ),
          child: Container(
            height: 1.5,
            width: 340.0,
            color: Colors.red.shade700,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 25.0,
            top: 15.0,
          ),
          child: Row(
            children: [
              Text(
                'CALORIES',
                style: TextStyle(
                  fontFamily: 'Rubik',
                  fontSize: 15.0,
                  color: Colors.red.shade700,
                ),
              ),
              SizedBox(
                width: 51.0,
              ),
              Text(
                'INTENSITY',
                style: TextStyle(
                  fontFamily: 'Rubik',
                  fontSize: 15.0,
                  color: Colors.red.shade700,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 44.0, top: 5.0),
          child: Row(
            children: [
              Text(
                '700+',
                style: TextStyle(
                  fontFamily: 'Rubik',
                  fontSize: 14.0,
                ),
              ),
              SizedBox(
                width: 63.0,
              ),
              Image.asset('images/circles.png', height: 10.0, width: 90.0),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 25.0,
            top: 16.0,
          ),
          child: Row(
            children: [
              Text(
                'BENEFIT',
                style: TextStyle(
                  fontFamily: 'Rubik',
                  fontSize: 15.0,
                  color: Colors.red.shade700,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 25.0,
            top: 5.0,
          ),
          child: Row(
            children: [
              Text(
                'Calorie Burning | Stress Reduction | Stamina | Endurance',
                style: TextStyle(
                  fontFamily: 'Rubik',
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Row(
            children: [
              Image.asset(
                'images/bullet.png',
                height: 5.0,
                width: 15.0,
              ),
              Text(
                '  Zumba/Aerobics',
                style: TextStyle(
                  fontFamily: 'Rubik Regular',
                  fontSize: 25.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                ' Session',
                style: TextStyle(
                  fontFamily: 'Rubik Regular',
                  fontSize: 25.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            top: 10.0,
          ),
          child: Row(
            children: [
              Text('Begin '),
              Image.asset(
                'images/bar1.png',
                height: 5.0,
                width: 250.0,
              ),
              Text(' 55 min'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 25.0,
            top: 18.0,
          ),
          child: Row(
            children: [
              Image.asset(
                'images/circle1.png',
                height: 10.0,
                width: 10.0,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text('8 Mins'),
              SizedBox(
                width: 26.0,
              ),
              Text('Warm up'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 8.0,
            left: 25.0,
          ),
          child: Row(
            children: [
              Image.asset(
                'images/circle2.png',
                height: 10.0,
                width: 10.0,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text('15 Mins'),
              SizedBox(
                width: 20.0,
              ),
              Text('Routine Dance Workout'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 8.0,
            left: 25.0,
          ),
          child: Row(
            children: [
              Image.asset(
                'images/circle3.png',
                height: 10.0,
                width: 10.0,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text('20 Mins'),
              SizedBox(
                width: 20.0,
              ),
              Text('Main Workout'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 8.0,
            left: 25.0,
          ),
          child: Row(
            children: [
              Image.asset(
                'images/circle4.png',
                height: 10.0,
                width: 10.0,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text('7 Mins'),
              SizedBox(
                width: 26.0,
              ),
              Text('Stretching'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 8.0,
            left: 25.0,
          ),
          child: Row(
            children: [
              Image.asset(
                'images/circle1.png',
                height: 10.0,
                width: 10.0,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text('5 Mins'),
              SizedBox(
                width: 26.0,
              ),
              Text('Cooldown'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 29.0,
          ),
          child: Row(
            children: [
              Image.asset(
                'images/bullet.png',
                height: 5.0,
                width: 15.0,
              ),
              Text(
                '  Membership',
                style: TextStyle(
                  fontFamily: 'Rubik Regular',
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 30.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade300,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '2 classes/week',
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 17.0, right: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '1 Month',
                          style: TextStyle(
                            fontFamily: 'Rubik',
                            fontSize: 14.0,
                          ),
                        ),
                        StreamBuilder(
                            stream: Firestore.instance
                                .collection('plans')
                                .document('2classes1month')
                                .snapshots(),
                            builder: (BuildContext context, snapshot) {
                              if (snapshot.hasError) {
                                return new Text('Error:${snapshot.error}');
                              }
                              switch (snapshot.connectionState) {
                                case ConnectionState.waiting:
                                  return new Text('Loading..');
                                default:
                                  return Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.red.shade700,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 34.0,
                                        right: 33.0,
                                        top: 4.0,
                                        bottom: 4.0,
                                      ),
                                      child: Text(
                                        snapshot.data['price'],
                                        style: TextStyle(
                                          fontFamily: 'Rubik',
                                          color: Colors.white,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  );
                              }
                            }),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 14.0, right: 10.0, bottom: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '3 Months',
                          style: TextStyle(
                            fontFamily: 'Rubik',
                            fontSize: 14.0,
                          ),
                        ),
                        StreamBuilder(
                            stream: Firestore.instance
                                .collection('plans')
                                .document('2classes3month')
                                .snapshots(),
                            builder: (BuildContext context, snapshot) {
                              if (snapshot.hasError) {
                                return new Text('Error:${snapshot.error}');
                              }
                              switch (snapshot.connectionState) {
                                case ConnectionState.waiting:
                                  return new Text('Loading..');
                                default:
                                  return Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.red.shade700,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 34.0,
                                        right: 33.0,
                                        top: 4.0,
                                        bottom: 4.0,
                                      ),
                                      child: Text(
                                        snapshot.data['price'],
                                        style: TextStyle(
                                          fontFamily: 'Rubik',
                                          color: Colors.white,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  );
                              }
                            }),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 30.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade300,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '3 classes/week',
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 17.0, right: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '1 Month',
                          style: TextStyle(
                            fontFamily: 'Rubik',
                            fontSize: 14.0,
                          ),
                        ),
                        StreamBuilder(
                            stream: Firestore.instance
                                .collection('plans')
                                .document('3classes1month')
                                .snapshots(),
                            builder: (BuildContext context, snapshot) {
                              if (snapshot.hasError) {
                                return new Text('Error:${snapshot.error}');
                              }
                              switch (snapshot.connectionState) {
                                case ConnectionState.waiting:
                                  return new Text('Loading..');
                                default:
                                  return Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.red.shade700,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 34.0,
                                        right: 33.0,
                                        top: 4.0,
                                        bottom: 4.0,
                                      ),
                                      child: Text(
                                        snapshot.data['price'],
                                        style: TextStyle(
                                          fontFamily: 'Rubik',
                                          color: Colors.white,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  );
                              }
                            }),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 14.0, right: 10.0, bottom: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '3 Months',
                          style: TextStyle(
                            fontFamily: 'Rubik',
                            fontSize: 14.0,
                          ),
                        ),
                        StreamBuilder(
                            stream: Firestore.instance
                                .collection('plans')
                                .document('3classes3month')
                                .snapshots(),
                            builder: (BuildContext context, snapshot) {
                              if (snapshot.hasError) {
                                return new Text('Error:${snapshot.error}');
                              }
                              switch (snapshot.connectionState) {
                                case ConnectionState.waiting:
                                  return new Text('Loading..');
                                default:
                                  return Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.red.shade700,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 34.0,
                                        right: 33.0,
                                        top: 4.0,
                                        bottom: 4.0,
                                      ),
                                      child: Text(
                                        snapshot.data['price'],
                                        style: TextStyle(
                                          fontFamily: 'Rubik',
                                          color: Colors.white,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  );
                              }
                            }),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 30.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade300,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '5 classes/week',
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 17.0, right: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '1 Month',
                          style: TextStyle(
                            fontFamily: 'Rubik',
                            fontSize: 14.0,
                          ),
                        ),
                        StreamBuilder(
                            stream: Firestore.instance
                                .collection('plans')
                                .document('5classes1month')
                                .snapshots(),
                            builder: (BuildContext context, snapshot) {
                              if (snapshot.hasError) {
                                return new Text('Error:${snapshot.error}');
                              }
                              switch (snapshot.connectionState) {
                                case ConnectionState.waiting:
                                  return new Text('Loading..');
                                default:
                                  return Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.red.shade700,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 34.0,
                                        right: 33.0,
                                        top: 4.0,
                                        bottom: 4.0,
                                      ),
                                      child: Text(
                                        snapshot.data['price'],
                                        style: TextStyle(
                                          fontFamily: 'Rubik',
                                          color: Colors.white,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  );
                              }
                            }),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 14.0, right: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '3 Months',
                          style: TextStyle(
                            fontFamily: 'Rubik',
                            fontSize: 14.0,
                          ),
                        ),
                        StreamBuilder(
                            stream: Firestore.instance
                                .collection('plans')
                                .document('5classes3month')
                                .snapshots(),
                            builder: (BuildContext context, snapshot) {
                              if (snapshot.hasError) {
                                return new Text('Error:${snapshot.error}');
                              }
                              switch (snapshot.connectionState) {
                                case ConnectionState.waiting:
                                  return new Text('Loading..');
                                default:
                                  return Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.red.shade700,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 34.0,
                                        right: 33.0,
                                        top: 4.0,
                                        bottom: 4.0,
                                      ),
                                      child: Text(
                                        snapshot.data['price'],
                                        style: TextStyle(
                                          fontFamily: 'Rubik',
                                          color: Colors.white,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  );
                              }
                            }),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 14.0, right: 10.0, bottom: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '6 Months',
                          style: TextStyle(
                            fontFamily: 'Rubik',
                            fontSize: 14.0,
                          ),
                        ),
                        StreamBuilder(
                            stream: Firestore.instance
                                .collection('plans')
                                .document('5classes6month')
                                .snapshots(),
                            builder: (BuildContext context, snapshot) {
                              if (snapshot.hasError) {
                                return new Text('Error:${snapshot.error}');
                              }
                              switch (snapshot.connectionState) {
                                case ConnectionState.waiting:
                                  return new Text('Loading..');
                                default:
                                  return Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.red.shade700,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 34.0,
                                        right: 33.0,
                                        top: 4.0,
                                        bottom: 4.0,
                                      ),
                                      child: Text(
                                        snapshot.data['price'],
                                        style: TextStyle(
                                          fontFamily: 'Rubik',
                                          color: Colors.white,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  );
                              }
                            }),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 15.0),
        Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 30.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade300,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '7 classes/week',
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 17.0, right: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '1 Month',
                          style: TextStyle(
                            fontFamily: 'Rubik',
                            fontSize: 14.0,
                          ),
                        ),
                        StreamBuilder(
                            stream: Firestore.instance
                                .collection('plans')
                                .document('7classes1month')
                                .snapshots(),
                            builder: (BuildContext context, snapshot) {
                              if (snapshot.hasError) {
                                return new Text('Error:${snapshot.error}');
                              }
                              switch (snapshot.connectionState) {
                                case ConnectionState.waiting:
                                  return new Text('Loading..');
                                default:
                                  return Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.red.shade700,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 34.0,
                                        right: 33.0,
                                        top: 4.0,
                                        bottom: 4.0,
                                      ),
                                      child: Text(
                                        snapshot.data['price'],
                                        style: TextStyle(
                                          fontFamily: 'Rubik',
                                          color: Colors.white,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  );
                              }
                            }),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 14.0, right: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '3 Months',
                          style: TextStyle(
                            fontFamily: 'Rubik',
                            fontSize: 14.0,
                          ),
                        ),
                        StreamBuilder(
                            stream: Firestore.instance
                                .collection('plans')
                                .document('7classes3month')
                                .snapshots(),
                            builder: (BuildContext context, snapshot) {
                              if (snapshot.hasError) {
                                return new Text('Error:${snapshot.error}');
                              }
                              switch (snapshot.connectionState) {
                                case ConnectionState.waiting:
                                  return new Text('Loading..');
                                default:
                                  return Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.red.shade700,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 34.0,
                                        right: 33.0,
                                        top: 4.0,
                                        bottom: 4.0,
                                      ),
                                      child: Text(
                                        snapshot.data['price'],
                                        style: TextStyle(
                                          fontFamily: 'Rubik',
                                          color: Colors.white,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  );
                              }
                            }),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 14.0, right: 10.0, bottom: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '6 Months',
                          style: TextStyle(
                            fontFamily: 'Rubik',
                            fontSize: 14.0,
                          ),
                        ),
                        StreamBuilder(
                            stream: Firestore.instance
                                .collection('plans')
                                .document('7classes6month')
                                .snapshots(),
                            builder: (BuildContext context, snapshot) {
                              if (snapshot.hasError) {
                                return new Text('Error:${snapshot.error}');
                              }
                              switch (snapshot.connectionState) {
                                case ConnectionState.waiting:
                                  return new Text('Loading..');
                                default:
                                  return Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.red.shade700,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 31.0,
                                        right: 33.0,
                                        top: 4.0,
                                        bottom: 4.0,
                                      ),
                                      child: Text(
                                        snapshot.data['price'],
                                        style: TextStyle(
                                          fontFamily: 'Rubik',
                                          color: Colors.white,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  );
                              }
                            }),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 15.0),
        Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 30.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade300,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Unlimited Classes',
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 17.0, right: 10.0, bottom: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '12 Months',
                          style: TextStyle(
                            fontFamily: 'Rubik',
                            fontSize: 14.0,
                          ),
                        ),
                        StreamBuilder(
                            stream: Firestore.instance
                                .collection('plans')
                                .document('Unlimited Classes')
                                .snapshots(),
                            builder: (BuildContext context, snapshot) {
                              if (snapshot.hasError) {
                                return new Text('Error:${snapshot.error}');
                              }
                              switch (snapshot.connectionState) {
                                case ConnectionState.waiting:
                                  return new Text('Loading..');
                                default:
                                  return Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.red.shade700,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 34.0,
                                        right: 33.0,
                                        top: 4.0,
                                        bottom: 4.0,
                                      ),
                                      child: Text(
                                        snapshot.data['price'],
                                        style: TextStyle(
                                          fontFamily: 'Rubik',
                                          color: Colors.white,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  );
                              }
                            }),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 20.0),
        Container(
          decoration: BoxDecoration(color: Colors.grey.shade300),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'NOTE',
                  style: TextStyle(
                    fontFamily: 'Rubik',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  '1. No prior dance experience is required to attend the class.',
                  style: TextStyle(
                    fontFamily: 'Rubik Regular',
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  '2. This is a no-judgement zone. You walk in concerned but you walk out stress free.',
                  style: TextStyle(
                    fontFamily: 'Rubik Regular',
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  '3. Please carry a pair of clean workout shoes, water bottle, hand towel and be in comfortable clothes for the class.',
                  style: TextStyle(
                    fontFamily: 'Rubik Regular',
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 5.0,
        )
      ],
    );
  }
}
