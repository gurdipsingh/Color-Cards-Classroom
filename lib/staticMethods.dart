import 'package:e_learning/components/PassingArgument.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/score.dart';

class StaticMethods extends StatelessWidget {
  static Score getScore(PassingArgument passingArgument) {
    // Get the right Score from passing Argument
    if (passingArgument.getGameMode() == "unbewertet" ||
        passingArgument.getGameMode() == "zeit") {
      return passingArgument.getUnratedScore();
    } else {
      return passingArgument.getLatestScore();
    }
  }

  static Color getColorFromString(String color) {
    String valueString = color.split('(0x')[1].split(')')[0];
    int value = int.parse(valueString, radix: 16);
    return new Color(value);
  }

  static RichText addText(String text, PassingArgument passingArgument) {
    return RichText(
        text: TextSpan(
            text: "\n${text} \n",
            style: TextStyle(
                color: passingArgument.getTextColor(),
                fontSize: 20 + passingArgument.getAddtoFontSize().toDouble(),
                fontWeight: FontWeight.normal,
                decoration: TextDecoration.none)));
  }

  static RichText addHeader(context, String header, PassingArgument passingArgument) {
    return RichText(
      text: TextSpan(
          style: DefaultTextStyle.of(context).style,
          children: <TextSpan>[
            TextSpan(
                text: "${header} \n",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: passingArgument.getTextColor(),
                    decorationColor: passingArgument.getTextColor())),
          ]),
    );
  }

  static ListView ungezeigteSeite(context, PassingArgument passingArgument) {
    return ListView(
      children: [
        StaticMethods.addHeader(context, "Fehler", passingArgument),
        StaticMethods.addText(
            "Diese Seite konnte nicht aufgezeigt werden", passingArgument)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}
