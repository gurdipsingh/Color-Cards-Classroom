import 'package:e_learning/components/myButtomNavBar.dart';
import 'package:flutter/material.dart';
import '../constants.dart';


class Statistic extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The Statistic Page"),
        backgroundColor: primaryColor,
      ),
      body: Center(
        child: Text('Statistic'),
      ),
      bottomNavigationBar: MyButtomNavigationBar(),
    );
  }
}
