import 'package:flutter/material.dart';
import 'package:quran_app/ui/home/ahadeth_tab/hadeth_model.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = 'Hadeth-details-screen';

  @override
  Widget build(BuildContext context) {
    HadethItem hadethItem =
        ModalRoute.of(context)?.settings.arguments as HadethItem;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/main_background.png'))),
      child: Scaffold(
        appBar: AppBar(
          title: Text(hadethItem.hadethTitle),
        ),
        body: Column(
          children: [
            Expanded(
              child: Card(
                margin: EdgeInsets.all(22),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(26)),
                child: Container(
                    // alignment: Alignment.center,
                    padding: EdgeInsets.all(22),
                    child: SingleChildScrollView(
                        child: Text(
                      hadethItem.hadethContent,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(fontSize: 26, color: Colors.black),
                    ))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
