import 'package:fitility/screens/newpage.dart';
import 'package:fitility/services/authenticate.dart';
import 'package:fitility/services/transition.dart';
import 'package:fitility/services/validation.dart';
import 'package:flutter/services.dart';
import 'login.dart';
import 'package:flutter/material.dart';
import 'package:fitility/services/google_signin.dart';
import 'package:progress_dialog/progress_dialog.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  ProgressDialog pr;
  final _formKey = GlobalKey<FormState>();
  TextEditingController firstnameController;
  TextEditingController lastnameController;
  TextEditingController emailController;
  TextEditingController numberController;
  TextEditingController passwordController;
  final AuthService _auth = AuthService();
  //final AuthServicee _authh = AuthServicee();

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
    pr = new ProgressDialog(context);
    pr.style(
      borderRadius: 10.0,
      backgroundColor: Colors.white,
      progressWidget: Theme(
        data: Theme.of(context).copyWith(accentColor: Colors.red.shade700),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: CircularProgressIndicator(),
        ),
      ),
      elevation: 10.0,
      insetAnimCurve: Curves.easeInOut,
      progress: 0.0,
      maxProgress: 100.0,
    );
    return Scaffold(
      /////////////////////////////////////////// BACK ARROW BUTTON ////////////////////////////////
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
                  padding: const EdgeInsets.only(left: 40.0, top: 70.0),
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
                                    labelStyle: TextStyle(
                                      color: Colors.black54,
                                    ),
                                    errorStyle: TextStyle(
                                      color: Colors.red.shade700,
                                    ),
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
                                    labelStyle: TextStyle(
                                      color: Colors.black54,
                                    ),
                                    errorStyle: TextStyle(
                                      color: Colors.red.shade700,
                                    ),
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
                            labelStyle: TextStyle(
                              color: Colors.black54,
                            ),
                            errorStyle: TextStyle(
                              color: Colors.red.shade700,
                            ),
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
                            labelStyle: TextStyle(
                              color: Colors.black54,
                            ),
                            errorStyle: TextStyle(
                              color: Colors.red.shade700,
                            ),
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
                          validator: mobileValidate,
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
                            labelStyle: TextStyle(
                              color: Colors.black54,
                            ),
                            errorStyle: TextStyle(
                              color: Colors.red.shade700,
                            ),
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
                      onPressed: () async {
                        if (_formKey.currentState.validate()) {
                          pr.show();
                          // ignore: unused_local_variable
                          String error = "";
                          dynamic result =
                              await _auth.registerWithEmailAndPassword(
                                  emailController.text,
                                  passwordController.text,
                                  firstnameController.text,
                                  lastnameController.text,
                                  numberController.text,
                                  context);
                          pr.hide();
                          if (result.runtimeType == PlatformException) {
                            if (result.message != null) {
                              setState(() {
                                error = result.message;
                              });
                            }
                          }
                        } else {
                          pr.hide();
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
                        SlideLeftRoute(page: Signin()),
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
          signInWithGoogle().then((value) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return GooglePage();
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
