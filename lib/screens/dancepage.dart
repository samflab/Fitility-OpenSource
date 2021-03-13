import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xffeceff1),
          child: Dance(),
        ),
      ),
    );
  }
}

class Dance extends StatefulWidget {
  @override
  _DanceState createState() => _DanceState();
}

class _DanceState extends State<Dance> {
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: StreamBuilder<QuerySnapshot>(
          stream: Firestore.instance.collection('dance').snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) return new Text('Error: ${snapshot.error}');
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return new Text('Loading....');
              default:
                return Scrollbar(
                  isAlwaysShown: true,
                  controller: _scrollController,
                  child: new ListView(
                    controller: _scrollController,
                    shrinkWrap: true,
                    children: snapshot.data.documents
                        .map((DocumentSnapshot document) {
                      String url = document['imgurl'];
                      return Column(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: new Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 10.0),
                              height: 80.0,
                              decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                border: Border.all(
                                  color: Color(0xffeceff1),
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: [
                                      Image.asset(
                                        'images/bullet.png',
                                        width: 13.0,
                                      ),
                                      SizedBox(width: 15.0),
                                      AutoSizeText(
                                        document['videoname'],
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Rubik',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18.0,
                                        ),
                                        minFontSize: 14,
                                        stepGranularity: 1,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
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
                          ),
                        ],
                      );
                    }).toList(),
                  ),
                );
            }
          }),
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
