import 'package:flutter/material.dart';

class ChapterVerseWidget extends StatelessWidget {
  String verse;

  ChapterVerseWidget({required this.verse});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(44)),
      child: Container(
        padding: EdgeInsets.all(12),
        alignment: Alignment.center,
        child: Text(
          verse,
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
          style: TextStyle(
            fontSize: 26,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
