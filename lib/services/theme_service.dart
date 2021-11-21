import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeService {
  static final _storage = GetStorage();

  static ThemeMode getThemeMode() {
    return darkModeEnabled() ? ThemeMode.dark : ThemeMode.light;
  }

  static bool darkModeEnabled() {
    return _storage.read('isDarkModeEnabled') ?? false;
  }

  static void setDarkMode(bool isDarkMode) {
    _storage.write('isDarkModeEnabled', isDarkMode);
  }

  static void changeThemeMode() {
    Get.changeThemeMode(darkModeEnabled() ? ThemeMode.light : ThemeMode.dark);
    setDarkMode(darkModeEnabled() ? false : true);
  }
}
