import 'package:flutter/material.dart';

class Dance extends StatefulWidget {
  @override
  _DanceState createState() => _DanceState();
}

class _DanceState extends State<Dance> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
        right: 20.0,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20.5,
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
                        style: TextStyle(
                            fontFamily: 'Rubik Regular', fontSize: 15),
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
                        style: TextStyle(
                            fontFamily: 'Rubik Regular', fontSize: 15),
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
                        style: TextStyle(
                            fontFamily: 'Rubik Regular', fontSize: 15),
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
                      image: AssetImage('images/pic3.png'),
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
                        style: TextStyle(
                            fontFamily: 'Rubik Regular', fontSize: 15),
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
          ],
        ),
      ),
    );
  }
}
