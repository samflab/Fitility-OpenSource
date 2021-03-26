import 'package:carousel_pro/carousel_pro.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fitility/screens/dancepage.dart';
import 'package:fitility/screens/diet_veg.dart';
import 'package:fitility/screens/plans_zumba.dart';
import 'package:fitility/screens/workout.dart';
import 'package:fitility/services/transition.dart';
import 'package:fitility/services/webview.dart';
import 'package:fitility/widgets/appbar.dart';
import 'package:fitility/widgets/bottomNavigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GetImages extends StatelessWidget {
  final String dbName;

  const GetImages({Key key, this.dbName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new StreamBuilder(
        stream: Firestore.instance
            .collection('slideshow')
            .document(dbName)
            .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return new Text("Loading");
          }
          var userDocument = snapshot.data;
          return new Image.network(userDocument['imgUrl']);
        });
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  final ScrollController _scrollController1 = ScrollController();
  List slideshowimages;
  @override
  void initState() {
    setState(() {
      slideshowimages = [
        GetImages(dbName: 'images'),
        GetImages(dbName: 'image1'),
        GetImages(dbName: 'image2'),
        GetImages(dbName: 'image3'),
      ];
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ////  used customAppbar widget from widgets/appbar.dart  ////
      appBar: customAppbar(context),

      ////  used bottomNavigationBar widget from widgets/bottomNavigation.dart  ////
      bottomNavigationBar: customBottomNavigationBar(context),

      body: SingleChildScrollView(
        child: Container(
          color: Color(0xffeceff1),
          width: double.infinity,
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              ////  top categories list  ////
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          FadeRoute(page: WorkoutScreen()),
                        );
                      },
                      child: CategoryTile(categoryname: "Workout")),
                  InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          FadeRoute(page: DancePage()),
                        );
                      },
                      child: CategoryTile(categoryname: "Dance")),
                  InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          FadeRoute(page: DietVeg()),
                        );
                      },
                      child: CategoryTile(categoryname: "Diet")),
                  InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          FadeRoute(page: PlansZumba()),
                        );
                      },
                      child: CategoryTile(categoryname: "Plan")),
                ],
              ),
              SizedBox(height: 10.0),

              ////  cover image  ////
              Container(
                margin: EdgeInsets.symmetric(vertical: 15.0),
                child: SizedBox(
                  height: 180.0,
                  width: MediaQuery.of(context).size.width * 0.99,
                  child: Carousel(
                    boxFit: BoxFit.cover,
                    autoplay: true,
                    animationCurve: Curves.fastOutSlowIn,
                    animationDuration: Duration(milliseconds: 1000),
                    dotSize: 6.0,
                    dotIncreasedColor: Color(0xffdc2126),
                    dotBgColor: Colors.transparent,
                    dotPosition: DotPosition.bottomCenter,
                    dotVerticalPadding: 10.0,
                    showIndicator: true,
                    indicatorBgPadding: 10.0,
                    images: slideshowimages,
                  ),
                ),
              ),

              SizedBox(height: 10.0),

              ////  Workout videos for you  ////
              Container(
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 20.0,
                          width: 20.0,
                          child: Row(
                            children: [
                              Image.asset(
                                'images/bullet.png',
                                height: 12.0,
                                width: 12.0,
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "Workout videos for you",
                          style: TextStyle(
                            color: Color(0xff181818),
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Rubik' 'Regular',
                          ),
                        ),
                      ],
                    ),
                    StreamBuilder<QuerySnapshot>(
                        stream: Firestore.instance
                            .collection("videos")
                            .where("genre", isEqualTo: "Workout")
                            .orderBy("createdOn", descending: true)
                            .limit(5)
                            .snapshots(),
                        builder: (context, snapshot) {
                          if (snapshot.hasError)
                            return Text("Something went wrong");
                          switch (snapshot.connectionState) {
                            case ConnectionState.waiting:
                              return CupertinoActivityIndicator();
                            default:
                              return Scrollbar(
                                  isAlwaysShown: true,
                                  controller: _scrollController1,
                                  child: new ListView(
                                    controller: _scrollController1,
                                    shrinkWrap: true,
                                    children: snapshot.data.documents
                                        .map((DocumentSnapshot document) {
                                      return InkWell(
                                        onTap: () {
                                          _handleURLButtonPress(
                                              context,
                                              document['ytlink'],
                                              document['videoname']);
                                        },
                                        child: VideoCard(
                                          videoImage: document['imgurl'],
                                          videoTitle: document['videoname'],
                                          videoText: document['description'],
                                        ),
                                      );
                                    }).toList(),
                                  ));
                          }
                        }),
                  ],
                ),
              ),
              SizedBox(height: 20.0),

              ////  Dance videoes for you  ////
              Container(
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 20.0,
                          width: 20.0,
                          child: Row(
                            children: [
                              Image.asset(
                                'images/bullet.png',
                                height: 12.0,
                                width: 12.0,
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "Dance videos for you",
                          style: TextStyle(
                            color: Color(0xff181818),
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Rubik' 'Regular',
                          ),
                        ),
                      ],
                    ),

                    ////  Video1  ////
                    StreamBuilder<QuerySnapshot>(
                        stream: Firestore.instance
                            .collection("videos")
                            .where("genre", isEqualTo: "Dance")
                            .orderBy("createdOn", descending: true)
                            .limit(5)
                            .snapshots(),
                        builder: (context, snapshot) {
                          if (snapshot.hasError)
                            return Text("Something went wrong");
                          switch (snapshot.connectionState) {
                            case ConnectionState.waiting:
                              return CupertinoActivityIndicator();
                            default:
                              return Scrollbar(
                                  isAlwaysShown: true,
                                  controller: _scrollController,
                                  child: new ListView(
                                    controller: _scrollController,
                                    shrinkWrap: true,
                                    children: snapshot.data.documents
                                        .map((DocumentSnapshot document) {
                                      return InkWell(
                                        onTap: () {
                                          _handleURLButtonPress(
                                              context,
                                              document['ytlink'],
                                              document['videoname']);
                                        },
                                        child: VideoCard(
                                          videoImage: document['imgurl'],
                                          videoTitle: document['videoname'],
                                          videoText: document['description'],
                                        ),
                                      );
                                    }).toList(),
                                  ));
                          }
                        }),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              ////  Bottom red bar  ////
              Container(
                child: Row(
                  children: [
                    Image.asset(
                      'images/line.png',
                      height: 5.0,
                      width: 60.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class VideoCard extends StatelessWidget {
  final String videoImage;
  final String videoTitle;
  final String videoText;

  VideoCard({this.videoImage, this.videoTitle, this.videoText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      padding: EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 20.0,
      ),
      child: Row(
        children: [
          Image.network(
            videoImage,
            height: 55.0,
            width: 100,
          ),
          SizedBox(width: 7.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  videoTitle,
                  style: TextStyle(
                    color: Color(0xff181818),
                    fontSize: 13.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Rubik' 'Regular',
                  ),
                ),
                Text(
                  videoText,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  softWrap: true,
                  style: TextStyle(
                    color: Color(0xff181818),
                    fontSize: 10.0,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Rubik' 'Regular',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  final String categoryname;
  CategoryTile({this.categoryname});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 41.0,
      width: MediaQuery.of(context).size.width / 5,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.7),
            blurRadius: 5.0,
            offset: Offset(0, 3.0),
          ),
        ],
      ),
      child: Center(
        child: Text(
          categoryname,
          style: TextStyle(
            color: Color(0xff181818),
            fontSize: 13.0,
            fontWeight: FontWeight.w500,
            fontFamily: 'Rubik' 'Regular',
          ),
        ),
      ),
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
