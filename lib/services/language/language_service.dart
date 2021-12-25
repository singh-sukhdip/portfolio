import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:portfolio/services/language/lang_model.dart';

class LanguageService extends GetxService {
  static LanguageService get to => Get.find();

  late Rx<Language> selectedLanguage = Language().obs;
  late Rx<Language> tempSelectedLanguage = Language().obs;
  GetStorage storage = GetStorage();
  late String langCode, langCountry;
  List<Language> languages = [];

  Future<LanguageService> init() async {
    languages.add(
      Language(
        langIcon: getLangIcon('en'),
        langLocale: Locale('en', 'US'),
        langName: 'English',
        langCode: 'en',
        langCountry: 'US',
      ),
    );
    languages.add(
      Language(
        langIcon: getLangIcon('hi'),
        langLocale: Locale('hi', 'IN'),
        langName: 'Hindi',
        langCode: 'hi',
        langCountry: 'IN',
      ),
    );
    languages.add(
      Language(
          langIcon: getLangIcon('de'),
          langLocale: Locale('de', 'DE'),
          langName: 'German',
          langCode: 'de',
          langCountry: 'DE'),
    );

    langCode = storage.read('languageCode') ?? '';
    langCountry = storage.read('languageCountry') ?? '';

    if (langCode.isNotEmpty && langCountry.isNotEmpty) {
      selectedLanguage.value = Language(
        langName: getLangName(langCode),
        langLocale: Locale(langCode, langCountry),
        langIcon: getLangIcon(langCode),
        langCode: langCode,
        langCountry: langCountry,
      );
    } else {
      Locale _locale = Locale('en', 'US');
      selectedLanguage.value = Language(
        langName: getLangName(_locale.languageCode),
        langIcon: getLangIcon(_locale.languageCode),
        langLocale: _locale,
        langCode: _locale.languageCode,
        langCountry: _locale.countryCode!,
      );
    }
    tempSelectedLanguage.value = selectedLanguage.value;
    //print(tempSelectedLanguage.value.langName);
    // print(
    //     '${Get.deviceLocale!.languageCode}   ${Get.deviceLocale!.countryCode}');
    //Get.updateLocale(selectedLanguage.value.langLocale!);
    return this;
  }

  String getLangName(String langCode) {
    switch (langCode) {
      case 'en':
        return 'English';
      case 'hi':
        return 'Hindi';
      case 'de':
        return 'German';
      default:
        return 'English';
    }
  }

  String getLangIcon(String langCode) {
    switch (langCode) {
      case 'en':
        return 'images/lang_icons/united-states.png';
      case 'hi':
        return 'images/lang_icons/india.png';
      case 'de':
        return 'images/lang_icons/germany.png';
      default:
        return 'images/lang_icons/united-states.png';
    }
  }

  void updateLanguage() {
    selectedLanguage.value = tempSelectedLanguage.value;
    storage.write('languageCode', selectedLanguage.value.langCode);
    storage.write('languageCountry', selectedLanguage.value.langCountry);
    Get.updateLocale(selectedLanguage.value.langLocale!);
    if (Get.isDialogOpen!) Get.back();
  }
}
