import 'package:e_learning/route_generator.dart';
import 'package:flutter/material.dart';

import 'PassingArgument.dart';

class GameSelectionMode extends StatelessWidget {

  final PassingArgument passingArgument;

  GameSelectionMode({
    Key key,
    @required this.passingArgument,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      crossAxisCount: 2,
      children: <Widget>[
        RouteGenerator.createRaisedButton(context, "Unbewertet", "/game", passingArgument),
        RouteGenerator.createRaisedButton(context, "Bewertet", "/game",passingArgument),
        RouteGenerator.createRaisedButton(context, "Zeit", "/game",passingArgument),
              ],
    );
  }
}