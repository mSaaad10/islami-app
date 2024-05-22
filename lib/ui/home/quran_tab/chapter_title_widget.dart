import 'package:flutter/material.dart';
import 'package:quran_app/ui/home/quran_tab/chapter_details/chapter_details_screen.dart';

class ChapterTitleWidget extends StatelessWidget {
  String suraName;
  int index;

  ChapterTitleWidget({
    required this.suraName,
    required,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, ChapterDetailsScreen.routeName,
            arguments: ChapterDetailsArgs(chapterName: suraName, index: index));
      },
      child: Container(
          alignment: Alignment.center,
          child: Text(suraName, style: Theme.of(context).textTheme.bodyMedium)),
    );
  }
}

class ChapterDetailsArgs {
  String chapterName;
  int index;

  ChapterDetailsArgs({required this.chapterName, required this.index});
}
