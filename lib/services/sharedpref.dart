import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHelper {
  static String userIdkey = "USERKEY";
  static String rolekey = "ROLEKEY";

  // save data locally

  Future<bool> saveUserId(String userid) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userIdkey, userid);
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

  Future<String> getUserRole() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString(rolekey);
  }
}
