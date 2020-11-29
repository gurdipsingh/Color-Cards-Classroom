import 'package:e_learning/components/PassingArgument.dart';
import 'package:e_learning/components/gameSelectionMode.dart';
import 'package:e_learning/components/myButtomNavBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class Gl1GameModeSelection extends StatelessWidget {

  static const route = '/gl1GameSelectionMode';

  final PassingArgument passingArgument;

  Gl1GameModeSelection({
    Key key,
    @required this.passingArgument,}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyButtomNavigationBar(passingArgument: passingArgument,),
      appBar: AppBar(
        title: const Text('Home Screen'),
        backgroundColor: primaryColor,
      ),
      body: GameSelectionMode(passingArgument: passingArgument,)
    );
  }
}