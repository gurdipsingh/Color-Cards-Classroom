import 'package:e_learning/components/PassingArgument.dart';
import 'package:e_learning/components/myButtomNavBar.dart';
import 'package:e_learning/constants.dart';
import 'package:flutter/material.dart';

import '../route_generator.dart';


class LearnOrTest extends StatelessWidget {
  static const route = '/learnOrTest';


  final PassingArgument passingArgument;

  LearnOrTest({
    Key key,
    @required this.passingArgument,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: MyButtomNavigationBar(passingArgument: passingArgument,),
        appBar: AppBar(
          title: Text(passingArgument.getElement("theme")),
          backgroundColor: primaryColor,
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.symmetric(vertical: 180, horizontal: 30),
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              color: secondaryColor,
              child: RouteGenerator.createElevatedButton(context, "Lernen","/gl1Lernen",passingArgument),)
            ,
            Container(
              color: secondaryColor,
              child: RouteGenerator.createElevatedButton(context, "Abfragen","/gameSelectionMode",passingArgument),
            ),
          ],
        )
    );
  }
}