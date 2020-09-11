import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'webview.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 180,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 20.0),
                    child: StreamBuilder<QuerySnapshot>(
                        stream: Firestore.instance
                            .collection('home slider')
                            .snapshots(),
                        builder: (BuildContext context,
                            AsyncSnapshot<QuerySnapshot> snapshot) {
                          if (snapshot.hasError)
                            return new Text('Error: ${snapshot.error}');

                          switch (snapshot.connectionState) {
                            case ConnectionState.waiting:
                              return new Text('Loading....');
                            default:
                              return new ListView(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                children: snapshot.data.documents
                                    .map((DocumentSnapshot document) {
                                  return Row(
                                    children: <Widget>[
                                      Image.network(
                                        document['imageUrl'],
                                        width: 350,
                                      ),
                                    ],
                                  );
                                }).toList(),
                              );
                          }
                        }),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20.0, top: 21),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 4.0, left: 0.0),
                              child: Icon(
                                Icons.remove,
                                color: Colors.red.shade700,
                                size: 30.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Text(
                                'Workout videos for you',
                                style: TextStyle(
                                  fontFamily: 'Rubik',
                                  fontSize: 19,
                                ),
                              ),
                            ),
                          ],
                        ),
                        StreamBuilder<QuerySnapshot>(
                            stream: Firestore.instance
                                .collection('home')
                                .snapshots(),
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
                                      return new Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0, top: 11.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                              child: InkWell(
                                                onTap: () {
                                                  _handleURLButtonPress(
                                                      context,
                                                      document['link'],
                                                      document['title']);
                                                },
                                                child: Image.network(
                                                  url,
                                                  height: 55.0,
                                                  width: 100.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 9.0, top: 11.0),
                                                child: InkWell(
                                                  onTap: () {
                                                    _handleURLButtonPress(
                                                        context,
                                                        document['link'],
                                                        document['title']);
                                                  },
                                                  child: SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.50,
                                                    child: AutoSizeText(
                                                      document['title'],
                                                      style: TextStyle(
                                                        fontFamily: 'Rubik',
                                                        fontSize: 17,
                                                      ),
                                                      minFontSize: 14.0,
                                                      stepGranularity: 1,
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 9.0, right: 9.0),
                                                child: SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.50,
                                                  child: AutoSizeText(
                                                    document['desc'],
                                                    style: TextStyle(
                                                      fontFamily: 'Rubik',
                                                      fontSize: 15,
                                                    ),
                                                    minFontSize: 13,
                                                    stepGranularity: 1,
                                                    maxLines: 2,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      );
                                    }).toList(),
                                  );
                              }
                            }),
                        SizedBox(
                          height: 15.0,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20.0, top: 21),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 4.0, left: 0.0),
                              child: Icon(
                                Icons.remove,
                                color: Colors.red.shade700,
                                size: 30.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Text(
                                'Dance Videos for you',
                                style: TextStyle(
                                  fontFamily: 'Rubik',
                                  fontSize: 19,
                                ),
                              ),
                            ),
                          ],
                        ),
                        StreamBuilder<QuerySnapshot>(
                            stream: Firestore.instance
                                .collection('homeDance')
                                .snapshots(),
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
                                      return new Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0, top: 11.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                              child: InkWell(
                                                onTap: () {
                                                  _handleURLButtonPress(
                                                      context,
                                                      document['link'],
                                                      document['title']);
                                                },
                                                child: Image.network(
                                                  url,
                                                  height: 55.0,
                                                  width: 100.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 9.0, top: 11.0),
                                                child: InkWell(
                                                  onTap: () {
                                                    _handleURLButtonPress(
                                                      context,
                                                      document['link'],
                                                      document['title'],
                                                    );
                                                  },
                                                  child: SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.50,
                                                    child: AutoSizeText(
                                                      document['title'],
                                                      style: TextStyle(
                                                        fontFamily: 'Rubik',
                                                        fontSize: 17,
                                                      ),
                                                      minFontSize: 14,
                                                      maxLines: 2,
                                                      stepGranularity: 1,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 9.0, right: 9.0),
                                                child: SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.50,
                                                  child: Text(
                                                    document['desc'],
                                                    style: TextStyle(
                                                      fontFamily: 'Rubik',
                                                      fontSize: 15,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      );
                                    }).toList(),
                                  );
                              }
                            }),
                        SizedBox(
                          height: 15.0,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 21.0),
                  child: Image.asset(
                    'images/line.png',
                    height: 3.0,
                    width: 53.0,
                  ),
                ),
                SizedBox(height: 20.0),
              ],
            ),
          ],
        ),
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
