import 'package:ExpenseTracker/constants/theme.dart';
import 'package:flutter/cupertino.dart';

Text myTitle({@required String text, Color color, double size}) {
  return Text(
    text,
    style: TextStyle(
      fontSize: size != null ? size : 24,
      color: color != null ? color : MyTheme.text1,
      fontWeight: FontWeight.bold,
    ),
  );
}

Text myLabel({@required String text, Color color, double size = 14}) {
  return Text(
    text,
    style: TextStyle(
      fontSize: size != null ? size : 14,
      color: color != null ? color : MyTheme.text2,
    ),
  );
}
