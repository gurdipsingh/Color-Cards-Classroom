import 'package:e_learning/components/PassingArgument.dart';
import 'package:e_learning/components/myButtomNavBar.dart';
import 'package:flutter/material.dart';

import '../../../staticMethods.dart';

class DynamicProgramming extends StatelessWidget {
  static const route = '/Dynamische Programmierung';

  final PassingArgument passingArgument;

  DynamicProgramming({
    Key key,
    @required this.passingArgument,
  }) : super(key: key);

  ListView belmanFord(context) {
    return ListView(
      children: [
        StaticMethods.addHeader(context, "Belman Ford", passingArgument),
        StaticMethods.addText(
            "Diese Seite Beschäftigt sich mit BelmanFord. Hier werden "
            "Infortmationen über BelmanFord aufgezeigt, welches euch behilflich sein kann,"
            "wenn ihr etwas nicht versteht oder neu lernen müsst.",
            passingArgument)
      ],
    );
  }

  ListView floyd(context) {
    return ListView(
      children: [
        StaticMethods.addHeader(context, "Floyd ", passingArgument),
        StaticMethods.addText(
            "Diese Seite Beschäftigt sich mit Floyd. Hier werden "
            "Infortmationen über Floyd aufgezeigt, welches euch behilflich sein kann,"
            "wenn ihr etwas nicht versteht oder neu lernen müsst.",
            passingArgument)
      ],
    );
  }

  ListView timeScheduling(context) {
    return ListView(
      children: [
        StaticMethods.addHeader(context, "Time Scheduling ", passingArgument),
        StaticMethods.addText(
            "Diese Seite Beschäftigt sich mit dem Time Scheduling. Hier werden "
            "Infortmationen über Time Scheduling aufgezeigt, welches euch behilflich sein kann,"
            "wenn ihr etwas nicht versteht oder neu lernen müsst.",
            passingArgument)
      ],
    );
  }

  ListView showSubThemeContent(context) {
    switch (passingArgument.getSubtheme()) {
      case "belmanford":
        return belmanFord(context);
      case "floyd":
        return floyd(context);
      case "timescheduling":
        return timeScheduling(context);
      default:
        return StaticMethods.ungezeigteSeite(context, passingArgument);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: passingArgument.getBackgroundColor(),
      bottomNavigationBar: MyButtomNavigationBar(
        passingArgument: passingArgument,
      ),
      appBar: AppBar(
        title: const Text('Theoretische Informatik 1'),
        backgroundColor: passingArgument.getPrimaryColor(),
      ),
      body: showSubThemeContent(context),
    );
  }
}
