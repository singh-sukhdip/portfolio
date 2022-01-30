import 'package:portfolio/home/components/language_options.dart';
import 'package:portfolio/services/language/lang_model.dart';
import 'package:portfolio/services/language/language_service.dart';
import 'package:universal_html/html.dart' as html;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/services/theme_service.dart';

class HomeController extends GetxController with SingleGetTickerProviderMixin {
  static HomeController get to => Get.find();

  IconData? themeIcon;
  TabController? tabController;
  int selectedIndex = 1;

  @override
  void onInit() {
    super.onInit();
    final loader = html.document.getElementById('loader');
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

//change theme
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

//change langugae
  void openSettingsDialog() {
    Get.defaultDialog(
      title: 'Change Language',
      titleStyle: TextStyle(fontWeight: FontWeight.w600),
      content: LanguageOptions(),
      onCancel: () {
        LanguageService.to.tempSelectedLanguage.value =
            LanguageService.to.selectedLanguage.value;
      },
      onConfirm: () {
        LanguageService.to.updateLanguage();
      },
      textConfirm: 'Save',
      confirmTextColor: !Get.isDarkMode ? Colors.white : Colors.black,
    );
  }

  Color? langCheckMarkColor(Language lang) {
    if (lang == LanguageService.to.selectedLanguage.value) {
      return Colors.green;
    } else {
      return Colors.grey;
    }
  }

  downloadResume(url) {
    html.AnchorElement anchorElement = html.AnchorElement(href: url);
    anchorElement.download = 'Sukhdip_Singh_Resume';
    anchorElement.click();
  }
}
