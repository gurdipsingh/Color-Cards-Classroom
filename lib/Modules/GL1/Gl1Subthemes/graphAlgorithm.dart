import 'package:e_learning/components/PassingArgument.dart';
import 'package:e_learning/components/myButtomNavBar.dart';
import 'package:e_learning/constants.dart';
import 'package:flutter/material.dart';

class GraphAlgorithm extends StatelessWidget {
  static const route = '/Graphenalgorithmen';

  final PassingArgument passingArgument;

  GraphAlgorithm({
    Key key,
    @required this.passingArgument,}) : super(key: key);

  dijkstra(context) {
    return RichText(
      text: TextSpan(
          style: DefaultTextStyle
              .of(context)
              .style,
          children: <TextSpan>[
            TextSpan(text: "Algorithmus von Dijkstra \n",
                style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                    decorationColor: secondaryColor)),
            TextSpan(
                text: "Diese Seite Beschäftigt sich mit Dijkstra. Hier werden "
                    "Infortmationen über Dijkstra aufgezeigt, welches euch behilflich sein kann,"
                    "wenn ihr etwas nicht versteht oder neu lernen müsst.",
                style: TextStyle(color: Colors.black,
                    fontSize: 15,
                    decoration: TextDecoration.none))
          ]
      ),
    );
  }

  kruskal(context) {
    return RichText(
      text: TextSpan(
          style: DefaultTextStyle
              .of(context)
              .style,
          children: <TextSpan>[
            TextSpan(text: "Algorithmus von Kruskal \n",
                style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                    decorationColor: secondaryColor)),
            TextSpan(
                text: "Diese Seite Beschäftigt sich mit Kruskal. Hier werden "
                    "Infortmationen über Kruskal aufgezeigt, welches euch behilflich sein kann,"
                    "wenn ihr etwas nicht versteht oder neu lernen müsst.",
                style: TextStyle(color: Colors.black,
                    fontSize: 15,
                    decoration: TextDecoration.none))
          ]
      ),
    );
  }

  prim(context) {
    return RichText(
      text: TextSpan(
          style: DefaultTextStyle
              .of(context)
              .style,
          children: <TextSpan>[
            TextSpan(text: "Algorithmus von Prim \n",
                style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                    decorationColor: secondaryColor)),
            TextSpan(
                text: "Diese Seite Beschäftigt sich mit dem Prim Algorthmus. Hier werden "
                    "Infortmationen über Prim aufgezeigt, welches euch behilflich sein kann,"
                    "wenn ihr etwas nicht versteht oder neu lernen müsst.",
                style: TextStyle(color: Colors.black,
                    fontSize: 15,
                    decoration: TextDecoration.none))
          ]
      ),
    );
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
    switch (passingArgument.getSubtheme()) {
      case "dijkstra":
        return dijkstra(context);
      case "kruskal":
        return kruskal(context);
      case "prim":
        return prim(context);
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



