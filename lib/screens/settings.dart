import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:auro_avatar/auro_avatar.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  String email = '';
  String name = '';
  bool account = false;
  bool support = false;
  bool editName = false;
  bool editEmail = false;
  bool editPhone = false;
  final db = Firestore.instance;
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();

  Future<String> getData() async {
    final FirebaseUser user = await FirebaseAuth.instance.currentUser();
    final String uid = user.uid.toString();
    return uid;
  }

  Stream<DocumentSnapshot> getUserStream() async* {
    final uid = await getData();
    yield* Firestore.instance.collection('users').document(uid).snapshots();
  }

  editNamew(String name) async {
    final lala = await getData();
    await db
        .collection('users')
        .document(lala)
        .updateData({'displayName': name});
  }

  editPhonew(String number) async {
    final lala = await getData();
    await db
        .collection('users')
        .document(lala)
        .updateData({'phoneNumber': number});
  }

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
                        StreamBuilder(
                          stream: getUserStream(),
                          builder: (BuildContext context, snapshot) {
                            if (snapshot.hasError)
                              return new Text('Error: ${snapshot.error}');
                            switch (snapshot.connectionState) {
                              case ConnectionState.waiting:
                                return new Text('Loading....');
                              default:
                                nameController.text =
                                    snapshot.data['displayName'];
                                phoneController.text =
                                    snapshot.data['phoneNumber'];
                                return Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        new InitialNameAvatar(
                                          nameController.text,
                                          circleAvatar: true,
                                          backgroundColor: Colors.white,
                                          foregroundColor: Colors.red.shade700,
                                          padding: 35.0,
                                          textSize: 31.0,
                                        ),
                                        SizedBox(
                                          width: 20.0,
                                        ),
                                        new Text(
                                          nameController.text,
                                          style: TextStyle(
                                            fontFamily: 'Rubik',
                                            fontSize: 31,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                );
                            }
                          },
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
                          Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 25.0),
                                      child: Text(
                                        'Name',
                                        style: TextStyle(
                                          fontFamily: 'Rubik',
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 25.0,
                                        right: 50.0,
                                      ),
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: InkWell(
                                          onTap: () async {
                                            editNamew(nameController.text);
                                            setState(() {
                                              editName = true;
                                            });
                                          },
                                          child: editName
                                              ? Text(
                                                  'Save',
                                                  style: TextStyle(
                                                    color: Colors.red.shade700,
                                                    fontSize: 13,
                                                    fontFamily: 'Rubik',
                                                  ),
                                                )
                                              : Text(
                                                  'Edit',
                                                  style: TextStyle(
                                                    color: Colors.red.shade700,
                                                    fontFamily: 'Rubik',
                                                    fontSize: 13,
                                                  ),
                                                ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 25.0, right: 90.0),
                                  child: TextFormField(
                                    controller: nameController,
                                    enabled: editName,
                                    style: TextStyle(
                                      fontFamily: 'Rubik',
                                      fontSize: 20,
                                    ),
                                    decoration: InputDecoration(
                                      hintText: 'Name',
                                      border: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.black,
                                          width: 1.5,
                                        ),
                                      ),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.black,
                                          width: 1.5,
                                        ),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.black,
                                          width: 1.5,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 25.0, top: 20.0),
                                      child: Text(
                                        'Phone',
                                        style: TextStyle(
                                          fontFamily: 'Rubik',
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 25.0, right: 50.0, top: 15.0),
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: InkWell(
                                          onTap: () async {
                                            editPhonew(phoneController.text);
                                            setState(() {
                                              editPhone = true;
                                            });
                                          },
                                          child: editPhone
                                              ? Text(
                                                  'Save',
                                                  style: TextStyle(
                                                    color: Colors.red.shade700,
                                                    fontSize: 13,
                                                  ),
                                                )
                                              : Text(
                                                  'Edit',
                                                  style: TextStyle(
                                                    color: Colors.red.shade700,
                                                    fontSize: 13,
                                                  ),
                                                ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 25.0, right: 90.0),
                                  child: TextFormField(
                                    controller: phoneController,
                                    enabled: editPhone,
                                    style: TextStyle(
                                      fontFamily: 'Rubik',
                                      fontSize: 20,
                                    ),
                                    decoration: InputDecoration(
                                      hintText: 'Phone',
                                      border: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.black,
                                          width: 3,
                                        ),
                                      ),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.black,
                                          width: 3,
                                        ),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.black,
                                          width: 3,
                                        ),
                                      ),
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
