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
        RouteGenerator.createRaisedButton(context, "Gl1", "/gl1Themes", passingArgument),
        RouteGenerator.createRaisedButton(context, "HWR", "/none",passingArgument),
        RouteGenerator.createRaisedButton(context, "PRG1", "/none",passingArgument),
        RouteGenerator.createRaisedButton(context, "Mathe1", "/none",passingArgument),

      ],
    );
  }
}
