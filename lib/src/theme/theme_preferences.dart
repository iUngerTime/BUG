import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemePreferences {
  static const themePrefKey = 'theme_pref_key';
  static const darkTheme = 1;
  static const lightTheme = 2;

  setTheme(ThemeMode newTheme) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    var themeInt = (newTheme == ThemeMode.light ? lightTheme : darkTheme);
    sharedPreferences.setInt(themePrefKey, themeInt);
  }

  Future<ThemeMode> getTheme() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var themeInt = sharedPreferences.getInt(themePrefKey) ?? lightTheme;

    return (themeInt == lightTheme ? ThemeMode.light : ThemeMode.dark);
  }
}
