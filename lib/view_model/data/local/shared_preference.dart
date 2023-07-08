import 'package:shared_preferences/shared_preferences.dart';

class Shared {
  static SharedPreferences? sharedPreference;

  static Future<void> init() async {
    sharedPreference = await SharedPreferences.getInstance();
  }

  static Future<void> set(String key, dynamic value) async {
    if (value is int) {
      await sharedPreference?.setInt(key, value);
    } else if (value is String) {
      print('before');
      await sharedPreference?.setString(key, value).then((value) => print('After Set String $value'));
      print('after');
    } else if (value is bool) {
      await sharedPreference?.setBool(key, value);
    } else if (value is double) {
      await sharedPreference?.setDouble(key, value);
    } else {
      print('There\'s an Error');
    }
  }

  static get(String key) {
    return sharedPreference?.get(key);
  }

  static removeKey(String key){
    sharedPreference?.remove(key);
  }

  static clear(){
    sharedPreference?.clear();
  }
}
