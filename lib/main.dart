import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/utils/routes.dart';
import 'package:portfolio/utils/styles.dart';

void main() {
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
      theme: ThemeData(
        //backgroundColor: backgroundColorDark,
        primarySwatch: Colors.blue,
        fontFamily: 'Muli',
      ),
    );
  }
}
