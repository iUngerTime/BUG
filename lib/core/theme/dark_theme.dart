import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme(
    brightness: Brightness.dark,
    surface: Color(0xFF093a4f),
    onSurface: Colors.black,
    // Colors that are not relevant to AppBar in DARK mode:
    primary: Colors.grey,
    onPrimary: Colors.grey,
    secondary: Colors.grey,
    onSecondary: Colors.grey,
    background: Colors.grey,
    onBackground: Colors.grey,
    error: Colors.grey,
    onError: Colors.grey,
  ),
  scaffoldBackgroundColor: Colors.black87,
  highlightColor: Colors.transparent,
  splashColor: Colors.transparent,
);
