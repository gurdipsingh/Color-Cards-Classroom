import 'package:e_learning/Modules/GL1/Gl1Subthemes/dynamicProgramming.dart';
import 'package:e_learning/Modules/GL1/Gl1Subthemes/graphAlgorithm.dart';
import 'package:e_learning/Modules/GL1/Gl1Subthemes/sortingAlgorithms.dart';
import 'package:e_learning/Modules/GL1/gl1SubThemes.dart';
import 'package:e_learning/Modules/GL1/gl1Themes.dart';
import 'package:e_learning/components/PassingArgument.dart';
import 'package:e_learning/constants.dart';
import 'package:e_learning/screens/gameModeSelection.dart';
import 'package:e_learning/screens/gameScreen.dart';
import 'package:e_learning/screens/help.dart';
import 'package:e_learning/screens/homescreen.dart';
import 'package:e_learning/screens/learnOrTest.dart';
import 'package:e_learning/screens/settings.dart';
import 'package:e_learning/screens/startScreen.dart';
import 'package:e_learning/screens/statistic.dart';
import 'package:flutter/material.dart';

import 'screens/homescreen.dart';

class RouteGenerator {
  static int index = 0;

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final _passingArgument = settings.arguments;

    switch (settings.name) {
      case "/":
        RouteGenerator.index = 0;
        if (_passingArgument is PassingArgument) {
          return _createRoute(HomeScreen(
            passingArgument: _passingArgument,
          ));
        }
        return _errorRoute(_passingArgument);
      case '/startScreen':
        return MaterialPageRoute(builder: (_) => StartScreen());
      case "/statistic":
        RouteGenerator.index = 1;
        if (_passingArgument is PassingArgument) {
          return _createRoute(Statistic(
              passingArgument:
                  _passingArgument)); //  TODO: Muss ausgewechselt werden!
        }
        return _errorRoute(_passingArgument);
      case "/help":
        RouteGenerator.index = 2;
        if (_passingArgument is PassingArgument) {
          return _createRoute(Help(passingArgument: _passingArgument));
        }
        return _errorRoute(_passingArgument);
      case "/settings":
        RouteGenerator.index = 3;
        if (_passingArgument is PassingArgument) {
          return _createRoute(Settings(passingArgument: _passingArgument));
        }
        return _errorRoute(_passingArgument);
      case '/gl1Themes':
        if (_passingArgument is PassingArgument) {
          return _createRoute(Gl1Themes(passingArgument: _passingArgument));
        }
        return _errorRoute(_passingArgument);
      case '/learnOrTest':
        if (_passingArgument is PassingArgument) {
          return _createRoute(LearnOrTest(passingArgument: _passingArgument));
        }
        return _errorRoute(_passingArgument);
      case '/gl1Lernen':
        if (_passingArgument is PassingArgument) {
          return _createRoute(Gl1SubThemes(passingArgument: _passingArgument));
        }
        return _errorRoute(_passingArgument);
      case '/sortingAlgorithm':
        return _createRoute(SortingAlgorithm(
          passingArgument: _passingArgument,
        ));
      case '/graphalgorithm':
        return _createRoute(GraphAlgorithm(
          passingArgument: _passingArgument,
        ));
      case '/dynamicprogramming':
        return _createRoute(DynamicProgramming(
          passingArgument: _passingArgument,
        ));
      case '/gameSelectionMode':
        return _createRoute(GameModeSelection(
          passingArgument: _passingArgument,
        ));
      case '/game':
        return _createRoute(GameScreen(passingArgument: _passingArgument));
      default:
        return _errorRoute(_passingArgument);
    }
  }

  static PageRouteBuilder _createRoute(widget) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => widget,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      },
    );
  }

  static int getIndex() {
    return index;
  }

  static ElevatedButton createElevatedButton(context, String labelName,
      String routingPageName, PassingArgument passingArgument) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: secondaryColor,
        textStyle: TextStyle(fontSize: 15),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0))),
      ),
      child: Text(labelName),
      onPressed: () {
        Navigator.of(context)
            .pushNamed(routingPageName, arguments: passingArgument);
      },
    );
  }

  static ElevatedButton createElevatedButtonWithMapSafe(
      context,
      String labelName,
      String routingPageName,
      PassingArgument passingArgument,
      String key,
      String element) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: secondaryColor,
        textStyle: TextStyle(fontSize: 15),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0))),
      ),
      child: Text(labelName),
      onPressed: () {
        if (key != null && element != null) {
          passingArgument.setElementToKey(key, element);
        }
        Navigator.of(context)
            .pushNamed(routingPageName, arguments: passingArgument);
      },
    );
  }

  static RaisedButton createRaisedButton(context, String labelName,
      String routingPageName, PassingArgument passingArgument) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      onPressed: () {
        Navigator.of(context)
            .pushNamed(routingPageName, arguments: passingArgument);
      },
      child: Text(
        labelName,
        style: TextStyle(color: contentColor, fontSize: 20),
      ),
      color: secondaryColor,
    );
  }

  static RaisedButton createRaisedButtonWithMapSafe(
      context,
      String labelName,
      String routingPageName,
      PassingArgument passingArgument,
      String key,
      String element) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      onPressed: () {
        if (key != null && element != null) {
          passingArgument.setElementToKey(key, element);
        }
        Navigator.of(context)
            .pushNamed(routingPageName, arguments: passingArgument);
      },
      child: Text(
        labelName,
        style: TextStyle(color: contentColor, fontSize: 20),
      ),
      color: secondaryColor,
    );
  }

  static Route<dynamic> _errorRoute(args) {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          title: Text("Error"),
        ),
        body: Center(
          child: Text("Error"),
        ),
      );
    });
  }
}
