import 'package:fitility/screens/blank.dart';
//import 'package:fitility/screens/profile.dart';
import 'package:fitility/services/validation.dart';
import 'login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fitility/services/google_signin.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController firstnameController;
  TextEditingController lastnameController;
  TextEditingController emailController;
  TextEditingController numberController;
  TextEditingController passwordController;

  @override
  initState() {
    firstnameController = new TextEditingController();
    lastnameController = new TextEditingController();
    emailController = new TextEditingController();
    numberController = new TextEditingController();
    passwordController = new TextEditingController();

    super.initState();
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
                                    labelText: 'First Name',
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
                                    disabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 1.0,
                                      ),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 1.0,
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color: Colors.black,
                                          width: 1.0,
                                        )),
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
                                  validator: nameValidate,
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
                                    labelText: 'Last Name',
                                    fillColor: Colors.white,
                                    filled: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 1.0,
                                      ),
                                    ),
                                    disabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 1.0,
                                      ),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 1.0,
                                      ),
                                    ),
                                    border: OutlineInputBorder(
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
                                      ),
                                    ),
                                  ),
                                  validator: nameValidate,
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
                            labelText: 'Email',
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
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1.0,
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1.0,
                              ),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 1.0,
                                )),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 1.5,
                                )),
                          ),
                          validator: emailValidator,
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
                            labelText: 'Phone',
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1.0,
                              ),
                            ),
                            border: OutlineInputBorder(
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
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1.0,
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1.0,
                              ),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1.5,
                              ),
                            ),
                          ),
                          validator: validateMobile,
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
                            labelText: 'Password',
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
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1.5,
                              ),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1.0,
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1.0,
                              ),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1.5,
                              ),
                            ),
                          ),
                          validator: passwordValidate,
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
                        if (_formKey.currentState.validate()) {
                          FirebaseAuth.instance
                              .createUserWithEmailAndPassword(
                                  email: emailController.text,
                                  password: passwordController.text)
                              .then((authResult) => Firestore.instance
                                  .collection("users")
                                  .document(authResult.user.uid)
                                  .setData({
                                    "uid": authResult.user.uid,
                                    "firstname": firstnameController.text,
                                    "lastname": lastnameController.text,
                                    "phone": numberController.text,
                                    "email": emailController.text
                                  })
                                  .then((result) => [
                                        Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Signin()),
                                            (_) => false),
                                        firstnameController.clear(),
                                        lastnameController.clear(),
                                        emailController.clear(),
                                        numberController.clear(),
                                        passwordController.clear()
                                      ])
                                  .catchError((err) => print(err)))
                              .catchError((err) => print(err));
                        }
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
                        MaterialPageRoute(builder: (context) => Signin()),
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
                  return Blank();
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
