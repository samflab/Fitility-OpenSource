import 'package:flutter/material.dart';

class Steppers extends StatefulWidget {
  @override
  _SteppersState createState() => _SteppersState();
}

class _SteppersState extends State<Steppers> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.remove,
                      color: Colors.red.shade700,
                      size: 30.0,
                    ),
                    Text(
                      'Lorem Ipsum    ',
                      style:
                          TextStyle(fontFamily: 'Rubik Regular', fontSize: 15),
                    ),
                    Image(
                      image: AssetImage('images/lineh.png'),
                      height: 30.0,
                      width: 2.0,
                    ),
                    Text(
                      '  Beginner',
                      style:
                          TextStyle(fontFamily: 'Rubik Regular', fontSize: 14),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 25.0,
                    top: 13,
                    bottom: 12.0,
                  ),
                  child: Image(
                    image: AssetImage('images/pic1.png'),
                    height: 53.0,
                    width: 100.0,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.remove,
                      color: Colors.red.shade700,
                      size: 30.0,
                    ),
                    Text(
                      'Lorem Ipsum    ',
                      style:
                          TextStyle(fontFamily: 'Rubik Regular', fontSize: 15),
                    ),
                    Image(
                      image: AssetImage('images/lineh.png'),
                      height: 30.0,
                      width: 2.0,
                    ),
                    Text(
                      '  Beginner',
                      style:
                          TextStyle(fontFamily: 'Rubik Regular', fontSize: 14),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 25.0,
                    top: 13,
                    bottom: 12.0,
                  ),
                  child: Image(
                    image: AssetImage('images/pic2.png'),
                    height: 53.0,
                    width: 100.0,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}
