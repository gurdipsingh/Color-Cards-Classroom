import 'package:e_learning/components/PassingArgument.dart';
import 'package:e_learning/components/myButtomNavBar.dart';
import 'package:e_learning/screens/gameModeSelection.dart';
import 'package:e_learning/staticMethods.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class ResultFeedback extends StatelessWidget {
  static const route = "/feedback";

  final PassingArgument passingArgument;

  ResultFeedback({
    Key key,
    @required this.passingArgument,
  }) : super(key: key);

  getHeightSizeAccordingToPercent(context, int percent) {
    var screenSize = MediaQuery.of(context).size;
    return (screenSize.height / 100) * percent;
  }

  String getValue() {
    if (StaticMethods.getScore(passingArgument).getPercentage() < 50) {
      return "Befriedigend";
    }
    if ((StaticMethods.getScore(passingArgument).getPercentage() < 70) &&
        (StaticMethods.getScore(passingArgument).getPercentage() > 49)) {
      return "Gut";
    }
    if ((StaticMethods.getScore(passingArgument).getPercentage() > 69)) {
      return "Sehr Gut";
    }
  }

  void continueToGameModeScreen(context) {
    Navigator.pushNamedAndRemoveUntil(
        context, GameModeSelection.route, (_) => false,
        arguments: passingArgument);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: passingArgument.getBackgroundColor(),
      bottomNavigationBar: MyButtomNavigationBar(
        passingArgument: passingArgument,
      ),
      appBar: AppBar(
        title: Text(this.passingArgument.getTheme()),
        backgroundColor: passingArgument.getPrimaryColor(),
      ),
      body: Column(
        children: [
          Container(
              height: getHeightSizeAccordingToPercent(context, 15),
              child: Center(
                child: Text(
                  "Auswertung",
                  style: TextStyle(
                      fontSize: 25, color: passingArgument.getTextColor()),
                ),
              )),
          Container(
            height: getHeightSizeAccordingToPercent(context, 50),
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                        "${StaticMethods.getScore(passingArgument).getNumberOfRightAsString()}/9",
                        style: TextStyle(
                            fontSize: 35,
                            color: passingArgument.getTextColor())),
                    Text(
                      "Karten wurden richtig zugewiesen",
                      style: TextStyle(
                          fontSize: 15, color: passingArgument.getTextColor()),
                    ),
                    Text(
                      "Das entspricht",
                      style: TextStyle(
                          fontSize: 15, color: passingArgument.getTextColor()),
                    ),
                    Text(
                      "  ${StaticMethods.getScore(passingArgument).getPercentage()}%",
                      style: TextStyle(
                          fontSize: 35, color: passingArgument.getTextColor()),
                    ),
                    Text(
                      this.getValue(),
                      style: TextStyle(
                          fontSize: 25, color: passingArgument.getTextColor()),
                    ),
                    RaisedButton(
                      onPressed: () => {continueToGameModeScreen(context)},
                      child: Text(
                        "Weiter",
                        style: TextStyle(color: contentColor),
                      ),
                      color: secondaryColor,
                    ),
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
