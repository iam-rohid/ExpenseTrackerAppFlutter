import 'package:ExpenseTracker/constants/icons.dart';
import 'package:ExpenseTracker/constants/theme.dart';
import 'package:ExpenseTracker/widgets/appBar.dart';
import 'package:ExpenseTracker/widgets/buttons.dart';
import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Flex(
          direction: Axis.vertical,
          children: [
            renderAppBar(context),
            Flexible(
              flex: 1,
              child: Center(
                child: Text("Settings View"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget renderAppBar(BuildContext context) {
    return MyAppBar(
      title: "Settings",
      leftItems: [
        MyImageButton(
          imageIcon: CustomIcons.backArrow,
          imageSize: 24,
          color: MyTheme.secondary,
          onPressed: () => {
            Navigator.pop(context),
          },
        ),
      ],
    );
  }
}
