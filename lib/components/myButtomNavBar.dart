import 'package:e_learning/screens/help.dart';
import 'package:e_learning/screens/homescreen.dart';
import 'package:e_learning/screens/settings.dart';
import 'package:e_learning/screens/statistic.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class MyButtomNavigationBar extends StatefulWidget {
  const MyButtomNavigationBar({
    Key key,
  }) : super(key: key);

  @override
  _MyButtomNavigationBarState createState() => _MyButtomNavigationBarState();
}

class _MyButtomNavigationBarState extends State<MyButtomNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:
        Navigator.of(context).push(_createRouteHome());
        break;
      case 1:
        Navigator.of(context).push(_createRouteStatistic());
        break;
      case 2:
        Navigator.of(context).push(_createRouteHelp());
        break;
      case 3:
        Navigator.of(context).push(_createRouteSetting());
        break;
    }
  }

  Route _createRouteHome() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => HomeScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      },
    );
  }

  Route _createRouteStatistic() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => Statistic(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      },
    );
  }

  Route _createRouteHelp() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => Help(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      },
    );
  }

  Route _createRouteSetting() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => Settings(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          backgroundColor: primaryColor,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.stacked_bar_chart),
          label: 'Statistic',
          backgroundColor: primaryColor,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.help),
          label: 'Help',
          backgroundColor: primaryColor,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
          backgroundColor: primaryColor,
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: secondaryColor,
      onTap: _onItemTapped,
    );
  }
}
