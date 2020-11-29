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
    @required this.passingArgument,}) : super(key: key);


  sortierAlgorithmenSubThemes(context) {
    return [
      RouteGenerator.createElevatedButtonWithMapSafe(context,"Bubblesort", SortingAlgorithm.route,passingArgument, "subtheme", "bubblesort"),
      RouteGenerator.createElevatedButtonWithMapSafe(context, "Insertionsort",SortingAlgorithm.route,passingArgument, "subtheme", "insertionsort"),
      RouteGenerator.createElevatedButtonWithMapSafe(context, "Selectionsort",SortingAlgorithm.route,passingArgument, "subtheme", "selectionsort"),
      RouteGenerator.createElevatedButtonWithMapSafe(context, "Quicksort",SortingAlgorithm.route,passingArgument, "subtheme", "quicksort"),
      RouteGenerator.createElevatedButtonWithMapSafe(context, "Mergesort",SortingAlgorithm.route,passingArgument, "subtheme", "mergesort"),
    ];
  }

  graphenAlgorithmusSubThemes(context) {
    return[
      RouteGenerator.createElevatedButtonWithMapSafe(context,"Dijkstra", SortingAlgorithm.route,passingArgument, "subtheme", "dijkstra"),
      RouteGenerator.createElevatedButtonWithMapSafe(context, "Kruskal",SortingAlgorithm.route,passingArgument, "subtheme", "kruskal"),
      RouteGenerator.createElevatedButtonWithMapSafe(context, "Prim",SortingAlgorithm.route,passingArgument, "subtheme", "prim"),
    ];
  }

  dynamischeProgrammierungSubThemes(context) {
    return [
      RouteGenerator.createElevatedButtonWithMapSafe(context,"Belman Ford", SortingAlgorithm.route,passingArgument, "subtheme", "belmanford"),
      RouteGenerator.createElevatedButtonWithMapSafe(context, "Floyd",SortingAlgorithm.route,passingArgument, "subtheme", "floyd"),
      RouteGenerator.createElevatedButtonWithMapSafe(context, "Time Scheduling",SortingAlgorithm.route,passingArgument, "subtheme", "timescheduling"),
    ];
  }

  ungezeigteSeite(context) {
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

  showSubThemeContent(context) {
    switch (passingArgument.navigation["theme"]) {
      case "Sortieralgorithmen":
        return sortierAlgorithmenSubThemes(context);
      case "Graphenalgorithmen":
        return graphenAlgorithmusSubThemes(context);
      case "Dynamische Prog.":
        return dynamischeProgrammierungSubThemes(context);
      case "Alles":
        return sortierAlgorithmenSubThemes(context) + graphenAlgorithmusSubThemes(context) + dynamischeProgrammierungSubThemes(context);

      default:
        return ungezeigteSeite(context) ;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: MyButtomNavigationBar(passingArgument: passingArgument,),
        appBar: AppBar(
          title: const Text('Theoretische Informatik 1'),
          backgroundColor: primaryColor,
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          children: showSubThemeContent(context),
        )
    );
  }






}