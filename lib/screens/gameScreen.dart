import 'package:e_learning/Modules/GL1/gl1CardPool.dart';
import 'package:e_learning/components/PassingArgument.dart';
import 'package:e_learning/components/myButtomNavBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class GameScreen extends StatelessWidget {
  static const route = "/game";

  final PassingArgument passingArgument;

  GameScreen({
    Key key,
    @required this.passingArgument,}) : super(key: key);

  getCardPool(){
    switch(passingArgument.navigation["Module"]){
      case "GL1":
        return Gl1CardPool(passingArgument: passingArgument);
        /* If other Module Cardpool are created, insert it here
      case "HWR":
        return HWRCardPool(passingArgument: passingArgument);
      case "PRG1":
        return PRG1CardPool(passingArgument: passingArgument);
      case "Mathe1":
        return Mathe1CardPool(passingArgument: passingArgument);
    */
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyButtomNavigationBar(passingArgument: passingArgument,),
      appBar: AppBar(
        title: Text("GAME"),
        backgroundColor: primaryColor,
      ),
      body: Center(
        child: getCardPool()
      ),
    );
  }
}
