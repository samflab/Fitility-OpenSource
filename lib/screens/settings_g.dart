import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitility/services/google_signin.dart';

class SettingsG extends StatefulWidget {
  @override
  _SettingsGState createState() => _SettingsGState();
}

class _SettingsGState extends State<SettingsG> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red.shade700,
          automaticallyImplyLeading: false,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
            ),
          ),
          elevation: 0.0,
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
                  Container(
                    color: Colors.red.shade700,
                    height: 149.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: NetworkImage(imageUrl),
                          radius: 35,
                          //backgroundColor: Colors.transparent,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          name,
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontFamily: 'Rubik',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 26.0),
                    child: Theme(
                      data: ThemeData(
                        unselectedWidgetColor: Colors.red.shade700,
                        accentColor: Colors.red.shade700,
                        dividerColor: Colors.transparent,
                      ),
                      child: ExpansionTile(
                        title: Text(
                          'Account',
                          style: TextStyle(
                            fontFamily: 'Rubik',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        children: <Widget>[
                          Text(
                            'Name',
                            style: TextStyle(
                              fontFamily: 'Rubik',
                              fontSize: 10,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            name,
                            style: TextStyle(
                              fontFamily: 'Rubik',
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Email',
                            style: TextStyle(
                              fontFamily: 'Rubik',
                              fontSize: 10,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            email,
                            style: TextStyle(
                              fontFamily: 'Rubik',
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 26.0),
                    child: Theme(
                      data: ThemeData(
                        unselectedWidgetColor: Colors.red.shade700,
                        accentColor: Colors.red.shade700,
                        dividerColor: Colors.transparent,
                      ),
                      child: ExpansionTile(
                        title: Text(
                          'Support',
                          style: TextStyle(
                            fontFamily: 'Rubik',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Email at',
                                  style: TextStyle(
                                      fontFamily: 'Rubik', fontSize: 20),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 53.0, right: 40.0),
                                  child: Text(
                                    'rhythmicfeet.rfda@gmail.com',
                                    style: TextStyle(
                                      color: Colors.red.shade700,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 26.0, right: 26.0, top: 20.0),
                    child: RaisedButton(
                      onPressed: () {
                        FirebaseAuth.instance
                            .signOut()
                            .then((result) => Navigator.pushReplacementNamed(
                                context, "/splash"))
                            .catchError((err) => print(err));
                        Navigator.pop(context);
                      },
                      splashColor: Colors.red,
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
                                    'Logout',
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
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 91.0),
                      child: Container(
                        child: Image(
                          image: AssetImage('images/dumble.png'),
                          height: 380,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
