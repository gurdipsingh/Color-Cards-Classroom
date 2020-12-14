import 'package:e_learning/components/PassingArgument.dart';
import 'package:e_learning/components/myButtomNavBar.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Help extends StatelessWidget {
  static const route = "/help";

  final PassingArgument passingArgument;

  Help({
    Key key,
    @required this.passingArgument,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Help"),
        backgroundColor: primaryColor,
      ),
      body: Center(
        child: Text('Here is the Help Guide'),
      ),
      bottomNavigationBar: MyButtomNavigationBar(
        passingArgument: passingArgument,
      ),
    );
  }
}
