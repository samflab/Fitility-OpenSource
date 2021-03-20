import 'package:fitility/screens/settingspage.dart';
import 'package:fitility/services/transition.dart';
import 'package:flutter/material.dart';

Widget customAppbar(context) {
  return AppBar(
    backgroundColor: Color(0xffffffff),
    centerTitle: true,
    title: Container(
      width: 110.0,
      child: Row(
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
              fontSize: 26.0,
              fontFamily: 'Rubik' 'Regular',
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    ),
    leading: IconButton(
      icon: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Icon(
          Icons.menu,
          size: 35.0,
          color: Color(0xffdc2126),
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          FadeRoute(
            page: SettingsPage(),
          ),
        );
      },
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
