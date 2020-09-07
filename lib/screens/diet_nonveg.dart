import 'package:flutter/material.dart';

class NonVegDiet extends StatefulWidget {
  @override
  _NonVegDietState createState() => _NonVegDietState();
}

class _NonVegDietState extends State<NonVegDiet> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Image.asset(
                  'images/bullet.png',
                  height: 5.0,
                  width: 15.0,
                ),
                Text(
                  '  Daily Diet Plan',
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
                top: 10.5,
              ),
              child: Container(
                height: 1.5,
                width: 340.0,
                color: Colors.red.shade700,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 25.0, right: 30.0, top: 10.5),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey.shade50,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueGrey.shade100,
                      blurRadius: 2.0, // soften the shadow
                      spreadRadius: 0.5, //extend the shadow
                      offset: Offset(
                        -1.0, // Move to right 10  horizontally
                        5.0,
                        // Move to bottom 10 Vertically
                      ),
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 15),
                  child: Row(
                    children: [
                      Image.asset(
                        'images/lime.png',
                        width: 39.7,
                        height: 39.8,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15.22,
                          bottom: 10.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Early Morning',
                              style: TextStyle(
                                fontFamily: 'Rubik',
                                fontSize: 15.0,
                                color: Colors.red.shade700,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'Lime water (lukewarm) with \nHoney/Amla Juice/ Aloe Vera Juice',
                              style: TextStyle(
                                fontFamily: 'Rubik',
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 25.0, right: 30.0, top: 10.5),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey.shade50,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueGrey.shade100,
                      blurRadius: 2.0, // soften the shadow
                      spreadRadius: 0.5, //extend the shadow
                      offset: Offset(
                        -1.0, // Move to right 10  horizontally
                        5.0,
                        // Move to bottom 10 Vertically
                      ),
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 15),
                  child: Row(
                    children: [
                      Image.asset(
                        'images/breakfast.png',
                        width: 39.7,
                        height: 39.8,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15.22,
                          bottom: 10.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Breakfast\n(within 1/2 hour of waking up)',
                              style: TextStyle(
                                fontFamily: 'Rubik',
                                fontSize: 15.0,
                                color: Colors.red.shade700,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'High fibre cereals - Oats,2 slices of\nmulti grain bread, wheat flakes + high\nprotein milk/curd/egg whites + 1 fruit',
                              style: TextStyle(
                                fontFamily: 'Rubik',
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 25.0, right: 30.0, top: 10.5),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey.shade50,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueGrey.shade100,
                      blurRadius: 2.0, // soften the shadow
                      spreadRadius: 0.5, //extend the shadow
                      offset: Offset(
                        -1.0, // Move to right 10  horizontally
                        5.0,
                        // Move to bottom 10 Vertically
                      ),
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 15),
                  child: Row(
                    children: [
                      Image.asset(
                        'images/cucumber.png',
                        width: 39.7,
                        height: 39.8,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15.22,
                          bottom: 10.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Mid-morning\n(Within 3 hours of breakpast)',
                              style: TextStyle(
                                fontFamily: 'Rubik',
                                fontSize: 15.0,
                                color: Colors.red.shade700,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              '1 fruit or cucumber with peel',
                              style: TextStyle(
                                fontFamily: 'Rubik',
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 25.0, right: 30.0, top: 10.5),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey.shade50,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueGrey.shade100,
                      blurRadius: 2.0, // soften the shadow
                      spreadRadius: 0.5, //extend the shadow
                      offset: Offset(
                        -1.0, // Move to right 10  horizontally
                        5.0,
                        // Move to bottom 10 Vertically
                      ),
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 15),
                  child: Row(
                    children: [
                      Image.asset(
                        'images/lunch.png',
                        width: 39.7,
                        height: 39.8,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15.22,
                          bottom: 10.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Lunch\n(Around 1-2 pm)',
                              style: TextStyle(
                                fontFamily: 'Rubik',
                                fontSize: 15.0,
                                color: Colors.red.shade700,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              '1 bowl of salad + 1 roti with a bowl\nof vegetables + 1/2 bowl of rice +\n1 bowl of dal',
                              style: TextStyle(
                                fontFamily: 'Rubik',
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 25.0, right: 30.0, top: 10.5),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey.shade50,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueGrey.shade100,
                      blurRadius: 2.0, // soften the shadow
                      spreadRadius: 0.5, //extend the shadow
                      offset: Offset(
                        -1.0, // Move to right 10  horizontally
                        5.0,
                        // Move to bottom 10 Vertically
                      ),
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 15),
                  child: Row(
                    children: [
                      Image.asset(
                        'images/crops.png',
                        width: 39.7,
                        height: 39.8,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15.22,
                          bottom: 10.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Post Lunch\n(1 hour post lunch)',
                              style: TextStyle(
                                fontFamily: 'Rubik',
                                fontSize: 15.0,
                                color: Colors.red.shade700,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              '1 glass of buttermilk + 1 fruit',
                              style: TextStyle(
                                fontFamily: 'Rubik',
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 25.0, right: 30.0, top: 10.5),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey.shade50,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueGrey.shade100,
                      blurRadius: 2.0, // soften the shadow
                      spreadRadius: 0.5, //extend the shadow
                      offset: Offset(
                        -1.0, // Move to right 10  horizontally
                        5.0,
                        // Move to bottom 10 Vertically
                      ),
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 15),
                  child: Row(
                    children: [
                      Image.asset(
                        'images/Flat.png',
                        width: 39.7,
                        height: 39.8,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15.22,
                          bottom: 10.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Evening Snacks\n(3 hours post lunch)',
                              style: TextStyle(
                                fontFamily: 'Rubik',
                                fontSize: 15.0,
                                color: Colors.red.shade700,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              '1 cup of green tea + 1 bowl of popcorn',
                              style: TextStyle(
                                fontFamily: 'Rubik',
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 25.0, right: 30.0, top: 10.5),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey.shade50,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueGrey.shade100,
                      blurRadius: 2.0, // soften the shadow
                      spreadRadius: 0.5, //extend the shadow
                      offset: Offset(
                        -1.0, // Move to right 10  horizontally
                        5.0,
                        // Move to bottom 10 Vertically
                      ),
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 15),
                  child: Row(
                    children: [
                      Image.asset(
                        'images/omelette.png',
                        width: 39.7,
                        height: 39.8,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15.22,
                          bottom: 10.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dinner\n(2-3 hours post evening snacks)',
                              style: TextStyle(
                                fontFamily: 'Rubik',
                                fontSize: 15.0,
                                color: Colors.red.shade700,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              '1 bowl of soup / 2 bowls of salad\n+ 1 roti with 50g of grilled chicken\n+ bowl of vegetables',
                              style: TextStyle(
                                fontFamily: 'Rubik',
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 25.0, right: 30.0, top: 10.5),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey.shade50,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueGrey.shade100,
                      blurRadius: 2.0, // soften the shadow
                      spreadRadius: 0.5, //extend the shadow
                      offset: Offset(
                        -1.0, // Move to right 10  horizontally
                        5.0,
                        // Move to bottom 10 Vertically
                      ),
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 15),
                  child: Row(
                    children: [
                      Image.asset(
                        'images/papaya.png',
                        width: 39.7,
                        height: 39.8,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15.22,
                          bottom: 10.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Post dinner\n(1/2 hour before bed)',
                              style: TextStyle(
                                fontFamily: 'Rubik',
                                fontSize: 15.0,
                                color: Colors.red.shade700,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              '1 fruit (preferably papaya)',
                              style: TextStyle(
                                fontFamily: 'Rubik',
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
        Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Image.asset(
                  'images/bullet.png',
                  height: 5.0,
                  width: 15.0,
                ),
                Text(
                  '  Water Intake',
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
                top: 10.5,
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
                right: 30.0,
                top: 10.5,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey.shade50,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueGrey.shade100,
                      blurRadius: 2.0, // soften the shadow
                      spreadRadius: 0.5, //extend the shadow
                      offset: Offset(
                        -1.0, // Move to right 10  horizontally
                        5.0,
                        // Move to bottom 10 Vertically
                      ),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10.0,
                    top: 15,
                    bottom: 10.8,
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'images/water.png',
                        width: 39.7,
                        height: 39.8,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15.22,
                          bottom: 10.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '8-10 glasses a day',
                              style: TextStyle(
                                fontFamily: 'Rubik',
                                fontSize: 15.0,
                                color: Colors.red.shade700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Image.asset(
                      'images/bullet.png',
                      height: 5.0,
                      width: 15.0,
                    ),
                    Text(
                      '  Workout Diet',
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
                    top: 10.5,
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
                    right: 30.0,
                    top: 10.5,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueGrey.shade50,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blueGrey.shade100,
                          blurRadius: 2.0, // soften the shadow
                          spreadRadius: 0.5, //extend the shadow
                          offset: Offset(
                            -1.0, // Move to right 10  horizontally
                            5.0,
                            // Move to bottom 10 Vertically
                          ),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10.0,
                        top: 15,
                        bottom: 10.8,
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'images/energy-bar.png',
                            width: 39.7,
                            height: 39.8,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 15.22,
                              bottom: 10.0,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Before workout(1/2 half hour before)',
                                  style: TextStyle(
                                    fontFamily: 'Rubik',
                                    fontSize: 15.0,
                                    color: Colors.red.shade700,
                                  ),
                                ),
                                SizedBox(height: 5.0),
                                Text(
                                  'Small snack of protein + carbohydrates\n(Energy bar/mixed nuts)',
                                  style: TextStyle(
                                    fontFamily: 'Rubik',
                                    fontSize: 14.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 25.0,
                    right: 30.0,
                    top: 10.5,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueGrey.shade50,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blueGrey.shade100,
                          blurRadius: 2.0, // soften the shadow
                          spreadRadius: 0.5, //extend the shadow
                          offset: Offset(
                            -1.0, // Move to right 10  horizontally
                            5.0,
                            // Move to bottom 10 Vertically
                          ),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10.0,
                        top: 15,
                        bottom: 10.8,
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'images/bottle.png',
                            width: 39.7,
                            height: 39.8,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 15.22,
                              bottom: 10.0,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'During workout',
                                  style: TextStyle(
                                    fontFamily: 'Rubik',
                                    fontSize: 15.0,
                                    color: Colors.red.shade700,
                                  ),
                                ),
                                SizedBox(height: 5.0),
                                Text(
                                  'Sip water (at room temperature) in\nevery break',
                                  style: TextStyle(
                                    fontFamily: 'Rubik',
                                    fontSize: 14.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 25.0,
                    right: 30.0,
                    top: 10.5,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueGrey.shade50,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blueGrey.shade100,
                          blurRadius: 2.0, // soften the shadow
                          spreadRadius: 0.5, //extend the shadow
                          offset: Offset(
                            -1.0, // Move to right 10  horizontally
                            5.0,
                            // Move to bottom 10 Vertically
                          ),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10.0,
                        top: 15,
                        bottom: 10.8,
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'images/banana.png',
                            width: 39.7,
                            height: 39.8,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 15.22,
                              bottom: 10.0,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'After workout',
                                  style: TextStyle(
                                    fontFamily: 'Rubik',
                                    fontSize: 15.0,
                                    color: Colors.red.shade700,
                                  ),
                                ),
                                SizedBox(height: 5.0),
                                Text(
                                  'Small snack of protein + carbohydrates\n(Energy bar/banana)',
                                  style: TextStyle(
                                    fontFamily: 'Rubik',
                                    fontSize: 14.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
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
                          'For those trying to lose weight, diets high in protein and fibre are likely to curb carvings and make you feel less hungry. If you feel week or faint, chances are that your diet is low in either carbohydrates or protein. Avoid foods / drinks with added artificial / processed sugar. Switch to honey and natural sugar.',
                          style: TextStyle(
                            fontFamily: 'Rubik Regular',
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
