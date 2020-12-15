import 'package:e_learning/components/PassingArgument.dart';
import 'package:e_learning/components/myButtomNavBar.dart';
import 'package:e_learning/constants.dart';
import 'package:flutter/material.dart';

import '../../../staticMethods.dart';

class GraphAlgorithm extends StatelessWidget {
  static const route = '/Graphenalgorithmen';

  final PassingArgument passingArgument;

  GraphAlgorithm({
    Key key,
    @required this.passingArgument,
  }) : super(key: key);

  ListView dijkstra(context) {
    return ListView(
      children: [
        StaticMethods.addHeader(context, "Algorithmus von Dijkstra "),
        StaticMethods.addText("Diese Seite Beschäftigt sich mit Dijkstra. Hier werden "
            "Infortmationen über Dijkstra aufgezeigt, welches euch behilflich sein kann,"
            "wenn ihr etwas nicht versteht oder neu lernen müsst.")
      ],
    );
  }


  ListView kruskal(context) {
    return ListView(
      children: [
        StaticMethods.addHeader(context, "Algorithmus von Kruskal "),
        StaticMethods.addText("Diese Seite Beschäftigt sich mit Kruskal. Hier werden "
            "Infortmationen über Kruskal aufgezeigt, welches euch behilflich sein kann,"
            "wenn ihr etwas nicht versteht oder neu lernen müsst.")
      ],
    );
  }


  ListView prim(context) {
    return ListView(
      children: [
        StaticMethods.addHeader(context, "Algorithmus von Prim "),
        StaticMethods.addText("Diese Seite Beschäftigt sich mit dem Prim Algorthmus. Hier werden "
            "Infortmationen über Prim aufgezeigt, welches euch behilflich sein kann,"
            "wenn ihr etwas nicht versteht oder neu lernen müsst.")
      ],
    );
  }


  ListView showSubThemeContent(context) {
    switch (passingArgument.getSubtheme()) {
      case "dijkstra":
        return dijkstra(context);
      case "kruskal":
        return kruskal(context);
      case "prim":
        return prim(context);
      default:
        return StaticMethods.ungezeigteSeite(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyButtomNavigationBar(
        passingArgument: passingArgument,
      ),
      appBar: AppBar(
        title: const Text('Theoretische Informatik 1'),
        backgroundColor: primaryColor,
      ),
      body: showSubThemeContent(context),
    );
  }
}
