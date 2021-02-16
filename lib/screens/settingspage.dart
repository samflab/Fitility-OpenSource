import 'package:fitility/screens/login.dart';
import 'package:fitility/services/authentication.dart';
import 'package:fitility/services/transition.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isAccountActive = false, isSupportActive = false;
  bool isNameEditing = false,
      isEmailEditing = false,
      isPhoneEditing = false,
      isPasswordEditing = false;
  TextEditingController nameController =
      TextEditingController(text: "John Doe");
  TextEditingController emailController =
      TextEditingController(text: "johndoe@email.com");
  TextEditingController phoneController =
      TextEditingController(text: "1234567890");
  TextEditingController passwordController =
      TextEditingController(text: "JohnDoe1234");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffdc2126),
        toolbarHeight: 100.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Row(
                children: [
                  Container(
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                      color: Color(0xfff8fafa),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Center(
                      child: Text(
                        "JD",
                        style: TextStyle(
                          color: Color(0xffdc2126),
                          fontSize: 25.0,
                          fontFamily: 'Rubik',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    "John Doe",
                    style: TextStyle(
                      color: Color(0xfff8fafa),
                      fontSize: 25.0,
                      fontFamily: 'Rubik',
                    ),
                  ),
                  SizedBox(width: 20.0),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height - 130.0),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xffffffff),
                Color(0xffedf0f1),
                Color(0xffeceff1),
              ],
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 15.0),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isAccountActive = !isAccountActive;
                    isSupportActive = false;
                  });
                },
                child: Container(
                  color: Color(0xffffffff),
                  margin: EdgeInsets.symmetric(horizontal: 25.0),
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Account",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Icon(
                        isAccountActive
                            ? Icons.keyboard_arrow_down
                            : Icons.keyboard_arrow_right,
                        color: Color(0xffdc2126),
                        size: 30.0,
                      ),
                    ],
                  ),
                ),
              ),
              isAccountActive
                  ? Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 35.0, vertical: 5.0),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.black,
                                width: 2.0,
                              ),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Name",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: AbsorbPointer(
                                            absorbing: !isNameEditing,
                                            child: TextField(
                                              controller: nameController,
                                              style: TextStyle(
                                                fontSize: 22.0,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: 'Rubik',
                                              ),
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                              ),
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              isNameEditing = !isNameEditing;
                                            });
                                          },
                                          child: Text(
                                            isNameEditing ? "Save" : "Edit",
                                            style: TextStyle(
                                              color: Color(0xffdc2126),
                                              fontSize: 18.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 35.0, vertical: 5.0),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.black,
                                width: 2.0,
                              ),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Email",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: AbsorbPointer(
                                            absorbing: !isEmailEditing,
                                            child: TextField(
                                              controller: emailController,
                                              style: TextStyle(
                                                fontSize: 20.0,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: 'Rubik',
                                              ),
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                              ),
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              isEmailEditing = !isEmailEditing;
                                            });
                                          },
                                          child: Text(
                                            isEmailEditing ? "Save" : "Edit",
                                            style: TextStyle(
                                              color: Color(0xffdc2126),
                                              fontSize: 18.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 35.0, vertical: 10.0),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.black,
                                width: 2.0,
                              ),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Phone",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: AbsorbPointer(
                                            absorbing: !isPhoneEditing,
                                            child: TextField(
                                              controller: phoneController,
                                              style: TextStyle(
                                                fontSize: 22.0,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: 'Rubik',
                                              ),
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                              ),
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              isPhoneEditing = !isPhoneEditing;
                                            });
                                          },
                                          child: Text(
                                            isPhoneEditing ? "Save" : "Edit",
                                            style: TextStyle(
                                              color: Color(0xffdc2126),
                                              fontSize: 18.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 35.0, vertical: 5.0),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.black,
                                width: 2.0,
                              ),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Password",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: AbsorbPointer(
                                            absorbing: !isPasswordEditing,
                                            child: TextField(
                                              obscureText: true,
                                              controller: passwordController,
                                              style: TextStyle(
                                                fontSize: 22.0,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: 'Rubik',
                                              ),
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                              ),
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              isPasswordEditing =
                                                  !isPasswordEditing;
                                            });
                                          },
                                          child: Text(
                                            isPasswordEditing ? "Save" : "Edit",
                                            style: TextStyle(
                                              color: Color(0xffdc2126),
                                              fontSize: 18.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  : Container(),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isSupportActive = !isSupportActive;
                    isAccountActive = false;
                  });
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 25.0),
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Support",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Icon(
                        isSupportActive
                            ? Icons.keyboard_arrow_down
                            : Icons.keyboard_arrow_right,
                        color: Color(0xffdc2126),
                        size: 30.0,
                      ),
                    ],
                  ),
                ),
              ),
              isSupportActive
                  ? Container(
                      margin: EdgeInsets.only(
                        left: 35.0,
                        top: 10.0,
                        right: 35.0,
                        bottom: 20.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Email at",
                            style: TextStyle(
                              color: Color(0xff181818),
                              fontSize: 18.0,
                              fontFamily: 'Rubik',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "fitility.app@gmail.com",
                            style: TextStyle(
                              color: Color(0xffdc2126),
                              fontSize: 14.0,
                              fontFamily: 'Rubik',
                            ),
                          ),
                        ],
                      ),
                    )
                  : SizedBox(height: 20.0),
              SizedBox(height: 10.0),
              Container(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    signOut().whenComplete(() {
                      Navigator.pushReplacement(
                        context,
                        FadeRoute(page: Signin()),
                      );
                    });
                  },
                  child: Container(
                    height: 50.0,
                    width: 120.0,
                    decoration: BoxDecoration(
                      color: Color(0xffdc2126),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Center(
                      child: Text(
                        "Log Out",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontFamily: 'Rubik',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 62.0),
              Container(
                alignment: Alignment.bottomRight,
                child: Image.asset(
                  'images/dumble.png',
                  height: 330.0,
                  width: 330.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
