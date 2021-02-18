import 'package:ExpenseTracker/constants/icons.dart';
import 'package:ExpenseTracker/constants/theme.dart';
import 'package:ExpenseTracker/navigation/routes.dart';
import 'package:ExpenseTracker/widgets/appBar.dart';
import 'package:ExpenseTracker/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:sailor/sailor.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Flex(
          direction: Axis.vertical,
          children: [
            renderAppBar(),
            Flexible(
              flex: 1,
              child: Center(
                child: Text("Profile View"),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget renderAppBar() {
    return MyAppBar(
      title: "Profile",
      rightItems: [
        MyImageButton(
          imageIcon: CustomIcons.settings,
          onPressed: () => {Routes.sailor.navigate('/settings')},
          color: MyTheme.secondary,
        ),
      ],
    );
  }
}
