import 'package:flutter/material.dart';

class LocalBottomSheetWidget extends StatefulWidget {
  @override
  State<LocalBottomSheetWidget> createState() => _LocalBottomSheetWidgetState();
}

class _LocalBottomSheetWidgetState extends State<LocalBottomSheetWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getSelectedItem('English'),
          SizedBox(
            height: 8,
          ),
          getUnSelectedItem('العربيه'),
        ],
      ),
    );
  }

  Widget getSelectedItem(String selectedLanguage) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          selectedLanguage,
          style: TextStyle(
            fontSize: 24,
            color: Theme.of(context).primaryColor,
          ),
        ),
        Icon(
          Icons.check,
          color: Theme.of(context).primaryColor,
          size: 36,
        )
      ],
    );
  }

  Widget getUnSelectedItem(String unSelectedLanguage) {
    return Text(
      unSelectedLanguage,
      style: TextStyle(
        fontSize: 24,
      ),
    );
  }
}
