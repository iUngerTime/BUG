import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// A service that stores and retrieves user settings.
///
/// By default, this class uses the shared_preferences package.
class SettingsService {
  final systemTheme = 0;
  final darkTheme = 1;
  final lightTheme = 2;

  /// Loads the User's preferred ThemeMode from local or remote storage.
  Future<ThemeMode> themeMode() async {
    log("This hit");
    // Grab it from local storage
    final prefs = await SharedPreferences.getInstance();
    final theme = prefs.getInt('theme') ?? systemTheme;

    if (theme == lightTheme) return ThemeMode.light;
    if (theme == darkTheme) return ThemeMode.dark;
    return ThemeMode.system;
  }

  /// Persists the user's preferred ThemeMode to local or remote storage.
  Future<void> updateThemeMode(ThemeMode theme) async {
    // Stroe it in local storage
    final prefs = await SharedPreferences.getInstance();

    switch (theme) {
      case ThemeMode.dark:
        await prefs.setInt('theme', darkTheme);
        break;
      case ThemeMode.light:
        await prefs.setInt('theme', lightTheme);
        break;
      case ThemeMode.system:
      default:
        await prefs.setInt('theme', systemTheme);
        break;
    }
  }
}
