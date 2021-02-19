import 'package:fitility/screens/dancepage.dart';
import 'package:fitility/screens/diet_veg.dart';
import 'package:fitility/screens/homepage.dart';
import 'package:fitility/screens/plans_zumba.dart';
import 'package:fitility/screens/workout.dart';
import 'package:fitility/services/transition.dart';
import 'package:flutter/material.dart';

Widget customBottomNavigationBar(BuildContext context) {
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
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  FadeRoute(page: HomePage()),
                );
              },
              child: MenuIconCard(
                image: 'images/home.png',
                name: "Home",
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  FadeRoute(page: WorkoutScreen()),
                );
              },
              child: MenuIconCard(
                image: 'images/workout.png',
                name: "Workout",
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  FadeRoute(page: DancePage()),
                );
              },
              child: MenuIconCard(
                image: 'images/dance.png',
                name: "Dance",
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  FadeRoute(page: DietVeg()),
                );
              },
              child: MenuIconCard(
                image: 'images/diet.png',
                name: "Diet",
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  FadeRoute(page: PlansZumba()),
                );
              },
              child: MenuIconCard(
                image: 'images/plans.png',
                name: "Plans",
              ),
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
      color: Colors.white,
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
