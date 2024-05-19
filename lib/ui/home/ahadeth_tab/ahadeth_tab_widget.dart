import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran_app/ui/home/ahadeth_tab/hadeth_model.dart';
import 'package:quran_app/ui/home/ahadeth_tab/hadeth_title_widget.dart';

class AhadethTabWidget extends StatefulWidget {
  @override
  State<AhadethTabWidget> createState() => _AhadethTabWidgetState();
}

class _AhadethTabWidgetState extends State<AhadethTabWidget> {
  List<HadethItem> allAHadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allAHadeth.isEmpty) readHadethFile();
    return Container(
      child: Column(
        children: [
          Expanded(
              flex: 1,
              child: Image.asset('assets/images/hadeth_header_image.png')),
          // Container(
          //   width: double.infinity,
          //   height: 2,
          //   color: Theme
          //       .of(context)
          //       .primaryColor,
          //   margin: EdgeInsets.symmetric(horizontal: 66),
          // ),
          Container(
              alignment: Alignment.center,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 66),
              padding: EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                  border: Border.symmetric(
                      horizontal: BorderSide(
                          color: Theme.of(context).primaryColor, width: 2))),
              child: Text(
                'Ahadeth',
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              )),
          // Container(
          //   width: double.infinity,
          //   height: 2,
          //   color: Theme
          //       .of(context)
          //       .primaryColor,
          //   margin: EdgeInsets.symmetric(horizontal: 66),
          // ),
          Expanded(
            flex: 3,
            child: allAHadeth.isEmpty
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.separated(
                    itemBuilder: (context, index) =>
                        HadethTitleWidget(hadethItem: allAHadeth[index]),
                    separatorBuilder: (context, index) => Container(
                          width: double.infinity,
                          height: 2,
                          color: Theme.of(context).primaryColor,
                          margin: EdgeInsets.symmetric(horizontal: 66),
                        ),
                    itemCount: allAHadeth.length),
          )
        ],
      ),
    );
  }

  void readHadethFile() async {
    String fileContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    // parse file
    List<String> ahadethList = fileContent.trim().split('#');
    for (int i = 0; i < ahadethList.length; i++) {
      String singleHadethItem = ahadethList[i];

      List<String> hadethLines = singleHadethItem.trim().split('\n');
      String hadethTitle = hadethLines[0];
      hadethLines.removeAt(0);
      String hadethContent = hadethLines.join('\n');
      print(hadethContent);
      HadethItem hadethItem =
          HadethItem(hadethTitle: hadethTitle, hadethContent: hadethContent);
      allAHadeth.add(hadethItem);
    }
    setState(() {});
  }
}
