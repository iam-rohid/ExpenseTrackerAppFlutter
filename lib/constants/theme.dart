import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTheme {
  static const Color primary = Color(0xFF7848EE);
  static const Color secondary = Color(0xFFA9ABD4);
  static const Color background = Color(0xFFFFFFFF);
  static const Color background2 = Color(0xFFD7E0F8);
  static const Color appBarBackgorund = Color(0xFFFFFFFF);
  static const Color tabBarBackground = Color(0xFFFFFFFF);
  static const Color text1 = Color(0xFF000000);
  static const Color text2 = Color(0xFF636478);
  static const Color spending = Color(0xFFFC6441);
  static const Color saving = Color(0xFF7848EE);
  static const Color gradient1 = Color(0xFF4F58DF);
  static const Color gradient2 = Color(0xFFA736FF);
  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      MyTheme.gradient1,
      MyTheme.gradient2,
    ],
  );
}
