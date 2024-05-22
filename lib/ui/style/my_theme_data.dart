import 'package:flutter/material.dart';

class MyThemeData {
  static const Color lightPrimaryColor = Color(0xFFB7935F);
  static const Color darkPrimaryColor = Color(0xFF141A2E);
  static const Color yellowColor = Color(0xFFFACC1D);
  static final ThemeData lightTheme = ThemeData(
      //dividerTheme: DividerThemeData(color: lightPrimaryColor),
      primaryColor: lightPrimaryColor,
      // dividerColor: lightPrimaryColor,
      cardTheme: CardTheme(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(26),
          )),
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
          color: Colors.black,
          size: 32,
        ),
        color: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontSize: 28, color: Colors.black, fontWeight: FontWeight.bold),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: ColorScheme.fromSeed(
          seedColor: lightPrimaryColor,
          primary: Color(0xFFB7935F),
          onPrimary: Color(0xFFffffff),
          secondary: Color(0x81B7935F),
          onSecondary: Colors.black,
          tertiary: lightPrimaryColor),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedIconTheme: IconThemeData(color: Colors.black, size: 36),
        unselectedIconTheme: IconThemeData(
          color: Colors.white,
        ),
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(color: Colors.black),
        unselectedLabelStyle: TextStyle(color: Colors.white),
        showUnselectedLabels: false,
        showSelectedLabels: true,
      ),
      textTheme: TextTheme(
          titleMedium: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
          bodyMedium: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black),
          bodySmall: TextStyle(fontSize: 18, color: Colors.black)));
  static final ThemeData darkTheme = ThemeData(
      primaryColor: darkPrimaryColor,
      dividerTheme: DividerThemeData(color: Colors.yellow),
      // dividerColor: Colors.yellow,
      cardTheme: CardTheme(
          color: darkPrimaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(26))),
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
          color: Colors.white,
          size: 32,
        ),
        color: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontSize: 28, color: Colors.white, fontWeight: FontWeight.bold),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: ColorScheme.fromSeed(
          seedColor: darkPrimaryColor,
          primary: darkPrimaryColor,
          onPrimary: Color(0xFFffffff),
          secondary: yellowColor,
          onSecondary: Colors.black,
          tertiary: yellowColor),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedIconTheme: IconThemeData(color: yellowColor, size: 36),
        unselectedIconTheme: IconThemeData(
          color: Colors.white,
        ),
        selectedItemColor: yellowColor,
        unselectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(color: Colors.yellow),
        unselectedLabelStyle: TextStyle(color: Colors.white),
        showUnselectedLabels: false,
        showSelectedLabels: true,
      ),
      textTheme: TextTheme(
          titleMedium: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          bodyMedium: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),
          bodySmall: TextStyle(fontSize: 20, color: Colors.yellow)));
}
