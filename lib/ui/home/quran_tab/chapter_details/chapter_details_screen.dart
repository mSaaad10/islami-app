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
              image: AssetImage('assets/images/main_background.png'))),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            args.chapterName,
            style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
          ),
        ),
        body: verses.isEmpty
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemBuilder: (context, index) =>
                    ChapterVerseWidget(verse: verses[index]),
                itemCount: verses.length),
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
