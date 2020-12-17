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
      backgroundColor: passingArgument.getBackgroundColor(),
      appBar: AppBar(
        title: Text("The Statistic Page"),
        backgroundColor: passingArgument.getPrimaryColor(),
      ),
      body: Center(
          child: Container(
              height: 700,
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  StaticMethods.addHeader(
                      context, '${passingArgument.getName()}', passingArgument),
                  StaticMethods.addText(
                      'Dieses Diagram zeigt deine Leistung in vergangenen Spielen.',
                      passingArgument),
                  Expanded(
                      child: VerticalBarLabelChart.withSampleData(
                          passingArgument.getScoreSheet())),
                  StaticMethods.addText(
                      'Mittelwert Erfolg : ${passingArgument.getAverageScore()}%',
                      passingArgument),
                  StaticMethods.addText(
                      'Mittelwert Misserfolg : ${100 - passingArgument.getAverageScore()}%',
                      passingArgument),
                  RaisedButton(
                    onPressed: () => Navigator.popAndPushNamed(
                        context, Statistic.route,
                        arguments: passingArgument),
                    child: Text('Spiel Statistik',
                        style: TextStyle(color: contentColor)),
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
