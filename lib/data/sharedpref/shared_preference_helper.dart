import 'package:shared_preferences/shared_preferences.dart';

import 'constants/preferences.dart';

class SharedPreferenceHelper {
  static late SharedPreferences _prefs;

  // call this method from iniState() function of mainApp().
  static Future<SharedPreferences> init() async {
    _prefs = await SharedPreferences.getInstance();
    return _prefs;
  }

  //language
  static Future<bool> setLanguage(String val) async =>
      await _prefs.setString(Preferences.LANG, val);

  static String get language => _prefs.getString(Preferences.LANG) ?? 'en';

  //deletes
  static Future<bool> remove(String key) async => await _prefs.remove(key);

  // clear
  static Future<bool> clear() async => await _prefs.clear();
}
