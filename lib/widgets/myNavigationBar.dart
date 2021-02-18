import 'package:ExpenseTracker/constants/theme.dart';
import 'package:flutter/material.dart';

class MyNavigationBar extends StatefulWidget {
  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _activeItemIndex = 0;
  _changeActiveIndex(int index) {
    this.setState(() {
      _activeItemIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Flex(
        direction: Axis.horizontal,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MyNavigationBarItem(
            icon: AssetImage('assets/icons/home.png'),
            index: 0,
            activeItemIndex: _activeItemIndex,
            onPress: _changeActiveIndex,
          ),
          MyNavigationBarItem(
            icon: AssetImage('assets/icons/barChart.png'),
            index: 1,
            activeItemIndex: _activeItemIndex,
            onPress: _changeActiveIndex,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              gradient: MyTheme.primaryGradient,
              boxShadow: [
                BoxShadow(
                  spreadRadius: -2,
                  color: MyTheme.primary.withOpacity(.5),
                  blurRadius: 20,
                  offset: Offset(0, 8),
                )
              ],
              borderRadius: BorderRadius.circular(100.0),
            ),
            child: Center(
              child: Image(
                image: AssetImage('assets/icons/plus.png'),
                fit: BoxFit.contain,
                width: 20,
                height: 20,
                color: Colors.white,
              ),
            ),
          ),
          MyNavigationBarItem(
            icon: AssetImage('assets/icons/lineChart.png'),
            index: 2,
            activeItemIndex: _activeItemIndex,
            onPress: _changeActiveIndex,
          ),
          MyNavigationBarItem(
            icon: AssetImage('assets/icons/user.png'),
            index: 4,
            activeItemIndex: _activeItemIndex,
            onPress: _changeActiveIndex,
          ),
        ],
      ),
    );
  }
}

class MyNavigationBarItem extends StatelessWidget {
  final ImageProvider icon;
  final int activeItemIndex;
  final int index;
  final Function onPress;
  MyNavigationBarItem({
    @required this.icon,
    @required this.activeItemIndex,
    @required this.index,
    @required this.onPress,
  });
  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: GestureDetector(
        onTap: () => onPress(index),
        child: Container(
          color: Colors.transparent,
          child: Center(
            child: Image(
              image: icon,
              fit: BoxFit.contain,
              width: 22,
              height: 22,
              color: this.index == this.activeItemIndex
                  ? MyTheme.primary
                  : MyTheme.secondary,
            ),
          ),
        ),
      ),
    );
  }
}
