import 'package:fitility/models/user.dart';
import 'package:fitility/screens/blank.dart';
import 'package:fitility/screens/login.dart';
import 'package:fitility/services/messages.dart';
import 'package:fitility/services/transition.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthService {
  var errorMessage = "";
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User _userFromFirebaseUser(FirebaseUser user) {
    return user != null
        ? User(uid: user.uid, email: user.email, name: user.displayName)
        : null;
  }

  Stream<User> get user {
    return _auth.onAuthStateChanged.map(_userFromFirebaseUser);
  }

  Future registerWithEmailAndPassword(String email, String password,
      String fname, String lname, String number, var context) async {
    FirebaseUser user;
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      user = result.user;
      Firestore.instance.collection("users").document(user.uid).setData({
        "uid": user.uid,
        "displayName": fname + " " + lname,
        "phoneNumber": number,
        "email": email
      });

      Navigator.pushReplacement(
        context,
        SlideLeftRoute(
          page: Signin(),
        ),
      );
    } catch (error) {
      switch (error.code) {
        case "ERROR_OPERATION_NOT_ALLOWED":
          errorMessage = "Anonymous accounts are not enabled";
          break;
        case "ERROR_WEAK_PASSWORD":
          errorMessage = "Your password is too weak";
          break;
        case "ERROR_INVALID_EMAIL":
          errorMessage = "Your email is invalid";
          break;
        case "ERROR_EMAIL_ALREADY_IN_USE":
          errorMessage =
              "Email is already in use on different account, try logging in with Google.";
          break;
        case "ERROR_INVALID_CREDENTIAL":
          errorMessage = "Your email is invalid.";
          break;

        default:
          errorMessage = "An undefined error happened.";
      }
    }
    if (errorMessage != null) {
      if (errorMessage == "") {
        return messageBoxDialog('Thank you for registering with us', context);
      }
      return messageBoxDialog(errorMessage, context);
    }

    return user.uid;
  }

  Future loginWithEmailAndPassword(
      String email, String password, var context) async {
    FirebaseUser user;
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      user = result.user;
      Navigator.pushReplacement(
        context,
        FadeRoute(
          page: Blank(),
        ),
      );
    } catch (error) {
      switch (error.code) {
        case "ERROR_INVALID_EMAIL":
          errorMessage = 'Your email address appears to be malformed';
          break;
        case "ERROR_WRONG_PASSWORD":
          errorMessage = "Your password is wrong";
          break;
        case "ERROR_USER_NOT_FOUND":
          errorMessage = "User with this email address doesn'\t exists";
          break;

        case "ERROR_USER_DISABLED":
          errorMessage = "User with this email id has been disabled.";
          break;
        case "ERROR_TOO_MANY_REQUESTS":
          errorMessage = "Too many requests. Try again later.";
          break;

        case "ERROR_OPERATION_NOT_ALLOWED":
          errorMessage = "Signing in with this email and password not allowed.";
          break;
        default:
          errorMessage = "An undefined error occured";
          break;
      }
    }
    if (errorMessage != null) {
      if (errorMessage == "") {
        return messageBoxDialog('Welcome to Fitility', context);
      }
      return messageBoxDialog(errorMessage, context);
    }

    return user;
  }
}
