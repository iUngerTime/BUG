import 'package:bug/app/modules/home/home_screen.dart';
import 'package:bug/core/theme/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  // Ensure the intialized service
  WidgetsFlutterBinding.ensureInitialized();

  // Load the theme
  final themeController = Get.put(ThemeController());

  // Run the app and pass in the SettingsController. The app listens to the
  // SettingsController for changes, then passes it further down to the
  // SettingsView.
  runApp(GetMaterialApp(
    theme: ThemeData.light(),
    darkTheme: ThemeData.dark(),
    themeMode: themeController.theme,
    home: HomeScreen(),
    title: 'BUG',
    locale: Get.deviceLocale,
  ));
}
