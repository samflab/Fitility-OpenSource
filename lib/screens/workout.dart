import 'package:fitility/widgets/appbar.dart';
import 'package:fitility/widgets/bottomNavigation.dart';
import 'package:flutter/material.dart';

class WorkoutScreen extends StatefulWidget {
  @override
  _WorkoutScreenState createState() => _WorkoutScreenState();
}

class _WorkoutScreenState extends State<WorkoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(context),
      bottomNavigationBar: customBottomNavigationBar(),
      body: Container(
        color: Color(0xffeceff1),
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              height: 50.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryTile(
                    categoryname: "All",
                    isActive: true,
                  ),
                  CategoryTile(
                    categoryname: "Zumba",
                    isActive: false,
                  ),
                  CategoryTile(
                    categoryname: "Pillates",
                    isActive: false,
                  ),
                  CategoryTile(
                    categoryname: "HIIT",
                    isActive: false,
                  ),
                  CategoryTile(
                    categoryname: "Steppers",
                    isActive: false,
                  ),
                  CategoryTile(
                    categoryname: "Body-Aero",
                    isActive: false,
                  ),
                  CategoryTile(
                    categoryname: "Bootcamp",
                    isActive: false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  final String categoryname;
  final bool isActive;
  CategoryTile({this.categoryname, this.isActive});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      width: MediaQuery.of(context).size.width / 4,
      margin: EdgeInsets.only(left: 5.0, right: 5.0, bottom: 10.0),
      decoration: BoxDecoration(
        color: isActive ? Color(0xffdc2126) : Colors.white,
        borderRadius: BorderRadius.circular(5.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.7),
            blurRadius: 5.0,
            offset: Offset(0, 3.0),
          ),
        ],
      ),
      child: Center(
        child: Text(
          categoryname,
          style: TextStyle(
            color: isActive ? Colors.white : Color(0xff181818),
            fontSize: 13.0,
            fontWeight: FontWeight.w500,
            fontFamily: 'Rubik' 'Regular',
          ),
        ),
      ),
    );
  }
}
