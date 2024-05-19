import 'package:flutter/cupertino.dart';

class ChapterVerseNumberWidget extends StatelessWidget {
  int verseNumber;

  ChapterVerseNumberWidget({required this.verseNumber});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        '$verseNumber',
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
    );
  }
}
