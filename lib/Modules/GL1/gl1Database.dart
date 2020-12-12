import 'package:e_learning/components/PassingArgument.dart';
import 'package:e_learning/components/cardObject.dart';
import 'package:e_learning/constants.dart';
import 'package:e_learning/screens/solutionScreen.dart';
import 'package:flutter/material.dart';

/**
 * This Class Contains all the functionality for the GL1 Cardpool
 * Diese Klasse persistiert die Karteikarten und ihre Widgets
 */

class Gl1Database extends StatelessWidget {
  final PassingArgument passingArgument;

  Gl1Database({
  Key key,
  @required this.passingArgument
  }) : super(key: key);

  List<Widget> cardList = [];
  List<CardObject> cardObjects = [];

  // Hard coded solution to compare withS
  Map<String, String> verifier = {
    "firstLabel": "Bubblesort",
    "secondLabel": "Insertionsort",
    "thirdLabel": "Mergesort",
    "firstColor": secondGameColor.toString(),
    "secondColor": thirdGameColor.toString(),
    "thirdColor": fourthGameColor.toString()
  };

// Creates a list of CardObjects and then creates a list of its Widgets
  List<Widget> createSortingList(context) {
    this.cardList = [];
    this.cardObjects = [];
    cardObjects.add(new CardObject(1,"bubblesort", "bubb", "grey"));
    cardObjects.add(new CardObject(2,"bubblesort", "bubble", "grey"));
    cardObjects.add(new CardObject(3,"bubblesort", "bubbuu", "grey"));
    cardObjects.add(new CardObject(4,"mergesort", "merguez", "grey"));
    cardObjects.add(new CardObject(5,"mergesort", "mergez", "grey"));
    cardObjects.add(new CardObject(6,"mergesort", "mergeeez", "grey"));
    cardObjects.add(new CardObject(7,"insertionsort", "insi", "grey"));
    cardObjects.add(new CardObject(8,"insertionsort", "insertion", "grey"));
    cardObjects.add(new CardObject(9,"insertionsort", "inse", "grey"));

    cardObjects.forEach((element) {
      cardList.add(element.getWidget());
    });
    return cardList;

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



  // gets the Cards according to the Theme which was selected earlier
  showSubThemeContent(context) {
    switch (this.passingArgument.navigation["theme"]) {
      case "Sortieralgorithmen":
        return this.createSortingList(context);
      default:
        return ungezeigteSeite(context) ;
    }
  }

  // winning algo check
  List<CardObject> winAlgo() {
    List<CardObject> falseCards = [];
    this.cardObjects.forEach((element) {
      if (element.getLabel().toLowerCase() == verifier["firstLabel"].toLowerCase()) {
        if (!(element.convertStringToColor(element.getColorName()) == verifier["firstColor"])) {
          falseCards.add(element);
        }
      }
      if (element.getLabel().toLowerCase() ==
          verifier["secondLabel"].toLowerCase()) {
        if (!(element.convertStringToColor(element.getColorName()) == verifier["secondColor"])) {
          falseCards.add(element);
        }
      }
      if (element.getLabel().toLowerCase() == verifier["thirdLabel"].toLowerCase()) {
        if (!(element.convertStringToColor(element.getColorName()) == verifier["thirdColor"])) {
          falseCards.add(element);
        }
      }
    });
    return falseCards;
  }

  // temporary function to print all false answers
  void verifySolution(List<CardObject> falseCards, context){
    List<int> falseIds = [];
    falseCards.forEach((element) {
      falseIds.add(element.getId());
    });

    this.cardObjects.forEach((element) {
      if(falseIds.contains(element.getId())){
        element.createSolutionCard(false);
        //print(element.getSolutionWidget().getContent());
      }
      else{
        element.createSolutionCard(true);
      }
    });
    passingArgument.setCards(this.cardObjects);
    // Removes until nothing leftNavigator.pushNamedAndRemoveUntil(context, SolutionScreen.route, (_) => false, arguments: passingArgument);
    // TODO: return to HomeScreen Navigator.popUntil(context, (route) => route.isFirst);
    Navigator.of(context).pushNamed(SolutionScreen.route, arguments: passingArgument);
  }

  static Color getColorFromString(String color) {
    String valueString = color.split('(0x')[1].split(')')[0]; // kind of hacky..
    int value = int.parse(valueString, radix: 16);
    return new Color(value);
  }


  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    height: 30,
                    width: 110,
                    color: getColorFromString(verifier["firstColor"]),
                    child: Center(
                      child: Text(
                        verifier["firstLabel"],
                        style: TextStyle(
                          color: contentColor,
                        ),
                      ),
                    )),
                Container(
                    height: 30,
                    width: 110,
                    color: getColorFromString(verifier["secondColor"]),
                    child: Center(
                      child: Text(
                        verifier["secondLabel"],
                        style: TextStyle(
                          color: contentColor,
                        ),
                      ),
                    )),
                Container(
                    height: 30,
                    width: 110,
                    color: getColorFromString(verifier["thirdColor"]),
                    child: Center(
                      child: Text(
                        verifier["thirdLabel"],
                        style: TextStyle(
                          color: contentColor,
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
              children: showSubThemeContent(context),
            ),
          )
        ]),
        Column(children: [
          RaisedButton(
            onPressed: () => {
              verifySolution(winAlgo(), context),
            },
            child: Text(
              "Check answer",
              style: TextStyle(color: contentColor),
            ),
            color: secondaryColor,
          ),
        ])
      ],
    );
  }

}