import 'package:e_learning/components/PassingArgument.dart';
import 'package:e_learning/components/myButtomNavBar.dart';
import 'package:e_learning/constants.dart';
import 'package:flutter/material.dart';

class SortingAlgorithm extends StatelessWidget {
  static const route = '/Sortieralgotithmen ';

  final PassingArgument passingArgument;

  SortingAlgorithm({
    Key key,
    @required this.passingArgument,}) : super(key: key);

  bubbleSort(context) {
    return RichText(
      text: TextSpan(
          style: DefaultTextStyle
              .of(context)
              .style,
          children: <TextSpan>[
            TextSpan(text: "BubbleSort \n",
                style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                    decorationColor: secondaryColor)),
            TextSpan(
                text: "Diese Seite Beschäftigt sich mit BubbleSort. Hier werden "
                    "Infortmationen über Bubblesort aufgezeigt, welches euch behilflich sein kann,"
                    "wenn ihr etwas nicht versteht oder neu lernen müsst.",
                style: TextStyle(color: Colors.black,
                    fontSize: 15,
                    decoration: TextDecoration.none))
          ]
      ),
    );
  }

  insertionSort(context) {
    return RichText(
      text: TextSpan(
          style: DefaultTextStyle
              .of(context)
              .style,
          children: <TextSpan>[
            TextSpan(text: "Insertionsort \n",
                style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                    decorationColor: secondaryColor)),
            TextSpan(
                text: "Diese Seite Beschäftigt sich mit Insertionsort. Hier werden "
                    "Infortmationen über Insertionsort aufgezeigt, welches euch behilflich sein kann,"
                    "wenn ihr etwas nicht versteht oder neu lernen müsst.",
                style: TextStyle(color: Colors.black,
                    fontSize: 15,
                    decoration: TextDecoration.none))
          ]
      ),
    );
  }

  selectionSort(context) {
    return RichText(
      text: TextSpan(
          style: DefaultTextStyle
              .of(context)
              .style,
          children: <TextSpan>[
            TextSpan(text: "Selectionsort \n",
                style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                    decorationColor: secondaryColor)),
            TextSpan(
                text: "Diese Seite Beschäftigt sich mit Selectionsort. Hier werden "
                    "Infortmationen über Selectionsort aufgezeigt, welches euch behilflich sein kann,"
                    "wenn ihr etwas nicht versteht oder neu lernen müsst.",
                style: TextStyle(color: Colors.black,
                    fontSize: 15,
                    decoration: TextDecoration.none))
          ]
      ),
    );
  }

  quickSort(context) {
    return RichText(
      text: TextSpan(
          style: DefaultTextStyle
              .of(context)
              .style,
          children: <TextSpan>[
            TextSpan(text: "Quicksort \n",
                style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                    decorationColor: secondaryColor)),
            TextSpan(
                text: "Diese Seite Beschäftigt sich mit Quicksort. Hier werden "
                    "Infortmationen über Quicksort aufgezeigt, welches euch behilflich sein kann,"
                    "wenn ihr etwas nicht versteht oder neu lernen müsst.",
                style: TextStyle(color: Colors.black,
                    fontSize: 15,
                    decoration: TextDecoration.none))
          ]
      ),
    );
  }

  mergeSort(context) {
    return RichText(
      text: TextSpan(
          style: DefaultTextStyle
              .of(context)
              .style,
          children: <TextSpan>[
            TextSpan(text: "Mergesort \n",
                style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                    decorationColor: secondaryColor)),
            TextSpan(
                text: "Diese Seite Beschäftigt sich mit Mergesort. Hier werden "
                    "Infortmationen über Mergesort aufgezeigt, welches euch behilflich sein kann,"
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
    switch (passingArgument.navigation["subtheme"]) {
      case "bubblesort":
        return bubbleSort(context);
      case "insertionsort":
        return insertionSort(context);
      case "selectionsort":
        return selectionSort(context);
      case "quicksort":
        return quickSort(context);
      case "mergesort":
        return mergeSort(context);
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



