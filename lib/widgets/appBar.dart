import 'package:ExpenseTracker/constants/text.dart';
import 'package:ExpenseTracker/constants/theme.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final List<Widget> leftItems;
  final List<Widget> rightItems;
  final String title;

  MyAppBar({
    @required this.title,
    this.leftItems,
    this.rightItems,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      color: MyTheme.appBarBackgorund,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: [
            Flexible(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: this.leftItems != null ? this.leftItems : [],
              ),
            ),
            myTitle(text: this.title, color: MyTheme.text1),
            Flexible(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: this.rightItems != null ? this.rightItems : [],
              ),
            )
          ],
        ),
      ),
    );
  }
}
