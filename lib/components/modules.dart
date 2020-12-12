import 'package:e_learning/route_generator.dart';
import 'package:flutter/material.dart';

import 'PassingArgument.dart';

class Modules extends StatelessWidget {

  final PassingArgument passingArgument;

  Modules({
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
        RouteGenerator.createRaisedButtonWithMapSafe(context, "Gl1", "/gl1Themes", passingArgument, "Module", "GL1"),
        RouteGenerator.createRaisedButtonWithMapSafe(context, "HWR", "/none",passingArgument, "Module", "HWR"),
        RouteGenerator.createRaisedButtonWithMapSafe(context, "PRG1", "/none",passingArgument, "Module", "PRG1"),
        RouteGenerator.createRaisedButtonWithMapSafe(context, "Mathe1", "/none",passingArgument, "Module", "Mathe1"),
      ],
    );
  }
}
