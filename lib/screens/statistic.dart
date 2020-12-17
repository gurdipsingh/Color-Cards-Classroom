import 'package:e_learning/components/PassingArgument.dart';
import 'package:e_learning/components/donutAutoLabelChart.dart';
import 'package:e_learning/components/myButtomNavBar.dart';
import 'package:e_learning/screens/statisticHistory.dart';
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
              height: 700,
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  StaticMethods.addHeader(
                      context, '${passingArgument.getName()}'),
                  StaticMethods.addText(
                      'Dieses Diagram zeigt deine Leistung zu deinem letzten Siel.',
                      passingArgument),
                  Expanded(
                      child: DonutAutoLabelChart.withSampleData(
                          passingArgument.getLatestScore())),
                  //child: VerticalBarLabelChart.withSampleData(passingArgument.getScoreSheet())),
                  StaticMethods.addText(
                      'Erfolgsrate : ${passingArgument.getLatestScore().getPercentage()}',
                      passingArgument),
                  StaticMethods.addText(
                      'Misserfolgsrate : ${100 - passingArgument.getLatestScore().getPercentage()}',
                      passingArgument),
                  RaisedButton(
                    onPressed: () => Navigator.popAndPushNamed(
                        context, StatisticHistorie.route,
                        arguments: passingArgument),
                    child: Text(
                      'Spiel Historie',
                      style: TextStyle(color: contentColor),
                    ),
                    color: secondaryColor,
                  ),
                ],
              ))),
      bottomNavigationBar: MyButtomNavigationBar(
        passingArgument: passingArgument,
      ),
    );
  }
}
