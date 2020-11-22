import 'package:e_learning/components/myButtomNavBar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyButtomNavigationBar(),
      appBar: AppBar(
        title: const Text('My cool App'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text("Home Screen!"),
      ),
    );
  }
}
