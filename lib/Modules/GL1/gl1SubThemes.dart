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
          children: [
            RouteGenerator.createElevatedButton(context,"Bubblesort", "/gl1Mode"),
            RouteGenerator.createElevatedButton(context, "Insertionsort","/gl1Mode"),
            RouteGenerator.createElevatedButton(context, "Selectionsort","/gl1Mode"),
            RouteGenerator.createElevatedButton(context, "Quicksort","/gl1Mode"),
            RouteGenerator.createElevatedButton(context, "Mergesort","/gl1Mode"),
          ],
        )
    );
  }
}