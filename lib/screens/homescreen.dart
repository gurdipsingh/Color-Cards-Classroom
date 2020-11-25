import 'package:e_learning/components/myButtomNavBar.dart';
import 'package:flutter/material.dart';
import 'game.dart';

import '../constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyButtomNavigationBar(),
      appBar: AppBar(
        title: const Text('Home Screen'),
        backgroundColor: primaryColor,
      ),
      body: Center(
        child: Game(),
      ),
    );
  }
}
