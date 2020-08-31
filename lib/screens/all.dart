import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'webview.dart';

class All extends StatefulWidget {
  @override
  _AllState createState() => _AllState();
}

class _AllState extends State<All> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          StreamBuilder<QuerySnapshot>(
              stream: Firestore.instance.collection('zumba').snapshots(),
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
                                      InkWell(
                                        onTap: () {
                                          _handleURLButtonPress(
                                            context,
                                            document['link'],
                                            document['title'],
                                          );
                                        },
                                        child: Text(
                                          document['title'],
                                          style: TextStyle(
                                              fontFamily: 'Rubik Regular',
                                              fontSize: 18),
                                        ),
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
                                      child: InkWell(
                                        onTap: () {
                                          _handleURLButtonPress(
                                            context,
                                            document['link'],
                                            document['title'],
                                          );
                                        },
                                        child: Image.network(
                                          url,
                                          height: 53.0,
                                          width: 100.0,
                                        ),
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
              }),
          StreamBuilder<QuerySnapshot>(
              stream: Firestore.instance.collection('pillates').snapshots(),
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
                                      InkWell(
                                        onTap: () {
                                          _handleURLButtonPress(
                                            context,
                                            document['link'],
                                            document['title'],
                                          );
                                        },
                                        child: Text(
                                          document['title'],
                                          style: TextStyle(
                                              fontFamily: 'Rubik Regular',
                                              fontSize: 18),
                                        ),
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
                                      child: InkWell(
                                        onTap: () {
                                          _handleURLButtonPress(
                                            context,
                                            document['link'],
                                            document['title'],
                                          );
                                        },
                                        child: Image.network(
                                          url,
                                          height: 53.0,
                                          width: 100.0,
                                        ),
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
              }),
          StreamBuilder<QuerySnapshot>(
              stream: Firestore.instance.collection('hiit').snapshots(),
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
                                      InkWell(
                                        onTap: () {
                                          _handleURLButtonPress(
                                            context,
                                            document['link'],
                                            document['title'],
                                          );
                                        },
                                        child: Text(
                                          document['title'],
                                          style: TextStyle(
                                              fontFamily: 'Rubik Regular',
                                              fontSize: 18),
                                        ),
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
                                      child: InkWell(
                                        onTap: () {
                                          _handleURLButtonPress(
                                            context,
                                            document['link'],
                                            document['title'],
                                          );
                                        },
                                        child: Image.network(
                                          url,
                                          height: 53.0,
                                          width: 100.0,
                                        ),
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
              }),
          StreamBuilder<QuerySnapshot>(
              stream: Firestore.instance.collection('steppers').snapshots(),
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
                                      InkWell(
                                        onTap: () {
                                          _handleURLButtonPress(
                                            context,
                                            document['link'],
                                            document['title'],
                                          );
                                        },
                                        child: Text(
                                          document['title'],
                                          style: TextStyle(
                                              fontFamily: 'Rubik Regular',
                                              fontSize: 18),
                                        ),
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
                                      child: InkWell(
                                        onTap: () {
                                          _handleURLButtonPress(
                                            context,
                                            document['link'],
                                            document['title'],
                                          );
                                        },
                                        child: Image.network(
                                          url,
                                          height: 53.0,
                                          width: 100.0,
                                        ),
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
              }),
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
                                      InkWell(
                                        onTap: () {
                                          _handleURLButtonPress(
                                            context,
                                            document['link'],
                                            document['title'],
                                          );
                                        },
                                        child: Text(
                                          document['title'],
                                          style: TextStyle(
                                              fontFamily: 'Rubik Regular',
                                              fontSize: 18),
                                        ),
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
                                      child: InkWell(
                                        onTap: () {
                                          _handleURLButtonPress(
                                            context,
                                            document['link'],
                                            document['title'],
                                          );
                                        },
                                        child: Image.network(
                                          url,
                                          height: 53.0,
                                          width: 100.0,
                                        ),
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
              }),
          StreamBuilder<QuerySnapshot>(
              stream: Firestore.instance.collection('bootcamp').snapshots(),
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
                                      InkWell(
                                        onTap: () {
                                          _handleURLButtonPress(
                                            context,
                                            document['link'],
                                            document['title'],
                                          );
                                        },
                                        child: Text(
                                          document['title'],
                                          style: TextStyle(
                                              fontFamily: 'Rubik Regular',
                                              fontSize: 18),
                                        ),
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
                                      child: InkWell(
                                        onTap: () {
                                          _handleURLButtonPress(
                                            context,
                                            document['link'],
                                            document['title'],
                                          );
                                        },
                                        child: Image.network(
                                          url,
                                          height: 53.0,
                                          width: 100.0,
                                        ),
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
              }),
        ],
      ),
    );
  }

  void _handleURLButtonPress(BuildContext context, String url, String title) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => WebViewContainer(url, title),
      ),
    );
  }
}
