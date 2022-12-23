import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeController extends GetxController {
  final _box = GetStorage();
  final _key = 'isDarkMode';

  late String darkThemeString;
  late String lightThemeString;

  ThemeMode get theme => _loadTheme() ? ThemeMode.dark : ThemeMode.light;
  bool _loadTheme() => _box.read(_key) ?? false;

  void _saveTheme(bool isDarkMode) => _box.write(_key, isDarkMode);

  void loadLightTheme() {
    Get.changeTheme(ThemeData.light());
    _saveTheme(false);
  }

  void loadDarkTheme() {
    Get.changeTheme(ThemeData.dark());
    _saveTheme(true);
  }
}
