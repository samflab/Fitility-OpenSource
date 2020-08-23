import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class BollyAero extends StatefulWidget {
  @override
  _BollyAeroState createState() => _BollyAeroState();
}

class _BollyAeroState extends State<BollyAero> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          StreamBuilder<QuerySnapshot>(
              stream: Firestore.instance.collection('bolly-aero').snapshots(),
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasError)
                  return new Text('Error: ${snapshot.error}');
                switch (snapshot.connectionState) {
                  case ConnectionState.waiting:
                    return new Text('Loading....');
                  default:
                    return new ListView(
                      shrinkWrap: true,
                      children: snapshot.data.documents
                          .map((DocumentSnapshot document) {
                        String url = document['imageUrl'];
                        return Column(
                          children: <Widget>[
                            new Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.remove,
                                        color: Colors.red.shade700,
                                        size: 30.0,
                                      ),
                                      Text(
                                        document['title'],
                                        style: TextStyle(
                                            fontFamily: 'Rubik Regular',
                                            fontSize: 18),
                                      ),
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Image(
                                        image: AssetImage('images/lineh.png'),
                                        height: 30.0,
                                        width: 2.0,
                                      ),
                                      SizedBox(width: 5.0),
                                      Text(
                                        document['level'],
                                        style: TextStyle(
                                            fontFamily: 'Rubik Regular',
                                            fontSize: 15),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      right: 25.0,
                                      top: 13,
                                      bottom: 12.0,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Image.network(
                                        url,
                                        height: 53.0,
                                        width: 100.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                          ],
                        );
                      }).toList(),
                    );
                }
              })
        ],
      ),
    );
  }
}
