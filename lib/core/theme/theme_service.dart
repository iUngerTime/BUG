import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:json_theme/json_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeService extends GetxController {
  late ThemeMode _themeMode;

  static const themePrefKey = 'theme_pref_key';
  static const darkTheme = 1;
  static const lightTheme = 2;

  _setTheme(ThemeMode newTheme) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    var themeInt = (newTheme == ThemeMode.light ? lightTheme : darkTheme);
    sharedPreferences.setInt(themePrefKey, themeInt);
  }

  Future<ThemeMode> _getTheme() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var themeInt = sharedPreferences.getInt(themePrefKey) ?? lightTheme;

    return (themeInt == lightTheme ? ThemeMode.light : ThemeMode.dark);
  }

  Future<ThemeData> _deserializeTheme(ThemeMode mode) async {
    String theme =
        'assets/themes/appainter_theme_${mode == ThemeMode.light ? 'light' : 'dark'}.json';

    final themeStr = await rootBundle.loadString(theme);
    final themeJson = jsonDecode(themeStr);
    return ThemeDecoder.decodeThemeData(themeJson)!;
  }

  /// Load the user's settings from the SettingsService. It may load from a
  /// local database or the internet. The controller only knows it can load the
  /// settings from the service.
  Future<void> loadSettings() async {
    // Get the theme from local storage
    _themeMode = await _getTheme();

    // Deserialize the theme provided into the right mode
    ThemeData userTheme = await _deserializeTheme(_themeMode);

    // Set it with GetX
    Get.changeTheme(userTheme);
  }

  /// Update and persist the ThemeMode based on the user's selection.
  Future<void> updateThemeMode(ThemeMode newThemeMode) async {
    // Do not perform any work if new and old ThemeMode are identical
    if (newThemeMode == _themeMode) return;

    // Otherwise, store the new ThemeMode in memory
    _themeMode = newThemeMode;

    // Get the new theme
    ThemeData newTheme = await _deserializeTheme(_themeMode);

    // Set it with GetX
    Get.changeTheme(newTheme);

    // Persist the changes to local storage
    _setTheme(newThemeMode);
  }
}
