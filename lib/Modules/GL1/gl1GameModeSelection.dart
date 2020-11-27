import 'package:e_learning/components/gameSelectionMode.dart';
import 'package:e_learning/components/myButtomNavBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class Gl1GameModeSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyButtomNavigationBar(),
      appBar: AppBar(
        title: const Text('Home Screen'),
        backgroundColor: primaryColor,
      ),
      body: GameSelectionMode()
    );
  }
}