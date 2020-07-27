import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String email;
  ProfileScreen({Key key, @required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text('Welcome ' + email, style: TextStyle(fontSize: 17)),
            automaticallyImplyLeading: false),
        body: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                color: Colors.red,
                textColor: Colors.white,
                child: Text('Click Here To Logout'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
