import 'package:e_learning/components/PassingArgument.dart';
import 'package:e_learning/components/modules.dart';
import 'package:e_learning/components/myButtomNavBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


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
      backgroundColor: passingArgument.getBackgroundColor(),
      bottomNavigationBar: MyButtomNavigationBar(
        passingArgument: passingArgument,
      ),
      appBar: AppBar(
        title: Text("Hauptmenü"),
        backgroundColor: passingArgument.getPrimaryColor(),
      ),
      body: ListView(
        children: [
          Container(
              height: getHeightSizeAccordingToPercent(context, 15),
              child: Center(
                child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      "Willkommen"
                      "\n${passingArgument.getName()} ",
                      style: TextStyle(
                          fontSize: 27, color: passingArgument.getTextColor()),
                      textAlign: TextAlign.center,
                    )),
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
