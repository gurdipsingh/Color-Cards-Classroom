import 'package:e_learning/Modules/GL1/Gl1Subthemes/solutionBase.dart';
import 'package:e_learning/components/PassingArgument.dart';
import 'package:e_learning/components/myButtomNavBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

// TODO: MERGE SOLUTIONBASE INTO SOLUTIONSCREEN AS IT IS REDUNDANT

class SolutionScreen extends StatelessWidget {
  static const route = "/solution";

  final PassingArgument passingArgument;

  SolutionScreen({
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
          child: SolutionBase(passingArgument: passingArgument,)
      ),
    );
  }
}
