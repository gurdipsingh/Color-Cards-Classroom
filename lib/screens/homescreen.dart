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
    @required this.passingArgument,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyButtomNavigationBar(passingArgument: passingArgument,),
      appBar: AppBar(
        title: Text(passingArgument.name),
        backgroundColor: primaryColor,
      ),
      body: Center(
        child: Modules(passingArgument: passingArgument),
      ),
    );
  }
}
