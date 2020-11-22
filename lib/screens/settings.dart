import 'package:e_learning/components/myButtomNavBar.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The Settings Page"),
        backgroundColor: Colors.red,
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
