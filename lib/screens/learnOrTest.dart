import 'package:e_learning/components/PassingArgument.dart';
import 'package:e_learning/components/myButtomNavBar.dart';
import 'package:e_learning/constants.dart';
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
        bottomNavigationBar: MyButtomNavigationBar(
          passingArgument: passingArgument,
        ),
        appBar: AppBar(
          title: Text(passingArgument.getTheme()),
          backgroundColor: primaryColor,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                height: 200,
                width: 130,
                child: RouteGenerator.createElevatedButton(
                    context, "Lernen", "/gl1Lernen", passingArgument),
              ),
              Container(
                height: 200,
                width: 130,
                child: RouteGenerator.createElevatedButton(
                    context, "Abfragen", "/gameSelectionMode", passingArgument),
              ),
            ],
          ),
        ));
  }
}
