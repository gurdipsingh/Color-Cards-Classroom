import 'package:e_learning/Modules/GL1/Gl1Subthemes/bubbleSort.dart';
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
          children: [
            RouteGenerator.createElevatedButton(context,"Bubblesort", BubbleSort.route,passingArgument),
            RouteGenerator.createElevatedButton(context, "Insertionsort",BubbleSort.route,passingArgument),
            RouteGenerator.createElevatedButton(context, "Selectionsort",BubbleSort.route,passingArgument),
            RouteGenerator.createElevatedButton(context, "Quicksort",BubbleSort.route,passingArgument),
            RouteGenerator.createElevatedButton(context, "Mergesort",BubbleSort.route,passingArgument),
          ],
        )
    );
  }
}