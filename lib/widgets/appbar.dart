import 'package:flutter/material.dart';

Widget customAppbar() {
  return AppBar(
    backgroundColor: Color(0xffffffff),
    title: Container(
      height: 50.0,
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.menu,
            color: Color(0xffdc2126),
            size: 30.0,
          ),
          Row(
            children: [
              Image.asset(
                "images/logo.png",
                height: 30.0,
                width: 30.0,
              ),
              SizedBox(width: 5.0),
              Text(
                "Fitility",
                style: TextStyle(
                  color: Color(0xffdc2126),
                  fontSize: 20.0,
                  fontFamily: 'Rubik' 'Regular',
                ),
              ),
            ],
          ),

          ////  invsible icon of no use , just added it for right alignment of the widgets  ////
          Icon(
            Icons.menu,
            color: Colors.white,
            size: 40.0,
          ),
        ],
      ),
    ),
    bottom: PreferredSize(
      child: Container(
        color: Color(0xffdc2126),
        height: 2.5,
      ),
      preferredSize: Size.fromHeight(2.5),
    ),
  );
}
