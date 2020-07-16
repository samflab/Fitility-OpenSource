//import 'package:fitility/screens/home.dart';
import 'package:fitility/screens/fitility_login.dart';
import 'package:fitility/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:fitility/screens/profle.dart';
import 'package:fitility/services/google_signin.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  //defining a form key to access the state of the form globally
  final _formKey = GlobalKey<FormState>();

//adding text editing controllers to the textformfields
  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final emailController = TextEditingController();
  final numberController = TextEditingController();
  final passwordController = TextEditingController();

// function for users to register on the app
  Future userRegistration() async {
    String fname = firstnameController.text;
    String lname = lastnameController.text;
    String email = emailController.text;
    String number = numberController.text;
    String password = passwordController.text;

    print(fname);
    print(lname);
    print(email);
    print(number);
    print(password);

    var url = 'https://solonian-radios.000webhostapp.com/register.php';
    var data = {
      'fname': fname,
      'lname': lname,
      'email': email,
      'number': number,
      'password': password
    };
    var response = await http.post(url, body: json.encode(data));
    var message = jsonDecode(response.body);
    if (message == 'User Registered Successfully') {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  ProfileScreen(email: emailController.text)));
      firstnameController.text = "";
      lastnameController.text = "";
      emailController.text = "";
      numberController.text = "";
      passwordController.text = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /////////////////////////////////////////// BACK ARROW BUTTON ////////////////////////////////
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 33.0, top: 18.0),
            child: Icon(
              Icons.arrow_back,
            ),
          ),
        ),
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Stack(
        children: <Widget>[
          ////////////////////////////////////// BACKGROUND IMAGE  ////////////////////////////////
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.0, -1.0),
                end: Alignment(0.0, 1.0),
                colors: [
                  const Color(0xffffffff),
                  const Color(0x00ffffff),
                  const Color(0xf6edf0f1),
                  const Color(0xffeceff1)
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                ///////////////////////////////  LOGO  ////////////////////////////////////////////
                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Image.asset(
                      'images/logo.png',
                      height: 70.0,
                    ),
                  ),
                ),
                ///////////////////////////////  CREATE YOUR ACCOUNT ////////////////////////////
                Padding(
                  padding: const EdgeInsets.only(left: 40.0, top: 15.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Create your Account',
                      style: TextStyle(
                        fontFamily: 'Rubik',
                        fontSize: 27,
                      ),
                    ),
                  ),
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            //////////////////////////  FIRST NAME  /////////////////////////////////
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 40.0,
                                ),
                                child: TextFormField(
                                  controller: firstnameController,
                                  autocorrect: true,
                                  decoration: InputDecoration(
                                    hintText: 'First Name',
                                    contentPadding: new EdgeInsets.symmetric(
                                        vertical: 15.0, horizontal: 10.0),
                                    fillColor: Colors.white,
                                    filled: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 1.0,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 1.5,
                                      ),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color: Colors.black,
                                          width: 1.5,
                                        )),
                                  ),
                                  validator: (value) => value.isEmpty
                                      ? 'First name can\'t be empty'
                                      : null,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            //////////////////////////  LAST NAME  /////////////////////////////////
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  right: 40.0,
                                ),
                                child: TextFormField(
                                  controller: lastnameController,
                                  autocorrect: true,
                                  decoration: InputDecoration(
                                      contentPadding: new EdgeInsets.symmetric(
                                          vertical: 15.0, horizontal: 10.0),
                                      hintText: 'Last Name',
                                      fillColor: Colors.white,
                                      filled: true,
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color: Colors.black,
                                          width: 1.0,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color: Colors.black,
                                          width: 1.5,
                                        ),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: Colors.black,
                                            width: 1.5,
                                          ))),
                                  validator: (value) => value.isEmpty
                                      ? 'This field can\'t be empty'
                                      : null,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      //////////////////////////  EMAIL  /////////////////////////////////
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                        child: TextFormField(
                          controller: emailController,
                          autocorrect: true,
                          decoration: InputDecoration(
                            contentPadding: new EdgeInsets.symmetric(
                                vertical: 15.0, horizontal: 10.0),
                            hintText: 'Email',
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1.5,
                              ),
                            ),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 1.5,
                                )),
                          ),
                          validator: (value) => value.isEmpty
                              ? 'This field can\'t be empty'
                              : null,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      //////////////////////////  PHONE  /////////////////////////////////
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                        child: TextFormField(
                          controller: numberController,
                          autocorrect: true,
                          decoration: InputDecoration(
                              contentPadding: new EdgeInsets.symmetric(
                                  vertical: 15.0, horizontal: 10.0),
                              hintText: 'Phone',
                              fillColor: Colors.white,
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 1.0,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 1.5,
                                ),
                              ),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                    width: 1.5,
                                  ))),
                          validator: (value) => value.isEmpty
                              ? 'Please enter your phone number'
                              : null,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      //////////////////////////  PASSWORD  /////////////////////////////////
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                        child: TextFormField(
                          controller: passwordController,
                          autocorrect: true,
                          obscureText: true,
                          decoration: InputDecoration(
                              contentPadding: new EdgeInsets.symmetric(
                                  vertical: 15.0, horizontal: 10.0),
                              hintText: 'Password',
                              fillColor: Colors.white,
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 1.0,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 1.5,
                                ),
                              ),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                    width: 1.5,
                                  ))),
                          validator: (value) => value.length < 8
                              ? 'Minimum length of the password is 8'
                              : null,
                        ),
                      ),
                    ],
                  ),
                ),
                //////////////////////////  SIGN UP  /////////////////////////////////
                Padding(
                  padding:
                      const EdgeInsets.only(top: 10.0, left: 40.0, right: 40.0),
                  child: SizedBox(
                    child: RaisedButton(
                      splashColor: Colors.red,
                      onPressed: () {
                        //if all the fields are validated then user registration function will execute
                        if (_formKey.currentState.validate())
                          userRegistration();
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.all(0.0),
                      elevation: 3.0,
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.red.shade700, Colors.red.shade900],
                            begin: Alignment(0.0, -1.0),
                            end: Alignment(0.0, 1.0),
                            stops: [0.0, 1.0],
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding:
                              const EdgeInsets.only(top: 15.0, bottom: 15.0),
                          child: Row(
                            // width: MediaQuery.of(context).size.width * 0.79,
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Expanded(
                                child: Center(
                                  child: Text(
                                    'Sign Up',
                                    style: TextStyle(
                                      fontFamily: 'Rubik Medium',
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey.shade100,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                //////////////////////////  OR  /////////////////////////////////
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    'or',
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 18,
                    ),
                  ),
                ),
                //////////////////////////  GOOGLE SIGN IN  /////////////////////////////////
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: _signInButtonGoogle(),
                ),
                //////////////////////////  ALREADY HAVE AN ACCOUNT  /////////////////////////////////
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text(
                      'Already have an account?',
                      style: TextStyle(
                        fontFamily: 'Rubik Regular',
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                //////////////////////////  LOGIN BUTTON  /////////////////////////////////
                Center(
                  child: FlatButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontFamily: 'Rubik Medium',
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.red.shade900),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

//////////////////////////////////////////  SIGN IN WITH GOOGLE BUTTON  ///////////////////////////////////////
  Widget _signInButtonGoogle() {
    return Padding(
      padding: const EdgeInsets.only(left: 40.0, right: 40.0),
      child: RaisedButton(
        splashColor: Colors.grey,
        onPressed: () {
          signInWithGoogle().whenComplete(() {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return Profile();
                },
              ),
            );
          });
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: Colors.black),
        ),
        color: Colors.grey.shade100,
        elevation: 3.0,
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          child: Row(
            //mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Text(
                  'Sign in with Google  ',
                  style: TextStyle(
                    fontFamily: 'Rubik',
                    fontSize: 17,
                  ),
                ),
              ),
              Image(image: AssetImage("images/google.png"), height: 30.0),
            ],
          ),
        ),
      ),
    );
  }
}
