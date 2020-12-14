import 'package:e_learning/components/PassingArgument.dart';
import 'package:e_learning/components/modules.dart';
import 'package:e_learning/components/myButtomNavBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

//TODO: Custom navigation vollenden
//TODO: Betrachte den Navigationswechsel bei Fehler

class HomeScreen extends StatelessWidget {
  static const route = "/";

  final PassingArgument passingArgument;

  HomeScreen({
    Key key,
    @required this.passingArgument,
  }) : super(key: key);

  getHeightSizeAccordingToPercent(context, int percent) {
    var screenSize = MediaQuery.of(context).size;
    return (screenSize.height / 100) * percent;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyButtomNavigationBar(
        passingArgument: passingArgument,
      ),
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: primaryColor,
      ),
      body: Column(
        children: [
          Container(
              height: getHeightSizeAccordingToPercent(context, 10),
              child: Center(
                child: Text(
                  "Willkommen ${passingArgument.getName()}",
                  style: TextStyle(fontSize: 19),
                ),
              )),
          Container(
            height: getHeightSizeAccordingToPercent(context, 60),
            child: Modules(passingArgument: passingArgument),
          )
        ],
      ),
    );
  }
}
