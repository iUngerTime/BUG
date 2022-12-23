import 'package:BUG/app/modules/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  // Ensure the intialized service
  WidgetsFlutterBinding.ensureInitialized();

  // Run the app and pass in the SettingsController. The app listens to the
  // SettingsController for changes, then passes it further down to the
  // SettingsView.
  runApp(GetMaterialApp(
    home: const HomeScreen(),
    locale: Get.deviceLocale,
  ));
}
