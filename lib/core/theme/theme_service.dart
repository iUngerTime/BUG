import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeService with ChangeNotifier {
  late ThemeMode _themeMode;

  static const themePrefKey = 'theme_pref_key';
  static const darkTheme = 1;
  static const lightTheme = 2;

  ThemeMode get themeMode => _themeMode;
  bool get isDark => _themeMode == ThemeMode.dark;

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

  /// Load the user's settings from the SettingsService. It may load from a
  /// local database or the internet. The controller only knows it can load the
  /// settings from the service.
  Future<void> loadSettings() async {
    _themeMode = await _getTheme();

    // Important! Inform listeners a change has occurred.
    notifyListeners();
  }

  /// Update and persist the ThemeMode based on the user's selection.
  Future<void> updateThemeMode(ThemeMode? newThemeMode) async {
    if (newThemeMode == null) return;

    // Do not perform any work if new and old ThemeMode are identical
    if (newThemeMode == _themeMode) return;

    // Otherwise, store the new ThemeMode in memory
    _themeMode = newThemeMode;

    // Important! Inform listeners a change has occurred.
    notifyListeners();

    // Persist the changes to local storage
    _setTheme(newThemeMode);
  }
}
