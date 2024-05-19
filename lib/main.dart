import 'package:flutter/material.dart';
import 'package:quran_app/ui/home/home_screen.dart';
import 'package:quran_app/ui/home/quran_tab/chapter_details/chapter_details_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Color(0xFFB7935F),
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
            seedColor: Color(0xFFB7935F),
            primary: Color(0xFFB7935F),
            onPrimary: Color(0xFFffffff),
            secondary: Color(0x81B7935F),
            onSecondary: Colors.black,
          ),
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
          )),
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        ChapterDetailsScreen.routeName: (context) => ChapterDetailsScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
