import 'package:flutter/material.dart';

class ThemeBottomSheetWidget extends StatefulWidget {
  @override
  State<ThemeBottomSheetWidget> createState() => _ThemeBottomSheetWidgetState();
}

class _ThemeBottomSheetWidgetState extends State<ThemeBottomSheetWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getSelectedItem('Light'),
          SizedBox(
            height: 8,
          ),
          getUnSelectedItem('dark'),
        ],
      ),
    );
  }

  Widget getSelectedItem(String selectedMode) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          selectedMode,
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

  Widget getUnSelectedItem(String unSelectedMode) {
    return Text(
      unSelectedMode,
      style: TextStyle(
        fontSize: 24,
      ),
    );
  }
}
