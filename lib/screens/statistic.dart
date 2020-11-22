import 'package:e_learning/components/myButtomNavBar.dart';
import 'package:flutter/material.dart';

class Statistic extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The Statistic Page"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text('Statistic'),
      ),
      bottomNavigationBar: MyButtomNavigationBar(),
    );
  }
}
