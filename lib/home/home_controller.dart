import 'dart:html';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:portfolio/services/theme_service.dart';

class HomeController extends GetxController with SingleGetTickerProviderMixin {
  static HomeController get to => Get.find();

  IconData? themeIcon;
  TabController? tabController;
  int selectedIndex = 0;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    final loader = document.getElementById('loader');
    if (loader != null) loader.remove();
    themeIcon =
        ThemeService.darkModeEnabled() ? Icons.light_mode : Icons.dark_mode;
    tabController =
        TabController(initialIndex: selectedIndex, length: 3, vsync: this);
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    tabController!.dispose();
  }

  void changeTheme() {
    ThemeService.changeThemeMode();
    themeIcon =
        ThemeService.darkModeEnabled() ? Icons.light_mode : Icons.dark_mode;
    update();
  }

  void changeTabBarIndex(int index) {
    selectedIndex = index;
    tabController!.animateTo(index);
    update();
  }
}
