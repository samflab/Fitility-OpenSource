import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitility/services/messages.dart';
import 'package:fitility/services/sharedpref.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseAuth auth = FirebaseAuth.instance;
Firestore _db = Firestore.instance;
final gSignIn = GoogleSignIn();

Future<bool> googleSignIn() async {
  try {
    GoogleSignInAccount googleSignInAccount = await gSignIn.signIn();

    if (googleSignInAccount != null) {
      GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;

      AuthCredential credential = GoogleAuthProvider.getCredential(
          idToken: googleSignInAuthentication.idToken,
          accessToken: googleSignInAuthentication.accessToken);

      AuthResult result = await auth.signInWithCredential(credential);

      FirebaseUser user = await auth.currentUser();
      await saveUsertoDb(user);
      print("The user id is : " + user.uid);
      await SharedPrefHelper().saveUserId(user.uid);
      await SharedPrefHelper().saveUserRole("user");

      return Future.value(true);
    } else {
      return Future.value(false);
    }
  } catch (e) {
    return Future.value(false);
  }
}

Future<bool> signUp(String email, String password, BuildContext context) async {
  try {
    AuthResult result = await auth.createUserWithEmailAndPassword(
        email: email, password: password);

    FirebaseUser user = result.user;
    await saveUsertoDb(user);
    await SharedPrefHelper().saveUserId(user.uid);
    await SharedPrefHelper().saveUserRole("user");
    print(email);
    print(password);
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
    await SharedPrefHelper().saveUserId(user.uid);
    String role = "user";
    await Firestore.instance
        .collection("users")
        .document(user.uid)
        .get()
        .then((value) async {
      if (value.data["role"].toString() != "user") {
        role = "admin";
      }
    });
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

Future<void> saveUsertoDb(FirebaseUser user) async {
  Map<String, dynamic> userdataMap = {
    "userEmail": user.email,
    "role": "user",
  };
  final userRef = _db.collection("users").document(user.uid);
  if (!(await userRef.get()).exists) {
    await userRef.setData(userdataMap);
  }
}
