import 'package:fitility/screens/diet_veg.dart';
import 'package:fitility/services/transition.dart';
import 'package:fitility/widgets/appbar.dart';
import 'package:fitility/widgets/bottomNavigation.dart';
import 'package:flutter/material.dart';

class DietNonVeg extends StatefulWidget {
  @override
  _DietNonVegState createState() => _DietNonVegState();
}

class _DietNonVegState extends State<DietNonVeg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(context),
      bottomNavigationBar: customBottomNavigationBar(context),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        FadeRoute(page: DietVeg()),
                      );
                    },
                    child: Categorycard(isVeg: true),
                  ),
                  Categorycard(isVeg: false),
                ],
              ),
              SizedBox(height: 20.0),
              MainTitleText(
                text: "Daily Diet Plan",
              ),
              SizedBox(height: 8.0),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25.0),
                height: 2.0,
                color: Color(0xffdc2126),
              ),
              SizedBox(height: 5.0),
              CustomCard(
                image: 'images/lime.png',
                title: "Early Morning",
                text:
                    "Lime water (lukewarm) with Honey/Amla Juice/ Aloe Vera Juice",
              ),
              CustomCard(
                image: 'images/breakfast.png',
                title: "Breakfast \n(within 1/2 hour of waking up)",
                text:
                    "High fibre cereals - Oats, 2 slices of multi grain bread, wheat flakes + high protein milk/curd + 1 fruit",
              ),
              CustomCard(
                image: 'images/cucumber.png',
                title: "Mid-morning \n(Within 3 hours of breakfast)",
                text: "1 fruit or cucumber with peel",
              ),
              CustomCard(
                image: 'images/lunch.png',
                title: "Lunch \n(Around 1-2 pm)",
                text:
                    "1 bowl of salad + 1 roti with a bowl of vegetables + 1/2 bowl of rice + 1 bowl of dal",
              ),
              CustomCard(
                image: 'images/crops.png',
                title: "Post Lunch \n(1 hour post lunch)",
                text: "1 glass of buttermilk + 1 fruit",
              ),
              CustomCard(
                image: 'images/Flat.png',
                title: "Evening Snacks \n(3 hours post lunch)",
                text: "1 cup of green tea + 1 bowl of popcorn",
              ),
              CustomCard(
                image: 'images/omelette.png',
                title: "Dinner \n(2-3 hours post evening snacks)",
                text:
                    "1 bowl of soup / 2 bowls of salad \n+ 1 roti with 50g of grilled chicken \n+ bowl of vegetables",
              ),
              CustomCard(
                image: 'images/papaya.png',
                title: "Post dinner \n(1/2 hour before bed)",
                text: "1 fruit (preferably papaya)",
              ),
              SizedBox(
                height: 15.0,
              ),
              MainTitleText(
                text: "Water Intake",
              ),
              SizedBox(height: 8.0),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25.0),
                height: 2.0,
                color: Color(0xffdc2126),
              ),
              SizedBox(height: 5.0),
              CustomCard(
                image: 'images/water.png',
                title: "\n8-10 glasses a day",
                text: "",
              ),
              SizedBox(
                height: 15.0,
              ),
              MainTitleText(
                text: "Workout Diet",
              ),
              SizedBox(height: 8.0),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25.0),
                height: 2.0,
                color: Color(0xffdc2126),
              ),
              SizedBox(height: 5.0),
              CustomCard(
                image: 'images/energy-bar.png',
                title: "Before workout (Half hour before)",
                text:
                    "Small snack of protein + carbohydrates(Energy bar/mixed nuts)",
              ),
              CustomCard(
                image: 'images/bottle.png',
                title: "During workout",
                text: "Sip water (at room temperature) in every break",
              ),
              CustomCard(
                image: 'images/banana.png',
                title: "After workout",
                text:
                    "Small snack of protein + carbohydrates (Energy bar/banana)",
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                color: Color(0xffeceff1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Note",
                      style: TextStyle(
                        color: Color(0xff181818),
                        fontFamily: 'Rubik' 'Regular',
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      "For those trying to lose weight, diets high in protein and fibre are likely to curb carvings and make you feel less hungry. If you feel week or faint, chances are that your diet is low in either carbohydrates or protein. \nAvoid foods / drinks with added artificial / processed sugar. Switch to honey and natural sugar.",
                      style: TextStyle(
                        color: Color(0xff181818),
                        fontFamily: 'Rubik' 'Regular',
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                      ),
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

class MainTitleText extends StatelessWidget {
  final String text;
  MainTitleText({this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 20.0,
          alignment: Alignment.centerLeft,
          child: Image.asset(
            'images/bullet.png',
            height: 6.0,
            width: 17.0,
          ),
        ),
        SizedBox(width: 5.0),
        Text(
          text,
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.w500,
            fontFamily: 'Rubik Medium' 'Regular',
            color: Color(0xff181818),
          ),
        ),
      ],
    );
  }
}

class CustomCard extends StatelessWidget {
  final String image;
  final String title;
  final String text;

  CustomCard({this.image, this.title, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Color(0xfff8fafa),
        borderRadius: BorderRadius.circular(5.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 5.0,
            offset: Offset(0, 3.0),
          ),
        ],
      ),
      child: Row(
        children: [
          SizedBox(width: 5.0),
          Image.asset(
            image,
            height: 40.0,
            width: 40.0,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Color(0xffdc2126),
                      fontFamily: 'Rubik',
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    text,
                    style: TextStyle(
                      color: Color(0xff181818),
                      fontSize: 13.0,
                      fontFamily: 'Rubik',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Categorycard extends StatelessWidget {
  final bool isVeg;
  Categorycard({this.isVeg});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46.0,
      width: 130.0,
      decoration: BoxDecoration(
        color: isVeg ? Color(0xffeceff1) : Color(0xffdc2126),
        borderRadius: BorderRadius.circular(5.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.7),
            blurRadius: 6.0,
            offset: Offset(0, 3.0),
          ),
        ],
      ),
      child: Center(
        child: Text(
          isVeg ? "Veg" : "Non-veg",
          style: TextStyle(
            color: isVeg ? Color(0xff181818) : Colors.white,
            fontSize: 16.0,
            fontFamily: 'Rubik' 'Regular',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
