import 'package:e_learning/components/PassingArgument.dart';
import 'package:e_learning/components/donutAutoLabelChart.dart';
import 'package:e_learning/components/myButtomNavBar.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../staticMethods.dart';

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
          child: Container(
              height: 600,
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  StaticMethods.addHeader(
                      context, '${passingArgument.getName()}'),
                  Expanded(
                      child: DonutAutoLabelChart.withSampleData(
                          passingArgument.getLatestScore())),
                  StaticMethods.addText(
                      'Erfolgsrate : ${passingArgument.getLatestScore().getPercentage()}'),
                  StaticMethods.addText(
                      'Misserfolgsrate : ${100 - passingArgument.getLatestScore().getPercentage()}')
                ],
              ))),
      bottomNavigationBar: MyButtomNavigationBar(
        passingArgument: passingArgument,
      ),
    );
  }
}
