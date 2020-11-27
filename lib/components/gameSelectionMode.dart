import 'package:e_learning/route_generator.dart';
import 'package:flutter/material.dart';

class GameSelectionMode extends StatefulWidget {
  @override
  _GameSelectionMode createState() => _GameSelectionMode();
}

class _GameSelectionMode extends State<GameSelectionMode> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      crossAxisCount: 2,
      children: <Widget>[
        RouteGenerator.createRaisedButton(context, "Unbewertet", "/game"),
        RouteGenerator.createRaisedButton(context, "Bewertet", "/game"),
        RouteGenerator.createRaisedButton(context, "Zeit", "/game"),
              ],
    );
  }
}