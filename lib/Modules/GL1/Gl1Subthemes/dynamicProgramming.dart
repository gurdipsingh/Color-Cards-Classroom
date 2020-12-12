import 'package:e_learning/components/PassingArgument.dart';
import 'package:e_learning/components/myButtomNavBar.dart';
import 'package:e_learning/constants.dart';
import 'package:flutter/material.dart';

class DynamicProgramming extends StatelessWidget {
  static const route = '/Dynamische Programmierung';

  final PassingArgument passingArgument;

  DynamicProgramming({
    Key key,
    @required this.passingArgument,}) : super(key: key);

  RichText belmanFord(context) {
    return RichText(
      text: TextSpan(
          style: DefaultTextStyle
              .of(context)
              .style,
          children: <TextSpan>[
            TextSpan(text: "Belman Ford\n",
                style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                    decorationColor: secondaryColor)),
            TextSpan(
                text: "Diese Seite Beschäftigt sich mit BelmanFord. Hier werden "
                    "Infortmationen über BelmanFord aufgezeigt, welches euch behilflich sein kann,"
                    "wenn ihr etwas nicht versteht oder neu lernen müsst.",
                style: TextStyle(color: Colors.black,
                    fontSize: 15,
                    decoration: TextDecoration.none))
          ]
      ),
    );
  }

  RichText floyd(context) {
    return RichText(
      text: TextSpan(
          style: DefaultTextStyle
              .of(context)
              .style,
          children: <TextSpan>[
            TextSpan(text: "Floyd \n",
                style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                    decorationColor: secondaryColor)),
            TextSpan(
                text: "Diese Seite Beschäftigt sich mit Floyd. Hier werden "
                    "Infortmationen über Floyd aufgezeigt, welches euch behilflich sein kann,"
                    "wenn ihr etwas nicht versteht oder neu lernen müsst.",
                style: TextStyle(color: Colors.black,
                    fontSize: 15,
                    decoration: TextDecoration.none))
          ]
      ),
    );
  }

  RichText timeScheduling(context) {
    return RichText(
      text: TextSpan(
          style: DefaultTextStyle
              .of(context)
              .style,
          children: <TextSpan>[
            TextSpan(text: "Time Scheduling \n",
                style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                    decorationColor: secondaryColor)),
            TextSpan(
                text: "Diese Seite Beschäftigt sich mit dem Time Scheduling. Hier werden "
                    "Infortmationen über Time Scheduling aufgezeigt, welches euch behilflich sein kann,"
                    "wenn ihr etwas nicht versteht oder neu lernen müsst.",
                style: TextStyle(color: Colors.black,
                    fontSize: 15,
                    decoration: TextDecoration.none))
          ]
      ),
    );
  }

  RichText ungezeigteSeite(context) {
    return RichText(
      text: TextSpan(
          style: DefaultTextStyle
              .of(context)
              .style,
          children: <TextSpan>[
            TextSpan(text: "Fehler \n",
                style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                    decorationColor: secondaryColor)),
            TextSpan(text: "Diese Seite konnte nicht aufgezeigt werden",
                style: TextStyle(color: Colors.black,
                    fontSize: 15,
                    decoration: TextDecoration.none))
          ]
      ),
    );
  }

  RichText showSubThemeContent(context) {
    switch (passingArgument.getSubtheme()) {
      case "belmanford":
        return belmanFord(context);
      case "floyd":
        return floyd(context);
      case "timescheduling":
        return timeScheduling(context);
      default:
        return ungezeigteSeite(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyButtomNavigationBar(
        passingArgument: passingArgument,),
      appBar: AppBar(
        title: const Text('Theoretische Informatik 1'),
        backgroundColor: primaryColor,
      ),
      body: showSubThemeContent(context),
    );
  }

}



