import 'package:e_learning/components/myButtomNavBar.dart';
import 'package:e_learning/constants.dart';
import 'package:flutter/material.dart';


class Gl1Mode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: MyButtomNavigationBar(),
        appBar: AppBar(
          title: const Text('Theoretische Informatik 1'),
          backgroundColor: primaryColor,
        ),
        body: Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: 200,
              height: 200,
            color: secondaryColor,
          ),
        )
    );
  }
}