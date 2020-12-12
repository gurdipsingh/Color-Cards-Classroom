import 'package:e_learning/route_generator.dart';
import 'package:flutter/material.dart';

import 'PassingArgument.dart';

class GameModes extends StatelessWidget {

  final PassingArgument passingArgument;

  GameModes({
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
        RouteGenerator.createRaisedButtonWithMapSafe(context, "Unbewertet", "/game", passingArgument, "gamemode", "unbewertet"),
        RouteGenerator.createRaisedButtonWithMapSafe(context, "Bewertet", "/game",passingArgument, "gamemode", "bewertet"),
        RouteGenerator.createRaisedButtonWithMapSafe(context, "Zeit", "/game",passingArgument,"gamemode", "zeit"),
              ],
    );
  }
}