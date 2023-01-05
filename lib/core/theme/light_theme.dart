import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF093a4f),
    onPrimary: Colors.black,
    // Colors that are not relevant to AppBar in LIGHT mode:
    secondary: Colors.grey,
    onSecondary: Colors.grey,
    background: Colors.grey,
    onBackground: Colors.grey,
    surface: Colors.grey,
    onSurface: Colors.grey,
    error: Colors.grey,
    onError: Colors.grey,
  ),
  scaffoldBackgroundColor: Colors.white,
  highlightColor: Colors.transparent,
  splashColor: Colors.transparent,
);
