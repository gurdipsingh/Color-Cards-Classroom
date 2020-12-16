import 'package:e_learning/components/PassingArgument.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/score.dart';

class StaticMethods extends StatelessWidget {
  static Score getScore(PassingArgument passingArgument) {
    // Get the right Score from passing Argument
    if (passingArgument.getGameMode() == "unbewertet" || passingArgument.getGameMode() == "zeit") {
      return passingArgument.getUnratedScore();
    } else {
      return passingArgument.getLatestScore();
    }
  }

  static Color getColorFromString(String color) {
    String valueString = color.split('(0x')[1].split(')')[0]; // kind of hacky..
    int value = int.parse(valueString, radix: 16);
    return new Color(value);
  }

  static RichText addText(String text) {
    return RichText(
        text: TextSpan(
            text: "\n${text} \n",
            style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none)));
  }

  static RichText addHeader(context, String header) {
    return RichText(
      text: TextSpan(
          style: DefaultTextStyle.of(context).style,
          children: <TextSpan>[
            TextSpan(
                text: "${header} \n",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    decorationColor: Colors.black)),
          ]),
    );
  }

  static ListView ungezeigteSeite(context) {
    return ListView(
      children: [
        StaticMethods.addHeader(context, "Fehler"),
        StaticMethods.addText("Diese Seite konnte nicht aufgezeigt werden")
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}
