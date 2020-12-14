import 'package:e_learning/components/PassingArgument.dart';
import 'package:e_learning/components/myButtomNavBar.dart';
import 'package:e_learning/components/donutAutoLabelChart.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class Statistic extends StatelessWidget {
  static const route = "/statistic";

  final PassingArgument passingArgument;

  Statistic({
    Key key,
    @required this.passingArgument,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The Statistic Page"),
        backgroundColor: primaryColor,
      ),
      body: Center(
        //child: Text('Statistic of ${passingArgument.getName()}'),
        child: DonutAutoLabelChart.withSampleData(),
      ),
      bottomNavigationBar: MyButtomNavigationBar(
        passingArgument: passingArgument,
      ),
    );
  }
}
