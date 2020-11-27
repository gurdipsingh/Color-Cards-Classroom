import 'package:e_learning/components/myButtomNavBar.dart';
import 'package:e_learning/constants.dart';
import 'package:flutter/material.dart';

import '../../route_generator.dart';

class Gl1SubThemes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: MyButtomNavigationBar(),
        appBar: AppBar(
          title: const Text('Theoretische Informatik 1'),
          backgroundColor: primaryColor,
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          children: [
            RouteGenerator.createElevatedButton(context,"Bubblesort", "/bubbleSort"),
            RouteGenerator.createElevatedButton(context, "Insertionsort","/bubbleSort"),
            RouteGenerator.createElevatedButton(context, "Selectionsort","/bubbleSort"),
            RouteGenerator.createElevatedButton(context, "Quicksort","/bubbleSort"),
            RouteGenerator.createElevatedButton(context, "Mergesort","/bubbleSort"),
          ],
        )
    );
  }
}