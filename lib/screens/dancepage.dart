import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fitility/widgets/appbar.dart';
import 'package:fitility/widgets/bottomNavigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fitility/services/webview.dart';
import 'package:flutter_svg/svg.dart';

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
          stream: Firestore.instance
              .collection('videos')
              .where("genre", isEqualTo: "Dance")
              .snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError)
              return new Column(
                children: [
                  SvgPicture.asset('error.svg'),
                  Center(
                    child: Text(
                      'Something went wrong.\n Please try again later.',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Rubik',
                        fontSize: 16.0,
                      ),
                    ),
                  )
                ],
              );

            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return Center(
                  child: new CupertinoActivityIndicator(),
                );
              default:
                return Scrollbar(
                  isAlwaysShown: true,
                  controller: _scrollController,
                  child: new ListView(
                    controller: _scrollController,
                    shrinkWrap: true,
                    children: snapshot.data.documents
                        .map((DocumentSnapshot document) {
                      String url = document['ytlink'];
                      if (document['videoname'] == "Select") return Container();

                      return InkWell(
                        onTap: () {
                          _handleURLButtonPress(
                              context, url, document['videoname']);
                        },
                        child: DanceCard(
                          text: document['videoname'],
                          image: document['imgurl'],
                        ),
                      );
                    }).toList(),
                  ),
                );
            }
          }),
    );
  }
}

void _handleURLButtonPress(BuildContext context, String url, String title) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => WebViewContainer(url, title),
    ),
  );
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
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.35,
                child: AutoSizeText(
                  text,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Rubik',
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0,
                  ),
                  minFontSize: 15,
                  stepGranularity: 1,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(right: 20.0),
            child: Image.network(
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
