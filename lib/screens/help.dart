import 'package:e_learning/components/myButtomNavBar.dart';
import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The Help Page"),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Text('Here is the Help Guide'),
      ),
      bottomNavigationBar: MyButtomNavigationBar(),
    );
  }
}
