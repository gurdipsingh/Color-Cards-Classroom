import 'package:e_learning/Modules/GL1/Gl1Subthemes/dynamicProgramming.dart';
import 'package:e_learning/Modules/GL1/Gl1Subthemes/graphAlgorithm.dart';
import 'package:e_learning/Modules/GL1/Gl1Subthemes/sortingAlgorithms.dart';
import 'package:e_learning/components/PassingArgument.dart';
import 'package:e_learning/components/myButtomNavBar.dart';
import 'package:e_learning/constants.dart';
import 'package:flutter/material.dart';

import '../../route_generator.dart';

class Gl1SubThemes extends StatelessWidget {
  static const route = '/gl1Lernen';

  final PassingArgument passingArgument;

  Gl1SubThemes({
    Key key,
    @required this.passingArgument,
  }) : super(key: key);

  List<ElevatedButton> sortierAlgorithmenSubThemes(context) {
    return [
      RouteGenerator.createElevatedButtonWithMapSafe(context, "Bubblesort",
          SortingAlgorithm.route, passingArgument, "subtheme", "bubblesort"),
      RouteGenerator.createElevatedButtonWithMapSafe(context, "Insertionsort",
          SortingAlgorithm.route, passingArgument, "subtheme", "insertionsort"),
      RouteGenerator.createElevatedButtonWithMapSafe(context, "Selectionsort",
          SortingAlgorithm.route, passingArgument, "subtheme", "selectionsort"),
      RouteGenerator.createElevatedButtonWithMapSafe(context, "Quicksort",
          SortingAlgorithm.route, passingArgument, "subtheme", "quicksort"),
      RouteGenerator.createElevatedButtonWithMapSafe(context, "Mergesort",
          SortingAlgorithm.route, passingArgument, "subtheme", "mergesort"),
    ];
  }

  List<ElevatedButton> graphenAlgorithmusSubThemes(context) {
    return [
      RouteGenerator.createElevatedButtonWithMapSafe(context, "Dijkstra",
          GraphAlgorithm.route, passingArgument, "subtheme", "dijkstra"),
      RouteGenerator.createElevatedButtonWithMapSafe(context, "Kruskal",
          GraphAlgorithm.route, passingArgument, "subtheme", "kruskal"),
      RouteGenerator.createElevatedButtonWithMapSafe(context, "Prim",
          GraphAlgorithm.route, passingArgument, "subtheme", "prim"),
    ];
  }

  List<ElevatedButton> dynamischeProgrammierungSubThemes(context) {
    return [
      RouteGenerator.createElevatedButtonWithMapSafe(context, "Belman Ford",
          DynamicProgramming.route, passingArgument, "subtheme", "belmanford"),
      RouteGenerator.createElevatedButtonWithMapSafe(context, "Floyd",
          DynamicProgramming.route, passingArgument, "subtheme", "floyd"),
      RouteGenerator.createElevatedButtonWithMapSafe(
          context,
          "Time Scheduling",
          DynamicProgramming.route,
          passingArgument,
          "subtheme",
          "timescheduling"),
    ];
  }

  List<ElevatedButton> showSubThemeContent(context) {
    switch (passingArgument.getTheme()) {
      case "Sortieralgorithmen":
        return sortierAlgorithmenSubThemes(context);
      case "Graphenalgorithmen":
        return graphenAlgorithmusSubThemes(context);
      case "Dynamische Prog.":
        return dynamischeProgrammierungSubThemes(context);
      case "Alles":
        return sortierAlgorithmenSubThemes(context) +
            graphenAlgorithmusSubThemes(context) +
            dynamischeProgrammierungSubThemes(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: MyButtomNavigationBar(
          passingArgument: passingArgument,
        ),
        appBar: AppBar(
          title: Text(passingArgument.getTheme()),
          backgroundColor: primaryColor,
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          children: showSubThemeContent(context),
        ));
  }
}
