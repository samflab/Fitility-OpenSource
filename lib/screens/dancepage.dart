import 'package:fitility/widgets/appbar.dart';
import 'package:fitility/widgets/bottomNavigation.dart';
import 'package:flutter/material.dart';

class DancePage extends StatefulWidget {
  @override
  _DancePageState createState() => _DancePageState();
}

class _DancePageState extends State<DancePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(context),
      bottomNavigationBar: customBottomNavigationBar(context),
      body: Container(
        color: Color(0xffeceff1),
        child: Column(
          children: [
            SizedBox(height: 10.0),
            DanceCard(
              text: "Lorem Ipsum",
              image: 'images/pic1.png',
            ),
            DanceCard(
              text: "Lorem Ipsum",
              image: 'images/pic2.png',
            ),
            DanceCard(
              text: "Lorem Ipsum",
              image: 'images/pic3.png',
            ),
            DanceCard(
              text: "Lorem Ipsum",
              image: 'images/pic1.png',
            ),
          ],
        ),
      ),
    );
  }
}

class DanceCard extends StatelessWidget {
  final String text, image;
  const DanceCard({
    this.text,
    this.image,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      height: 80.0,
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        border: Border.all(
          color: Color(0xffeceff1),
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                'images/bullet.png',
                width: 13.0,
              ),
              SizedBox(width: 15.0),
              Text(
                text,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.w500,
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(right: 20.0),
            child: Image.asset(
              image,
              height: 55.0,
              width: 100.0,
            ),
          ),
        ],
      ),
    );
  }
}
