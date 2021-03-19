import 'package:carousel_pro/carousel_pro.dart';
import 'package:fitility/widgets/appbar.dart';
import 'package:fitility/widgets/bottomNavigation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              ////  top categories list  ////
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryTile(categoryname: "Workout"),
                  CategoryTile(categoryname: "Dance"),
                  CategoryTile(categoryname: "Diet"),
                  CategoryTile(categoryname: "Plan"),
                ],
              ),
              SizedBox(height: 10.0),

              ////  cover image  ////
              Container(
                margin: EdgeInsets.symmetric(vertical: 15.0),
                child: SizedBox(
                  height: 180.0,
                  child: Carousel(
                    boxFit: BoxFit.fitWidth,
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
                    images: [
                      Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/fitility.appspot.com/o/slideshow%2Fdance.jfif?alt=media&token=9a939f83-a1a9-41fa-9515-8d82708331d1'),
                      Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/fitility.appspot.com/o/slideshow%2Fdance3.jpg?alt=media&token=090429db-45a5-4dce-a217-f923f17cff9b'),
                      Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/fitility.appspot.com/o/slideshow%2Fdance2.jpg?alt=media&token=df6bbc55-c989-46a8-a0c6-89b479d69ed5'),
                      Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/fitility.appspot.com/o/slideshow%2Fdance1.jpg?alt=media&token=d18c6cb8-e266-480a-a572-452a15458f69'),
                    ],
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

                    ////  Video1  ////
                    VideoCard(
                      videoImage: 'images/pic1.png',
                      videoTitle: "Video Title",
                      videoText:
                          "lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
                    ),

                    ////  video2  ////
                    VideoCard(
                      videoImage: 'images/pic2.png',
                      videoTitle: "Video Title",
                      videoText:
                          "lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
                    ),

                    ////  video3  ////
                    VideoCard(
                      videoImage: 'images/pic3.png',
                      videoTitle: "Video Title",
                      videoText:
                          "lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
                    ),
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
                    VideoCard(
                      videoImage: 'images/pic1.png',
                      videoTitle: "Video Title",
                      videoText:
                          "lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
                    ),

                    ////  video2  ////
                    VideoCard(
                      videoImage: 'images/pic2.png',
                      videoTitle: "Video Title",
                      videoText:
                          "lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
                    ),

                    ////  video3  ////
                    VideoCard(
                      videoImage: 'images/pic3.png',
                      videoTitle: "Video Title",
                      videoText:
                          "lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
                    ),
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
          Image.asset(
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
