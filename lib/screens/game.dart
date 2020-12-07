import 'package:e_learning/components/indexCard.dart';
import 'package:e_learning/components/indexCardWidget.dart';
import 'package:flutter/material.dart';

import '../components/indexCard.dart';
import '../constants.dart';

class Game extends StatefulWidget {
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  static Map<String, String> verifier = {
    "firstLabel": "Bubblesort",
    "secondLabel": "Insertionsort",
    "thirdLabel": "Mergesort",
    "firstColor": secondGameColor.toString(),
    "secondColor": thirdGameColor.toString(),
    "thirdColor": fourthGameColor.toString()
  };

  static List<IndexCard> indexCardList = [];

  static List<Widget> createIndexCardWidgetList(List<IndexCard> indexList) {
    List<Widget> result = [];
    indexList.forEach((element) {
      result.add(IndexCardWidget(element));
    });
    return result;
  }

  static List<IndexCard> createList(){
    List<IndexCard> cardList = [
    IndexCard(1, 'bubble', 'first_Info', 'bubbleSort', firstGameColor),
    IndexCard(
    2, 'insert', 'second_Info', 'insertionSort', firstGameColor),
    IndexCard(
    3, 'bubblesort', 'third_Info', 'bubbleSort', firstGameColor),
    IndexCard(4, 'insertionsort', 'four_Info', 'insertionSort', firstGameColor),
    IndexCard(5, 'bub', 'five_Info', 'bubbleSort', firstGameColor),
    IndexCard(6, 'ins', 'six_Info', 'insertionSort', firstGameColor),
    IndexCard(7, 'merguez', 'seven_Info', 'mergeSort', firstGameColor),
    IndexCard(8, 'merge', 'eight_Info', 'mergeSort', firstGameColor),
    IndexCard(9, 'mergesort', 'nine_Info', 'mergeSort', firstGameColor)];
    indexCardList = cardList;
    return cardList;

  }

  static List<Widget> indexCardWidgetList =

      createIndexCardWidgetList(createList());

  static List<IndexCard> winAlgo() {
    List<IndexCard> falseCards = [];
    indexCardList.forEach((element) {
      if (element.label.toLowerCase() == verifier["firstLabel"].toLowerCase()) {
        if (!(element.stateOfColor.toString() == verifier["firstColor"])) {
          falseCards.add(element);
        }
      }
      if (element.label.toLowerCase() ==
          verifier["secondLabel"].toLowerCase()) {
        if (!(element.stateOfColor.toString() == verifier["secondColor"])) {
          falseCards.add(element);
        }
      }
      if (element.label.toLowerCase() == verifier["thirdLabel"].toLowerCase()) {
        if (!(element.stateOfColor.toString() == verifier["thirdColor"])) {
          falseCards.add(element);
        }
      }
    });
    return falseCards;
  }

  static void printAlgo(List<IndexCard> indexCards) {
    indexCards.forEach((element) {
      print(element.name);
    });
  }

  static Color getColorFromString(String color) {
    String valueString = color.split('(0x')[1].split(')')[0]; // kind of hacky..
    int value = int.parse(valueString, radix: 16);
    return new Color(value);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
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
              children: indexCardWidgetList,
            ),
          )
        ]),
        Column(children: [
          RaisedButton(
            onPressed: () => {
              printAlgo(winAlgo()),
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
