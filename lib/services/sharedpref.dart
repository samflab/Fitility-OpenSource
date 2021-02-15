import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHelper {
  static String userIdkey = "USERKEY";

  // save data locally

  Future<bool> saveUserId(String userid) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userIdkey, userid);
  }

  // get data from sharedprferences

  Future<String> getUserId() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString(userIdkey);
  }
}
