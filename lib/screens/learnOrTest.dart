import 'package:e_learning/components/PassingArgument.dart';
import 'package:e_learning/components/myButtomNavBar.dart';
import 'package:flutter/material.dart';

import '../route_generator.dart';

class LearnOrTest extends StatelessWidget {
  static const route = '/learnOrTest';

  final PassingArgument passingArgument;

  LearnOrTest({
    Key key,
    @required this.passingArgument,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: passingArgument.getBackgroundColor(),
        bottomNavigationBar: MyButtomNavigationBar(
          passingArgument: passingArgument,
        ),
        appBar: AppBar(
          title: Text(passingArgument.getTheme()),
          backgroundColor: passingArgument.getPrimaryColor(),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                height: 300,
                width: 150,
                child: RouteGenerator.createElevatedButton(
                    context, "Lernen", "/gl1Lernen", passingArgument),
              ),
              Container(
                height: 300,
                width: 150,
                child: RouteGenerator.createElevatedButton(
                    context, "Abfragen", "/gameSelectionMode", passingArgument),
              ),
            ],
          ),
        ));
  }
}
