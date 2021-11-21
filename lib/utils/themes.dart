import 'package:flutter/material.dart';
import 'package:portfolio/utils/styles.dart';

class Themes {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    //scaffoldBackgroundColor: backgroundColorLight,
    primarySwatch: Colors.blue,
    fontFamily: 'Muli',
    textTheme: TextTheme(headline3: TextStyle(color: Colors.black)),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w700,
        ),
        elevation: 7,
        onPrimary: Colors.pink[200],
        primary: Colors.white70,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
      ),
    ),
    tabBarTheme: TabBarTheme(
      labelStyle: TextStyle(
          fontWeight: FontWeight.w600, letterSpacing: 1.5, fontSize: 15),
      labelColor: pinkLightFontColor,
      unselectedLabelColor: greyFontColor,
      unselectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w500, letterSpacing: 1.5, fontSize: 15),
      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(50), // Creates border
        color: backgroundColorLight,
        boxShadow: [
          BoxShadow(
              color: Colors.grey[400]!,
              offset: const Offset(3.0, 3.0),
              blurRadius: 8.0,
              spreadRadius: 2.0)
        ],
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'Muli',
    textTheme: TextTheme(headline3: TextStyle(color: Colors.white)),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
        elevation: 7,
        onPrimary: Colors.pink[300],
        primary: Color.fromRGBO(43, 44, 47, 1.0),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        shadowColor: Colors.grey[400],
      ),
    ),
    tabBarTheme: TabBarTheme(
      labelStyle: TextStyle(
          fontWeight: FontWeight.w600, letterSpacing: 1.5, fontSize: 15),
      labelColor: pinkLightFontColor,
      unselectedLabelColor: greyFontColor,
      unselectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w500, letterSpacing: 1.5, fontSize: 15),
      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(50), // Creates border
        color: backgroundColorDark,
        boxShadow: [
          BoxShadow(
              color: Colors.grey[800]!,
              offset: const Offset(3.0, 3.0),
              blurRadius: 7.0,
              spreadRadius: 1.0)
        ],
      ),
    ),
  );
}
