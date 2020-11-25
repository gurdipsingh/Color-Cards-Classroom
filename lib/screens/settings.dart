import 'package:e_learning/components/myButtomNavBar.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Settings extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        backgroundColor: primaryColor,
      ),
      body: Center(
          child: ElevatedButton(
        child: Text('Darkmode on!'),
        onPressed: () {
          print("Darkmode on!");
        },
      )),
      bottomNavigationBar: MyButtomNavigationBar(),
    );
  }
}
