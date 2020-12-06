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
  static List<IndexCard> indexCardList = [
    IndexCard(1, 'bubble', 'first_Info', 'bubbleSort', firstGameColor),
    IndexCard(2, 'insert', 'second_Info', 'insertionSort', firstGameColor),
    IndexCard(3, 'bubblesort', 'third_Info', 'bubbleSort', firstGameColor),
    IndexCard(4, 'insertionsort', 'four_Info', 'insertionSort', firstGameColor),
    IndexCard(5, 'bub', 'five_Info', 'bubbleSort', firstGameColor),
    IndexCard(6, 'ins', 'six_Info', 'insertionSort', firstGameColor),
    IndexCard(7, 'merguez', 'seven_Info', 'mergeSort', firstGameColor),
    IndexCard(8, 'merge', 'eight_Info', 'mergeSort', firstGameColor),
    IndexCard(9, 'mergesort', 'nine_Info', 'mergeSort', firstGameColor),
  ];

  static List<Widget> createIndexCardWidgetList(List<IndexCard> indexList) {
    List<Widget> result = [];
    indexList.forEach((element) {
      result.add(IndexCardWidget(element));
    });
    result.add(
      RaisedButton(
        onPressed: () {
          winAlgo();
        },
        child: const Text('Check for win', style: TextStyle(fontSize: 20)),
      ),
    );
    return result;
  }

  static List<Widget> indexCardWidgetList =
      createIndexCardWidgetList(indexCardList);

  static void winAlgo() {
    List<IndexCard> sortedList = indexCardList;
    sortedList
        .sort((a, b) => a.label.toLowerCase().compareTo(b.label.toLowerCase()));
    List<IndexCard> solutionOne = sortedList.sublist(0, 3);
    List<IndexCard> solutionTwo = sortedList.sublist(3, 6);
    List<IndexCard> solutionThree = sortedList.sublist(6);

    print(checkIfColorsAreSame(solutionOne) &&
        checkIfColorsAreSame(solutionTwo) &&
        checkIfColorsAreSame(solutionThree));
  }

  static checkIfColorsAreSame(List<IndexCard> list) {
    for (IndexCard indexCard in list) {
      if (!(indexCard.stateOfColor.toString() ==
          list[0].stateOfColor.toString())) {
        return false;
      }
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 3,
      children: indexCardWidgetList,
    );
  }
}
