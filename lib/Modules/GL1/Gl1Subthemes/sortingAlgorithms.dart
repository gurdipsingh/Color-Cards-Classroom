import 'package:e_learning/components/PassingArgument.dart';
import 'package:e_learning/components/myButtomNavBar.dart';
import 'package:e_learning/constants.dart';
import 'package:e_learning/staticMethods.dart';
import 'package:flutter/material.dart';

class SortingAlgorithm extends StatelessWidget {
  static const route = '/Sortieralgorithmen';

  final PassingArgument passingArgument;

  SortingAlgorithm({
    Key key,
    @required this.passingArgument,
  }) : super(key: key);

  ListView bubbleSort(context) {
    return ListView(
      children: [
        StaticMethods.addHeader(context, "BubbleSort"),
        StaticMethods.addText(
            "Diese Seite Beschäftigt sich mit BubbleSort. Hier werden "
            "Infortmationen über Bubblesort aufgezeigt, welches euch behilflich sein kann,"
            "wenn ihr etwas nicht versteht oder neu lernen müsst.",
            passingArgument)
      ],
    );
  }

  ListView insertionSort(context) {
    return ListView(
      children: [
        StaticMethods.addHeader(context, "Insertionsort"),
        StaticMethods.addText(
            "Diese Seite Beschäftigt sich mit Insertionsort. Hier werden "
            "Infortmationen über Insertionsort aufgezeigt, welches euch behilflich sein kann,"
            "wenn ihr etwas nicht versteht oder neu lernen müsst.",
            passingArgument)
      ],
    );
  }

  ListView selectionSort(context) {
    return ListView(
      children: [
        StaticMethods.addHeader(context, "Selectionsort"),
        StaticMethods.addText(
            "Diese Seite Beschäftigt sich mit Selectionsort. Hier werden "
            "Infortmationen über Selectionsort aufgezeigt, welches euch behilflich sein kann,"
            "wenn ihr etwas nicht versteht oder neu lernen müsst.",
            passingArgument)
      ],
    );
  }

  ListView quickSort(context) {
    return ListView(
      children: [
        StaticMethods.addHeader(context, "Quicksort"),
        StaticMethods.addText(
            "Diese Seite Beschäftigt sich mit Quicksort. Hier werden "
            "Infortmationen über Quicksort aufgezeigt, welches euch behilflich sein kann,"
            "wenn ihr etwas nicht versteht oder neu lernen müsst.",
            passingArgument)
      ],
    );
  }

  ListView mergeSort(context) {
    return ListView(
      children: [
        StaticMethods.addHeader(context, "Mergesort"),
        StaticMethods.addText(
            "Diese Seite Beschäftigt sich mit Mergesort. Hier werden "
            "Infortmationen über Mergesort aufgezeigt, welches euch behilflich sein kann,"
            "wenn ihr etwas nicht versteht oder neu lernen müsst.",
            passingArgument)
      ],
    );
  }

  ListView showSubThemeContent(context) {
    switch (passingArgument.getSubtheme()) {
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
        return StaticMethods.ungezeigteSeite(context, passingArgument);
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
