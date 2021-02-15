import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitility/services/messages.dart';
import 'package:fitility/services/sharedpref.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

FirebaseAuth auth = FirebaseAuth.instance;
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
      //print("The user id is : " + user.uid);
      SharedPrefHelper().saveUserId(user.uid);

      return Future.value(true);
    } else {
      return Future.value(false);
    }
  } catch (e) {
    return Future.value(false);
  }
}

Future<bool> SignUp(String email, String password, BuildContext context) async {
  try {
    AuthResult result = await auth.createUserWithEmailAndPassword(
        email: email, password: password);

    FirebaseUser user = result.user;
    SharedPrefHelper().saveUserId(user.uid);
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

Future<bool> SignIn(String email, String password, BuildContext context) async {
  try {
    AuthResult result =
        await auth.signInWithEmailAndPassword(email: email, password: password);

    FirebaseUser user = result.user;
    SharedPrefHelper().saveUserId(user.uid);
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

Future signOut() async {
  await gSignIn.signOut();
  await auth.signOut();
  final pref = await SharedPreferences.getInstance();
  await pref.clear();
  pref.setInt("notFirstTime", 1);
}
