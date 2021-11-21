import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:portfolio/services/theme_service.dart';
import 'package:portfolio/utils/routes.dart';
import 'package:portfolio/utils/styles.dart';
import 'package:portfolio/utils/themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Sukhdip\'s Portfolio',
      debugShowCheckedModeBanner: false,
      getPages: Routes.screens,
      unknownRoute: Routes.screens.last,
      initialRoute: '/home',
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      themeMode: ThemeService.getThemeMode(),
    );
  }
}
