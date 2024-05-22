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
              image: AssetImage(ThemeMode == ThemeMode.light
                  ? 'assets/images/main_background.png'
                  : 'assets/images/main_background_dark.png'))),
      child: Scaffold(
        appBar: AppBar(
          title: Text(hadethItem.hadethTitle),
        ),
        body: Column(
          children: [
            Expanded(
              child: Card(
                margin: EdgeInsets.all(22),
                color: Theme.of(context).cardTheme.color,
                child: Container(
                    // alignment: Alignment.center,
                    padding: EdgeInsets.all(22),
                    child: SingleChildScrollView(
                        child: Text(
                      hadethItem.hadethContent,
                      textDirection: TextDirection.rtl,
                      style: Theme.of(context).textTheme.bodySmall,
                    ))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
