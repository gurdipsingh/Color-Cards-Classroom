import 'package:e_learning/components/PassingArgument.dart';
import 'package:flutter/cupertino.dart';

import 'components/score.dart';

class StaticMethods extends StatelessWidget {
  static Score getScore(PassingArgument passingArgument) {
    // Get the right Score from passing Argument
    if (passingArgument.getGameMode() == "unbewertet") {
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

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}
