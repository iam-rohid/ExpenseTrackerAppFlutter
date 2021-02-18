import 'package:ExpenseTracker/screens/home.dart';
import 'package:ExpenseTracker/widgets/myNavigationBar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: MyNavigationBar(),
        body: HomeView(),
      ),
    );
  }
}
