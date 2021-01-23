import 'package:flutter/material.dart';

Widget customBottomNavigationBar() {
  return Container(
    height: 60.0,
    color: Colors.white,
    child: Column(
      children: [
        Container(
          height: 3.0,
          color: Color(0xffdc2126),
        ),
        SizedBox(
          height: 7.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MenuIconCard(
              image: 'images/home.png',
              name: "Home",
            ),
            MenuIconCard(
              image: 'images/workout.png',
              name: "Workout",
            ),
            MenuIconCard(
              image: 'images/dance.png',
              name: "Dance",
            ),
            MenuIconCard(
              image: 'images/diet.png',
              name: "Diet",
            ),
            MenuIconCard(
              image: 'images/plans.png',
              name: "Plans",
            ),
          ],
        ),
      ],
    ),
  );
}

class MenuIconCard extends StatelessWidget {
  final String image;
  final String name;
  MenuIconCard({this.image, this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.0,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: 25.0,
              width: 25.0,
            ),
            SizedBox(height: 2.0),
            Text(
              name,
              style: TextStyle(
                color: Color(0xffdc2126),
                fontSize: 10.0,
                fontFamily: 'Rubik' 'Regular',
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
