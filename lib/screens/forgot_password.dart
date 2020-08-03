import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitility/services/validation.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class Password extends StatefulWidget {
  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0.0,
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
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Stack(
        children: <Widget>[
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
                Padding(
                  padding: const EdgeInsets.only(left: 40.0, top: 15.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Forgot Password?',
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
                        padding: const EdgeInsets.only(
                            left: 40.0, top: 12.0, right: 40.0),
                        child: TextFormField(
                          controller: emailController,
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
                          ),
                          validator: emailValidator,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                        child: SizedBox(
                          child: RaisedButton(
                            splashColor: Colors.red,
                            onPressed: () {
                              if (_formKey.currentState.validate()) {
                                FirebaseAuth.instance
                                    .sendPasswordResetEmail(
                                        email: emailController.text)
                                    .then((value) => Toast.show(
                                        'Password reset link has been sent to this email',
                                        context,
                                        duration: Toast.LENGTH_LONG,
                                        gravity: Toast.TOP,
                                        backgroundColor: Colors.red.shade700,
                                        textColor: Colors.white,
                                        backgroundRadius: 15));
                              }
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            padding: EdgeInsets.all(0.0),
                            elevation: 3.0,
                            child: Ink(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.red.shade700,
                                    Colors.red.shade900
                                  ],
                                  begin: Alignment(0.0, -1.0),
                                  end: Alignment(0.0, 1.0),
                                  stops: [0.0, 1.0],
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 15.0, bottom: 15.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Expanded(
                                      child: Center(
                                        child: Text(
                                          'Submit',
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
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
