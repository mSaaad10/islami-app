import 'package:flutter/material.dart';
import 'package:quran_app/ui/home/ahadeth_tab/ahadeth_tab_widget.dart';
import 'package:quran_app/ui/home/quran_tab/quran_tab_widget.dart';
import 'package:quran_app/ui/home/radio_tab/radio_tab_widget.dart';
import 'package:quran_app/ui/home/settings_tab/settings_tab_widget.dart';
import 'package:quran_app/ui/home/tasbeh_tab/tasbeh_tab_widget.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home-Screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/main_background.png'))),
        child: Scaffold(
          appBar: AppBar(
            title: Text('Islami'),
          ),
          backgroundColor: Colors.transparent,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            backgroundColor: Theme.of(context).colorScheme.primary,
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  icon: ImageIcon(AssetImage('assets/images/quran_ic.png')),
                  label: 'Quran'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  icon: ImageIcon(AssetImage('assets/images/ahadeth_ic.png')),
                  label: 'Ahadeth'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  icon: ImageIcon(AssetImage('assets/images/sebha_ic.png')),
                  label: 'Tasbeh'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  icon: ImageIcon(AssetImage('assets/images/radio_ic.png')),
                  label: 'Radio'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  icon: Icon(Icons.settings),
                  label: 'Settings'),
            ],
          ),
          body: tabs[selectedIndex],
        ));
  }

  List<Widget> tabs = [
    QuranTabWidget(),
    AhadethTabWidget(),
    TasbehTabWidget(),
    RadioTabWidget(),
    SettingsTabWidget(),
  ];
}
