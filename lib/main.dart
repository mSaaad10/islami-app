import 'package:flutter/material.dart';
import 'package:quran_app/ui/home/ahadeth_tab/hadeth_details/hadeth_details_screen.dart';
import 'package:quran_app/ui/home/home_screen.dart';
import 'package:quran_app/ui/home/quran_tab/chapter_details/chapter_details_screen.dart';
import 'package:quran_app/ui/style/my_theme_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.dark,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        ChapterDetailsScreen.routeName: (context) => ChapterDetailsScreen(),
        HadethDetailsScreen.routeName: (context) => HadethDetailsScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
