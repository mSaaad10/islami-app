import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran_app/ui/home/quran_tab/chapter_details/chapter_verse_widget.dart';
import 'package:quran_app/ui/home/quran_tab/chapter_title_widget.dart';

class ChapterDetailsScreen extends StatefulWidget {
  static const String routeName = 'Sura-Details';

  @override
  State<ChapterDetailsScreen> createState() => _ChapterDetailsScreenState();
}

class _ChapterDetailsScreenState extends State<ChapterDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as ChapterDetailsArgs;
    if (verses.isEmpty) readQuranFile(args.index);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(ThemeMode == ThemeMode.light
                  ? 'assets/images/main_background.png'
                  : 'assets/images/main_background_dark.png'))),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            args.chapterName,
          ),
        ),
        body: verses.isEmpty
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Card(
                color: Theme.of(context).cardTheme.color,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22)),
                child: ListView.separated(
                    itemBuilder: (context, index) =>
                        ChapterVerseWidget(verse: verses[index]),
                    separatorBuilder: (context, index) => Container(
                        width: double.infinity,
                        height: 2,
                        color: Theme.of(context).dividerTheme.color),
                    itemCount: verses.length),
              ),
      ),
    );
  }

  void readQuranFile(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    print(fileContent);
    List<String> suraLines = fileContent.split('\n');
    verses = suraLines;
    setState(() {});
  }
}
