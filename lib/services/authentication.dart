import 'package:firebase_auth/firebase_auth.dart';

import 'package:fitility/services/messages.dart';
import 'package:fitility/services/sharedpref.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseAuth auth = FirebaseAuth.instance;
Firestore _db = Firestore.instance;
final gSignIn = GoogleSignIn();
AuthResult result;
bool check = false;

Widget confirmEmailBox() {
  if (check) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text(
                  "Please verify your email. Email verification link has been sent to your email ID",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      result.user.sendEmailVerification();
                      Fluttertoast.showToast(
                          msg: "Sent the link",
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.BOTTOM,
                          backgroundColor: Color(0xffdc2126),
                          textColor: Colors.white,
                          fontSize: 16.0);
                    },
                    child: Container(
                      height: 40.0,
                      width: 120.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Text(
                          "Resend Link",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 20.0,
                            fontFamily: 'Rubik',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          decoration: new BoxDecoration(
            borderRadius: new BorderRadius.circular(10.0),
            color: Colors.red,
          ),
        ),
      ),
    );
  } else
    return Container();
}

Future<bool> confirmEmail(AuthResult result, BuildContext context) async {
  if (!result.user.isEmailVerified) {
    await result.user.sendEmailVerification();
    check = true;
  }
  return check;
}

Future<bool> googleSignIn() async {
  try {
    GoogleSignInAccount googleSignInAccount = await gSignIn.signIn();

    if (googleSignInAccount != null) {
      GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;

      AuthCredential credential = GoogleAuthProvider.getCredential(
          idToken: googleSignInAuthentication.idToken,
          accessToken: googleSignInAuthentication.accessToken);

      await auth.signInWithCredential(credential);

      FirebaseUser user = await auth.currentUser();
      await saveUsertoDb(
        firstName: user.displayName.split(" ")[0],
        lastname: user.displayName.split(" ")[1],
        phone: user.phoneNumber,
        user: user,
      );
      //print("The user id is : " + user.uid);
      await SharedPrefHelper().saveUserId(user.uid);
      await SharedPrefHelper()
          .saveUserFirstname(user.displayName.split(" ")[0]);
      await SharedPrefHelper().saveUserLastName(user.displayName.split(" ")[1]);
      await SharedPrefHelper().saveUserEmail(user.email);
      await SharedPrefHelper().saveUserphone(user.phoneNumber);
      await SharedPrefHelper().saveUserRole("user");

      return Future.value(true);
    } else {
      return Future.value(false);
    }
  } catch (e) {
    return Future.value(false);
  }
}

Future<bool> signUp({
  String firstName,
  String lastName,
  String email,
  String phone,
  String password,
  BuildContext context,
}) async {
  try {
    AuthResult result = await auth.createUserWithEmailAndPassword(
        email: email, password: password);

    FirebaseUser user = result.user;
    await saveUsertoDb(
      firstName: firstName,
      lastname: lastName,
      phone: phone,
      user: user,
    );
    await SharedPrefHelper().saveUserId(user.uid);
    await SharedPrefHelper().saveUserFirstname(firstName);
    await SharedPrefHelper().saveUserLastName(lastName);
    await SharedPrefHelper().saveUserEmail(email);
    await SharedPrefHelper().saveUserphone(phone);
    await SharedPrefHelper().saveUserRole("user");
    print(email);
    print(password);
    confirmEmail(result, context);
    return Future.value(true);
  } catch (e) {
    String error = e
        .toString()
        .split(",")[0]
        .split("(")[1]
        .replaceAll("ERROR_", "")
        .replaceAll("_", " ");
    await messageBoxDialog(error, context);
    return Future.value(false);
  }
}

Future<String> signIn(
    String email, String password, BuildContext context) async {
  try {
    AuthResult result =
        await auth.signInWithEmailAndPassword(email: email, password: password);
    FirebaseUser user = result.user;

    //EMAIL VERIFICATION
    //confirmEmail(result, context);

    String role = "user";
    String userFirstname = "";
    String userLastname = "";
    String userPhone = "";
    await Firestore.instance
        .collection("users")
        .document(user.uid)
        .get()
        .then((value) async {
      userFirstname = value.data["userFirstName"].toString();
      userLastname = value.data["userLastName"].toString();
      userPhone = value.data["userPhone"].toString();
      if (value.data["role"].toString() != "user") {
        role = "admin";
      }
    });
    await SharedPrefHelper().saveUserId(user.uid);
    await SharedPrefHelper().saveUserFirstname(userFirstname);
    await SharedPrefHelper().saveUserLastName(userLastname);
    await SharedPrefHelper().saveUserEmail(email);
    await SharedPrefHelper().saveUserphone(userPhone);
    await SharedPrefHelper().saveUserRole(role);
    print(email);
    print(password);
    return role;
  } catch (e) {
    String error = e
        .toString()
        .split(",")[0]
        .split("(")[1]
        .replaceAll("ERROR_", "")
        .replaceAll("_", " ");
    await messageBoxDialog(error, context);
    return "fail";
  }
}

Future signOut() async {
  await gSignIn.signOut();
  await auth.signOut();
  final pref = await SharedPreferences.getInstance();
  await pref.clear();
  pref.setInt("notFirstTime", 1);
}

Future<bool> passwordReset(String email, BuildContext context) async {
  try {
    await auth.sendPasswordResetEmail(email: email);
    return Future.value(true);
  } catch (e) {
    String error = e
        .toString()
        .split(",")[0]
        .split("(")[1]
        .replaceAll("ERROR_", "")
        .replaceAll("_", " ");
    await messageBoxDialog(error, context);
    return Future.value(false);
  }
}

Future<void> saveUsertoDb({
  String firstName,
  String lastname,
  String phone,
  FirebaseUser user,
}) async {
  Map<String, dynamic> userdataMap = {
    "userFirstName": firstName,
    "userLastName": lastname,
    "userEmail": user.email,
    "userPhone": phone,
    "role": "user",
  };
  final userRef = _db.collection("users").document(user.uid);
  if (!(await userRef.get()).exists) {
    await userRef.setData(userdataMap);
  }
}

Future<void> updateUserName(String userId, String userFullname) async {
  String firstname, lastname;
  if (userFullname.indexOf(" ") >= 0) {
    firstname = userFullname.toString().split(" ")[0];
    lastname = userFullname.toString().split(" ")[1];
  } else {
    firstname = userFullname;
    lastname = "";
  }
  try {
    Firestore.instance.collection("users").document(userId).updateData({
      "userFirstName": firstname,
      "userLastName": lastname,
    });
  } catch (e) {
    print(e.toString());
  }
}

Future<void> updateUserPhone(String userId, String userPhone) async {
  try {
    Firestore.instance.collection("users").document(userId).updateData({
      "userPhone": userPhone,
    });
  } catch (e) {
    print(e.toString());
  }
}
