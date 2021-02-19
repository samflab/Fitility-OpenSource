import 'package:fitility/widgets/appbar.dart';
import 'package:fitility/widgets/bottomNavigation.dart';
import 'package:flutter/material.dart';

class WorkoutScreen extends StatefulWidget {
  @override
  _WorkoutScreenState createState() => _WorkoutScreenState();
}

class _WorkoutScreenState extends State<WorkoutScreen> {
  bool isAll = true,
      isZubma = false,
      isPillates = false,
      isHIIT = false,
      isSteppers = false,
      isBodyaero = false,
      isBootcamp = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(context),
      bottomNavigationBar: customBottomNavigationBar(context),
      body: SingleChildScrollView(
        child: Container(
          constraints:
              BoxConstraints(minHeight: MediaQuery.of(context).size.height),
          color: Color(0xffeceff1),
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                height: 50.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isAll = true;
                          isZubma = false;
                          isPillates = false;
                          isHIIT = false;
                          isSteppers = false;
                          isBodyaero = false;
                          isBootcamp = false;
                        });
                      },
                      child: CategoryTile(
                        categoryname: "All",
                        isActive: isAll,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isAll = false;
                          isZubma = true;
                          isPillates = false;
                          isHIIT = false;
                          isSteppers = false;
                          isBodyaero = false;
                          isBootcamp = false;
                        });
                      },
                      child: CategoryTile(
                        categoryname: "Zumba",
                        isActive: isZubma,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isAll = false;
                          isZubma = false;
                          isPillates = true;
                          isHIIT = false;
                          isSteppers = false;
                          isBodyaero = false;
                          isBootcamp = false;
                        });
                      },
                      child: CategoryTile(
                        categoryname: "Pillates",
                        isActive: isPillates,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isAll = false;
                          isZubma = false;
                          isPillates = false;
                          isHIIT = true;
                          isSteppers = false;
                          isBodyaero = false;
                          isBootcamp = false;
                        });
                      },
                      child: CategoryTile(
                        categoryname: "HIIT",
                        isActive: isHIIT,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isAll = false;
                          isZubma = false;
                          isPillates = false;
                          isHIIT = false;
                          isSteppers = true;
                          isBodyaero = false;
                          isBootcamp = false;
                        });
                      },
                      child: CategoryTile(
                        categoryname: "Steppers",
                        isActive: isSteppers,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isAll = false;
                          isZubma = false;
                          isPillates = false;
                          isHIIT = false;
                          isSteppers = false;
                          isBodyaero = true;
                          isBootcamp = false;
                        });
                      },
                      child: CategoryTile(
                        categoryname: "Body-Aero",
                        isActive: isBodyaero,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isAll = false;
                          isZubma = false;
                          isPillates = false;
                          isHIIT = false;
                          isSteppers = false;
                          isBodyaero = false;
                          isBootcamp = true;
                        });
                      },
                      child: CategoryTile(
                        categoryname: "Bootcamp",
                        isActive: isBootcamp,
                      ),
                    ),
                  ],
                ),
              ),
              isAll
                  ? Column(
                      children: [
                        Videocard(
                          text: "Lorem Ipsum",
                          image: 'images/pic1.png',
                          level: "Beginner",
                        ),
                        Videocard(
                          text: "Lorem Ipsum",
                          image: 'images/pic2.png',
                          level: "Beginner",
                        ),
                        Videocard(
                          text: "Lorem Ipsum",
                          image: 'images/pic3.png',
                          level: "Beginner",
                        ),
                        Videocard(
                          text: "Lorem Ipsum",
                          image: 'images/pic1.png',
                          level: "Beginner",
                        ),
                        Videocard(
                          text: "Lorem Ipsum",
                          image: 'images/pic2.png',
                          level: "Beginner",
                        ),
                        Videocard(
                          text: "Lorem Ipsum",
                          image: 'images/pic3.png',
                          level: "Beginner",
                        ),
                      ],
                    )
                  : Container(),
              isZubma
                  ? Column(
                      children: [
                        Videocard(
                          text: "Lorem Ipsum",
                          image: 'images/pic3.png',
                          level: "Beginner",
                        ),
                        Videocard(
                          text: "Lorem Ipsum",
                          image: 'images/pic2.png',
                          level: "Beginner",
                        ),
                        Videocard(
                          text: "Lorem Ipsum",
                          image: 'images/pic1.png',
                          level: "Beginner",
                        ),
                      ],
                    )
                  : Container(),
              isPillates
                  ? Column(
                      children: [
                        Videocard(
                          text: "Lorem Ipsum",
                          image: 'images/pic1.png',
                          level: "Beginner",
                        ),
                      ],
                    )
                  : Container(),
              isHIIT
                  ? Column(
                      children: [
                        Videocard(
                          text: "Lorem Ipsum",
                          image: 'images/pic2.png',
                          level: "Beginner",
                        ),
                        Videocard(
                          text: "Lorem Ipsum",
                          image: 'images/pic3.png',
                          level: "Beginner",
                        ),
                      ],
                    )
                  : Container(),
              isSteppers
                  ? Column(
                      children: [
                        Videocard(
                          text: "Lorem Ipsum",
                          image: 'images/pic1.png',
                          level: "Beginner",
                        ),
                      ],
                    )
                  : Container(),
              isBodyaero
                  ? Column(
                      children: [
                        Videocard(
                          text: "Lorem Ipsum",
                          image: 'images/pic1.png',
                          level: "Beginner",
                        ),
                        Videocard(
                          text: "Lorem Ipsum",
                          image: 'images/pic1.png',
                          level: "Beginner",
                        ),
                        Videocard(
                          text: "Lorem Ipsum",
                          image: 'images/pic3.png',
                          level: "Beginner",
                        ),
                      ],
                    )
                  : Container(),
              isBootcamp
                  ? Column(
                      children: [
                        Videocard(
                          text: "Lorem Ipsum",
                          image: 'images/pic2.png',
                          level: "Beginner",
                        ),
                        Videocard(
                          text: "Lorem Ipsum",
                          image: 'images/pic1.png',
                          level: "Beginner",
                        ),
                      ],
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  final String categoryname;
  final bool isActive;
  CategoryTile({this.categoryname, this.isActive});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      width: MediaQuery.of(context).size.width / 4,
      margin: EdgeInsets.only(left: 5.0, right: 5.0, bottom: 10.0),
      decoration: BoxDecoration(
        color: isActive ? Color(0xffdc2126) : Color(0xffeceff1),
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
            color: isActive ? Colors.white : Color(0xff181818),
            fontSize: 13.0,
            fontWeight: FontWeight.w500,
            fontFamily: 'Rubik' 'Regular',
          ),
        ),
      ),
    );
  }
}

class Videocard extends StatelessWidget {
  final String text, level, image;
  const Videocard({
    this.text,
    this.level,
    this.image,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
      height: 75.0,
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
                width: 10.0,
              ),
              SizedBox(width: 10.0),
              Text(
                text,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.w500,
                  fontSize: 15.0,
                ),
              ),
              SizedBox(width: 5.0),
              Image.asset(
                'images/lineh.png',
                height: 35.0,
              ),
              SizedBox(width: 5.0),
              Text(
                level,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.w500,
                  fontSize: 15.0,
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(right: 10.0),
            child: Image.asset(
              image,
              height: 50.0,
              width: 90.0,
            ),
          ),
        ],
      ),
    );
  }
}
