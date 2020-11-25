import 'package:e_learning/components/myButtomNavBar.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Help extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Help"),
        backgroundColor: primaryColor,
      ),
      body: Center(
        child: Text('Here is the Help Guide'),
      ),
      bottomNavigationBar: MyButtomNavigationBar(),
    );
  }
}
