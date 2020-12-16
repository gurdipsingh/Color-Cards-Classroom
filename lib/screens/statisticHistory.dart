import 'package:e_learning/components/PassingArgument.dart';
import 'package:e_learning/components/myButtomNavBar.dart';
import 'package:e_learning/components/verticalBarLabelChart.dart';
import 'package:e_learning/screens/statistic.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../staticMethods.dart';

class StatisticHistorie extends StatelessWidget {
  static const route = "/statisticHistory";

  final PassingArgument passingArgument;

  StatisticHistorie({
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
              height: 700,
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  StaticMethods.addHeader(
                      context, '${passingArgument.getName()}'),
                  StaticMethods.addText(
                      'Dieses Diagram zeigt deine Leistung zu deinem letzten Siel.'),
                  Expanded(
                      child: VerticalBarLabelChart.withSampleData(
                          passingArgument.getScoreSheet())),
                  StaticMethods.addText(
                      'Erfolgsrate : ${passingArgument.getLatestScore().getPercentage()}'),
                  StaticMethods.addText(
                      'Misserfolgsrate : ${100 - passingArgument.getLatestScore().getPercentage()}'),
                  ElevatedButton(
                    onPressed: () => Navigator.popAndPushNamed(
                        context, Statistic.route,
                        arguments: passingArgument),
                    child: Text('Spiel Historie'),
                  ),
                ],
              ))),
      bottomNavigationBar: MyButtomNavigationBar(
        passingArgument: passingArgument,
      ),
    );
  }
}
