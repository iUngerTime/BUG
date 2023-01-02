import 'package:bug/app/modules/dashboard/dashboard_page.dart';
import 'package:bug/core/theme/app_theme.dart';
import 'package:bug/routes/pages.dart';
import 'package:bug/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bug/core/theme/theme_service.dart';

void main() async {
  // Ensure the intialized service
  WidgetsFlutterBinding.ensureInitialized();

  // Load the theme
  final themeController = Get.put(ThemeController());

  // Run the app and pass in the SettingsController. The app listens to the
  // SettingsController for changes, then passes it further down to the
  // SettingsView.
  runApp(GetMaterialApp(
    initialRoute: AppRoutes.dashboard,
    getPages: AppPages.list,
    themeMode: themeController.theme,
    title: 'BUG',
    locale: Get.deviceLocale,
  ));
}
