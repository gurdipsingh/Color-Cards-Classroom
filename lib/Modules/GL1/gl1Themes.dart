import 'package:e_learning/components/myButtomNavBar.dart';
import 'package:e_learning/route_generator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_learning/constants.dart';



class Gl1Themes extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: MyButtomNavigationBar(),
        appBar: AppBar(
          title: const Text('Theoretische Informatik 1'),
          backgroundColor: primaryColor,
        ),
        body: ListView(
            padding: const EdgeInsets.all(20),

          children:<Widget> [
            Container(
              height: 80,
                padding: const EdgeInsets.all(15),
                child: RouteGenerator.createElevatedButton(context,"Sortieralgorithmen", "/gl1Mode")
            ),
            Container(
              height: 80,
              padding: const EdgeInsets.all(15),
            child: RouteGenerator.createElevatedButton(context, "Graphenalgorithmen","/gl1Mode"),),
            Container(
                height: 80,
                padding: const EdgeInsets.all(15),
            child: RouteGenerator.createElevatedButton(context, "Dynamische Programmierung","/gl1Mode")),
            Container(
              height: 80,
              padding: const EdgeInsets.all(15),
            child: RouteGenerator.createElevatedButton(context, "Custom","/gl1Mode"),),
            Container(
              height: 80,
              padding: const EdgeInsets.all(15),
            child: RouteGenerator.createElevatedButton(context, "Alles","/gl1Mode"),
    )
    ],
    )
    );
        
    
  }
}

