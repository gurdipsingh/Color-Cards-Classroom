import 'package:e_learning/components/PassingArgument.dart';
import 'package:e_learning/components/indexCardObject.dart';
import 'package:e_learning/components/indexCardWidget.dart';
import 'package:e_learning/components/timeCounter.dart';
import 'package:e_learning/constants.dart';
import 'package:e_learning/screens/resultScreen.dart';
import 'package:e_learning/staticMethods.dart';
import 'package:flutter/material.dart';

/**
 * This Class Contains all the functionality for the GL1 Cardpool
 * Diese Klasse persistiert die Karteikarten und ihre Widgets
 */

class Gl1Database extends StatelessWidget {
  final PassingArgument passingArgument;

  Gl1Database({Key key, @required this.passingArgument}) : super(key: key);

  List<IndexCardWidget> cardList = [];
  List<IndexCardObject> cardObjects = [];

  Map<String, List<IndexCardObject>> gl1Cards = {};

  // Hard coded solution to compare wins
  Map<String, String> verifier;

  void setVerifier() {
    switch (this.passingArgument.getTheme()) {
      case "Sortieralgorithmen":
        this.verifier = {
          "firstLabel": "Bubblesort",
          "secondLabel": "Selectionsort",
          "thirdLabel": "Mergesort",
          "firstColor": firstGameColor.toString(),
          "secondColor": secondGameColor.toString(),
          "thirdColor": thirdGameColor.toString()
        };
        break;
      case "Graphenalgorithmen":
        this.verifier = {
          "firstLabel": "Dijkstra",
          "secondLabel": "Kruskal",
          "thirdLabel": "Prim",
          "firstColor": firstGameColor.toString(),
          "secondColor": secondGameColor.toString(),
          "thirdColor": thirdGameColor.toString()
        };
        break;
      case "Dynamische Prog.":
        this.verifier = {
          "firstLabel": "Belman",
          "secondLabel": "Floyd",
          "thirdLabel": "Time Scheduling",
          "firstColor": firstGameColor.toString(),
          "secondColor": secondGameColor.toString(),
          "thirdColor": thirdGameColor.toString()
        };
        break;
      case "Alles":
        this.verifier = {
          "firstLabel": "Belman",
          "secondLabel": "Kruskal",
          "thirdLabel": "Insertionsort",
          "firstColor": firstGameColor.toString(),
          "secondColor": secondGameColor.toString(),
          "thirdColor": thirdGameColor.toString()
        };
        break;
    }
  }

// Creates a list of CardObjects and then creates a list of its Widgets
  List<IndexCardWidget> createGameList(context) {
    this.cardList = [];
    this.cardObjects = [];

    this.cardObjects = this.gl1Cards[this.passingArgument.getTheme()];
    this.cardObjects.shuffle();
    cardObjects.forEach((IndexCardObject element) {
      cardList.add(element.getWidget());
    });
    return cardList;
  }

  void initializeGl1Cards(context) {
    this.gl1Cards["Sortieralgorithmen"] = [
      new IndexCardObject(1, "bubblesort", "BC (n)", "grey", passingArgument.getFontSizeName()),
      new IndexCardObject(2, "bubblesort", "Sortieren durch tauschen des Nachbars", "grey", passingArgument.getFontSizeName()),
      new IndexCardObject(3, "bubblesort", "bubble", "grey", passingArgument.getFontSizeName()),
      new IndexCardObject(4, "mergesort", "BC (nlogn)", "grey", passingArgument.getFontSizeName()),
      new IndexCardObject(5, "mergesort", "merge", "grey", passingArgument.getFontSizeName()),
      new IndexCardObject(6, "mergesort", "Divide and Conquer", "grey", passingArgument.getFontSizeName()),
      new IndexCardObject(7, "selectionsort", "BC (n^2)", "grey", passingArgument.getFontSizeName()),
      new IndexCardObject(8, "selectionsort", "Sortieren durch Auswahl", "grey", passingArgument.getFontSizeName()),
      new IndexCardObject(9, "selectionsort", "selection", "grey", passingArgument.getFontSizeName()),
    ];

    this.gl1Cards["Graphenalgorithmen"] = [
      new IndexCardObject(1, "dijkstra", "dij", "grey", passingArgument.getFontSizeName()),
      new IndexCardObject(2, "dijkstra", "dijkstra", "grey", passingArgument.getFontSizeName()),
      new IndexCardObject(3, "dijkstra", "dii", "grey", passingArgument.getFontSizeName()),
      new IndexCardObject(4, "Kruskal", "krus", "grey", passingArgument.getFontSizeName()),
      new IndexCardObject(5, "Kruskal", "kal", "grey", passingArgument.getFontSizeName()),
      new IndexCardObject(6, "Kruskal", "kruskal", "grey", passingArgument.getFontSizeName()),
      new IndexCardObject(7, "Prim", "prim", "grey", passingArgument.getFontSizeName()),
      new IndexCardObject(8, "Prim", "optimus", "grey", passingArgument.getFontSizeName()),
      new IndexCardObject(9, "Prim", "prime", "grey", passingArgument.getFontSizeName())
    ];

    this.gl1Cards["Dynamische Prog."] = [
      new IndexCardObject(1, "belman", "bel", "grey", passingArgument.getFontSizeName()),
      new IndexCardObject(2, "belman", "man", "grey", passingArgument.getFontSizeName()),
      new IndexCardObject(3, "belman", "belman", "grey", passingArgument.getFontSizeName()),
      new IndexCardObject(4, "floyd", "flo", "grey", passingArgument.getFontSizeName()),
      new IndexCardObject(5, "floyd", "yd", "grey", passingArgument.getFontSizeName()),
      new IndexCardObject(6, "floyd", "floyd", "grey", passingArgument.getFontSizeName()),
      new IndexCardObject(7, "time scheduling", "time", "grey", passingArgument.getFontSizeName()),
      new IndexCardObject(8, "time scheduling", "schedule", "grey", passingArgument.getFontSizeName()),
      new IndexCardObject(9, "time scheduling", "time scheduling", "grey", passingArgument.getFontSizeName()),
    ];

    this.gl1Cards["Alles"] = [
      new IndexCardObject(1, "belman", "bel", "grey", passingArgument.getFontSizeName()),
      new IndexCardObject(2, "belman", "man", "grey", passingArgument.getFontSizeName()),
      new IndexCardObject(3, "belman", "belman", "grey", passingArgument.getFontSizeName()),
      new IndexCardObject(4, "Kruskal", "krus", "grey", passingArgument.getFontSizeName()),
      new IndexCardObject(5, "Kruskal", "kal", "grey", passingArgument.getFontSizeName()),
      new IndexCardObject(6, "Kruskal", "kruskal", "grey", passingArgument.getFontSizeName()),
      new IndexCardObject(7, "insertionsort", "insi", "grey", passingArgument.getFontSizeName()),
      new IndexCardObject(8, "insertionsort", "insertion", "grey", passingArgument.getFontSizeName()),
      new IndexCardObject(9, "insertionsort", "inse", "grey", passingArgument.getFontSizeName()),
    ];
  }

  // winning algo check
  List<IndexCardObject> winAlgo() {
    List<IndexCardObject> falseCards = [];
    this.cardObjects.forEach((IndexCardObject element) {
      if (element.getLabel().toLowerCase() ==
          verifier["firstLabel"].toLowerCase()) {
        if (!(element.convertStringToColor(element.getColorName()) ==
            verifier["firstColor"])) {
          falseCards.add(element);
        }
      }
      if (element.getLabel().toLowerCase() ==
          verifier["secondLabel"].toLowerCase()) {
        if (!(element.convertStringToColor(element.getColorName()) ==
            verifier["secondColor"])) {
          falseCards.add(element);
        }
      }
      if (element.getLabel().toLowerCase() ==
          verifier["thirdLabel"].toLowerCase()) {
        if (!(element.convertStringToColor(element.getColorName()) ==
            verifier["thirdColor"])) {
          falseCards.add(element);
        }
      }
    });
    return falseCards;
  }

  // temporary function to print all false answers
  void verifySolution(List<IndexCardObject> falseCards, context) {
    List<int> falseIds = [];
    falseCards.forEach((element) {
      falseIds.add(element.getId());
    });

    // If unrated then dont set it into the ScoreSheet
    if (this.passingArgument.getGameMode() == "unbewertet" ||
        this.passingArgument.getGameMode() == "zeit") {
      this
          .passingArgument
          .setUnratedScore(new DateTime.now(), 9 - falseIds.length);
    } else {
      this.passingArgument.addScore(new DateTime.now(), 9 - falseIds.length);
      if (this.passingArgument.getScoreSheet().first.color == Colors.black)
        this.passingArgument.getScoreSheet().remove(0);
    }

    this.cardObjects.forEach((IndexCardObject element) {
      if (falseIds.contains(element.getId())) {
        element.createSolutionCard(false);
      } else {
        element.createSolutionCard(true);
      }
    });
    passingArgument.setCards(this.cardObjects);
    Navigator.pushNamedAndRemoveUntil(context, ResultScreen.route, (_) => false,
        arguments: passingArgument);
    //Navigator.popUntil(context, (route) => route.isFirst);
    //Navigator.of(context).pushNamed(ResultScreen.route, arguments: passingArgument);
  }

  isContinueButtonNeeded(BuildContext context) {
    if (!(passingArgument.getGameMode() == "zeit")) {
      return RaisedButton(
        onPressed: () => {
          verifySolution(winAlgo(), context),
        },
        child: Text(
          "Lösung abgeben",
          style: TextStyle(color: contentColor, fontSize: 15+this.passingArgument.getAddtoFontSize().toDouble()),
        ),
        color: secondaryColor,
      );
    } else {
      return Container(
        height: 0,
        width: 0,
      );
    }
  }

  Column getTimer(context) {
    return Column(children: [
      TimeCounter(onTimeUp: () => {verifySolution(winAlgo(), context)})
    ]);
  }

  @override
  Widget build(BuildContext context) {
    initializeGl1Cards(context);
    setVerifier();
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            (this.passingArgument.getGameMode() == "zeit")
                ? getTimer(context)
                : Container(
                    height: 0,
                    width: 0,
                  ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    height: 30,
                    width: 110,
                    color: StaticMethods.getColorFromString(
                        verifier["firstColor"]),
                    child: Center(
                      child: Text(
                        verifier["firstLabel"],
                        style: TextStyle(
                          color: contentColor,
                          fontSize: 12 + passingArgument.getAddtoFontSize().toDouble(),
                        ),
                      ),
                    )),
                Container(
                    height: 30,
                    width: 110,
                    color: StaticMethods.getColorFromString(
                        verifier["secondColor"]),
                    child: Center(
                      child: Text(
                        verifier["secondLabel"],
                        style: TextStyle(
                          color: contentColor,
                          fontSize: 12 + passingArgument.getAddtoFontSize().toDouble(),
                        ),
                      ),
                    )),
                Container(
                    height: 30,
                    width: 110,
                    color: StaticMethods.getColorFromString(
                        verifier["thirdColor"]),
                    child: Center(
                      child: Text(
                        verifier["thirdLabel"],
                        style: TextStyle(
                          color: contentColor,
                          fontSize: 12 + passingArgument.getAddtoFontSize().toDouble(),
                        ),
                      ),
                    )),
              ],
            )
          ],
        ),
        Column(children: <Widget>[
          Container(
            height: 400,
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 3,
              children: this.createGameList(context),
            ),
          )
        ]),
        Column(children: [isContinueButtonNeeded(context)])
      ],
    );
  }
}
