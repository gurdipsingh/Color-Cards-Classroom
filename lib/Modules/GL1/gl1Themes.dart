import 'package:e_learning/components/PassingArgument.dart';
import 'package:e_learning/components/myButtomNavBar.dart';
import 'package:e_learning/route_generator.dart';
import 'package:e_learning/screens/learnOrTest.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_learning/constants.dart';



class Gl1Themes extends StatelessWidget {
  static const route = '/gl1Themes';


  final PassingArgument passingArgument;

  Gl1Themes({
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
            padding: const EdgeInsets.all(20),

          children:<Widget> [
            Container(
              height: 80,
                padding: const EdgeInsets.all(15),
                child: RouteGenerator.createElevatedButtonWithMapSafe(context,"Sortieralgotithmen",LearnOrTest.route, passingArgument, "theme", "Sortieralgorithmen")
            ),
            Container(
              height: 80,
              padding: const EdgeInsets.all(15),
            child: RouteGenerator.createElevatedButtonWithMapSafe(context, "Graphenalgorithmen",LearnOrTest.route,passingArgument, "theme", "Graphenalgorithmen")),
            Container(
                height: 80,
                padding: const EdgeInsets.all(15),
            child: RouteGenerator.createElevatedButtonWithMapSafe(context, "Dynamische Programmierung",LearnOrTest.route,passingArgument, "theme", "Dynamische Prog.")),
            Container(
              height: 80,
              padding: const EdgeInsets.all(15),
            child: RouteGenerator.createElevatedButtonWithMapSafe(context, "Custom",LearnOrTest.route,passingArgument, "theme", "Custom")),
            Container(
              height: 80,
              padding: const EdgeInsets.all(15),
            child: RouteGenerator.createElevatedButtonWithMapSafe(context, "Alles",LearnOrTest.route,passingArgument, "theme", "Alles"),
    )
    ],
    )
    );
        
    
  }
}

