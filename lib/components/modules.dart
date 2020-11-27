import 'package:e_learning/route_generator.dart';
import 'package:flutter/material.dart';

class Modules extends StatefulWidget {
  @override
  _Modules createState() => _Modules();
}

class _Modules extends State<Modules> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      crossAxisCount: 2,
      children: <Widget>[
        RouteGenerator.createRaisedButton(context, "Gl1", "/gl1Themes"),
        RouteGenerator.createRaisedButton(context, "HWR", "/none"),
        RouteGenerator.createRaisedButton(context, "PRG1", "/none"),
        RouteGenerator.createRaisedButton(context, "Mathe1", "/none"),

      ],
    );
  }
}
