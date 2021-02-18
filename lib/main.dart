import 'package:ExpenseTracker/navigation/routes.dart';
import 'package:ExpenseTracker/screens/home.dart';
import 'package:ExpenseTracker/widgets/myNavigationBar.dart';
import 'package:flutter/material.dart';

void main() async {
  Routes.createRoutes();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: MyNavigationBar(),
        body: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomeView(),
          initialRoute: '/home',
          navigatorKey: Routes.sailor.navigatorKey,
          onGenerateRoute: Routes.sailor.generator(),
        ),
      ),
    );
  }
}
