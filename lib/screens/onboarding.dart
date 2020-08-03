import 'package:fitility/screens/blank.dart';
import 'package:fitility/screens/login.dart';
import 'package:fitility/services/transition.dart';
//import 'package:fitility/screens/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:fitility/screens/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:fitility/services/google_signin.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0.0,
      ),
      body: Stack(
        children: <Widget>[
          ///////////////////////////////////// BACKGROUND COLOUR //////////////////////////////////////////////////
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
                // stops: [0.0, 1.0, 1.0],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                ////////////////////////////// LOGO  /////////////////////////////////////////////////////////
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
                //////////////////////////// WELCOME TO FITILITY ///////////////////////////////////////////
                Padding(
                  padding: const EdgeInsets.only(left: 40.0, top: 15.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Welcome To Fitility',
                      style: TextStyle(
                        fontFamily: 'Rubik',
                        fontSize: 27,
                      ),
                    ),
                  ),
                ),
                //////////////////////////// SIGN IN TO CONTINUE ///////////////////////////////////////////
                Padding(
                  padding: const EdgeInsets.only(left: 40.0, top: 7.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Sign in to continue',
                      style: TextStyle(
                        fontFamily: 'Rubik Light',
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                //////////////////////////// SIGN IN WITH GOOGLE ///////////////////////////////////////////
                Padding(
                  padding: const EdgeInsets.only(top: 32.0),
                  child: _signInButtonGoogle(),
                ),
                ///////////////////////////////  OR  /////////////////////////////////////////////////
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
                ///////////////////////////// CREATE ACCOUNT ///////////////////////////////////////
                Padding(
                  padding:
                      const EdgeInsets.only(top: 10.0, left: 40.0, right: 40.0),
                  child: SizedBox(
                    // width: MediaQuery.of(context).size.width * 1.0,
                    child: RaisedButton(
                      splashColor: Colors.red,
                      onPressed: () {
                        Navigator.push(
                            context, SlideLeftRoute(page: Register()));
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
                          padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Expanded(
                                child: Center(
                                  child: Text(
                                    'Create  Account',
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
                ///////////////////////////  ALREADY HAVE AN ACCOUNT //////////////////////////
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Text(
                    'Already have an account?',
                    style: TextStyle(
                      fontFamily: 'Rubik Regular',
                      fontSize: 16,
                    ),
                  ),
                ),
                //////////////////////////// LOGIN  /////////////////////////////////////////////////
                Container(
                  child: FlatButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: () {
                      Navigator.push(context, SlideLeftRoute(page: Signin()));
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

                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    child: Image.asset('images/girl.png'),
                    height: 350,
                  ),
                ),
                /////////////////////////////  GIRL IMAGE  ///////////////////////////////////////////
              ],
            ),
          ),
        ],
      ),
    );
  }

//////////////////////////////////////////  SIGN IN WITH GOOGLE BUTTON //////////////////////////////////////////////
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
            // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Text(
                  'Sign in with Google ',
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
