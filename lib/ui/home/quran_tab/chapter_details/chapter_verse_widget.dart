import 'package:flutter/material.dart';

class ChapterVerseWidget extends StatelessWidget {
  String verse;

  ChapterVerseWidget({required this.verse});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      alignment: Alignment.center,
      child: Text(verse,
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
          style: Theme.of(context).textTheme.bodySmall),
    );
  }
}
