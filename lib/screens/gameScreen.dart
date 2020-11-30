import 'package:e_learning/components/PassingArgument.dart';
import 'package:e_learning/components/myButtomNavBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'game.dart';

class GameScreen extends StatelessWidget {
  static const route = "/game";

  final PassingArgument passingArgument;

  GameScreen({
    Key key,
    @required this.passingArgument,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyButtomNavigationBar(passingArgument: passingArgument,),
      appBar: AppBar(
        title: Text("GAME"),
        backgroundColor: primaryColor,
      ),
      body: Center(
        child: Game(),
      ),
    );
  }
}
