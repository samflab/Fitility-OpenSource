import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHelper {
  static String userIdkey = "USERKEY";
  static String userFirstNamekey = "USERKEY";
  static String userLastNamekey = "USERKEY";
  static String userEmailkey = "USERKEY";
  static String userPhonekey = "USERKEY";
  static String rolekey = "ROLEKEY";

  // save data locally

  Future<bool> saveUserId(String userid) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userIdkey, userid);
  }

  Future<bool> saveUserFirstname(String firstName) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userFirstNamekey, firstName);
  }

  Future<bool> saveUserLastName(String lastname) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userLastNamekey, lastname);
  }

  Future<bool> saveUserEmail(String email) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userEmailkey, email);
  }

  Future<bool> saveUserphone(String phone) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userPhonekey, phone);
  }

  Future<bool> saveUserRole(String role) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(rolekey, role);
  }

  // get data from sharedprferences

  Future<String> getUserId() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString(userIdkey);
  }

  Future<String> getUserFirstName() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString(userFirstNamekey);
  }

  Future<String> getUserLastname() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString(userLastNamekey);
  }

  Future<String> getUserEmail() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString(userEmailkey);
  }

  Future<String> getUserPhone() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString(userPhonekey);
  }

  Future<String> getUserRole() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString(rolekey);
  }
}
