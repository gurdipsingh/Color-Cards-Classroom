import 'package:e_learning/route_generator.dart';
import 'package:e_learning/screens/help.dart';
import 'package:e_learning/screens/homescreen.dart';
import 'package:e_learning/screens/settings.dart';
import 'package:e_learning/screens/statistic.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'PassingArgument.dart';

class MyButtomNavigationBar extends StatefulWidget {
  final PassingArgument passingArgument;

  const MyButtomNavigationBar({Key key, @required this.passingArgument})
      : super(key: key);

  @override
  _MyButtomNavigationBarState createState() => _MyButtomNavigationBarState();
}

class _MyButtomNavigationBarState extends State<MyButtomNavigationBar> {
  int _selectedIndex = RouteGenerator.getIndex();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:
        Navigator.of(context)
            .pushNamed(HomeScreen.route, arguments: widget.passingArgument);
        break;
      case 1:
        Navigator.of(context)
            .pushNamed(Statistic.route, arguments: widget.passingArgument);
        break;
      case 2:
        Navigator.of(context)
            .pushNamed(Help.route, arguments: widget.passingArgument);
        break;
      case 3:
        Navigator.of(context)
            .pushNamed(Settings.route, arguments: widget.passingArgument);
        break;
    }
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
      selectedItemColor: contentColor,
      unselectedItemColor: secondaryColor,
      onTap: _onItemTapped,
    );
  }
}
