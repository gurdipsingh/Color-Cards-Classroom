import 'package:e_learning/Modules/GL1/Gl1Subthemes/bubbleSort.dart';
import 'package:e_learning/Modules/GL1/gl1GameModeSelection.dart';
import 'package:e_learning/Modules/GL1/gl1Mode.dart';
import 'package:e_learning/Modules/GL1/gl1SubThemes.dart';
import 'package:e_learning/Modules/GL1/gl1Themes.dart';
import 'package:e_learning/components/PassingArgument.dart';
import 'package:e_learning/constants.dart';
import 'package:e_learning/screens/game.dart';
import 'package:e_learning/screens/help.dart';
import 'package:e_learning/screens/homescreen.dart';
import 'package:e_learning/screens/settings.dart';
import 'package:e_learning/screens/startScreen.dart';
import 'package:e_learning/screens/statistic.dart';
import 'package:flutter/material.dart';

import 'screens/homescreen.dart';



class RouteGenerator{

  static int index = 0;
  static String name;

  static Route<dynamic> generateRoute(RouteSettings settings){

    final _passingArgument = settings.arguments;

    switch (settings.name){
      case HomeScreen.route:
        RouteGenerator.index = 0;
        if(_passingArgument is PassingArgument){
          name = _passingArgument.name;
        return _createRoute(HomeScreen(passingArgument: _passingArgument,));
        }
        return _errorRoute(_passingArgument);
      case '/startScreen':
        return MaterialPageRoute(builder: (_)=> StartScreen());
      case '/statistic':
        RouteGenerator.index = 1;
        if(name != null){
          return _createRoute(Statistic(passingArgument: PassingArgument(name,{}))); //  TODO: Muss ausgewechselt werden!
        }
        return _errorRoute(_passingArgument);
      case '/help':
        RouteGenerator.index = 2;
        return _createRoute(Help());
      case '/settings':
        RouteGenerator.index = 3;
        return _createRoute(Settings());
      case '/gl1Themes':
        if(_passingArgument is PassingArgument){
          return _createRoute(Gl1Themes(passingArgument: _passingArgument));
              }
         return _errorRoute(_passingArgument);
      case '/gl1Mode':
        if(_passingArgument is PassingArgument){
          return _createRoute(Gl1Mode(passingArgument: _passingArgument));
        }
        return _errorRoute(_passingArgument);
      case '/gl1Lernen':
        if(_passingArgument is PassingArgument){
          return _createRoute(Gl1SubThemes(passingArgument: _passingArgument));
        }
        return _errorRoute(_passingArgument);
        case '/bubbleSort':
        return _createRoute(BubbleSort());
      case '/gl1GameSelectionMode':
        return _createRoute(BubbleSort());
        case '/gl1Abfragen':
        return _createRoute(Gl1GameModeSelection());
        case '/game':
        return _createRoute(Game());
        default:
        return _errorRoute(_passingArgument);
    }
  }

  static PageRouteBuilder _createRoute(widget){
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => widget,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      },
    );
  }

  static int getIndex(){
    return index;
  }

  static ElevatedButton createElevatedButton(context, String labelName,String routingPageName, PassingArgument passingArgument){
    return ElevatedButton(
      style:ElevatedButton.styleFrom(primary: secondaryColor,textStyle: TextStyle(fontSize: 15), shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(16.0))),),
      child: Text(labelName),
      onPressed: () {
        Navigator.of(context).pushNamed(routingPageName, arguments: passingArgument);
      },
    );
  }

  static RaisedButton createRaisedButton(context, String labelName, String routingPageName, PassingArgument passingArgument){
    return RaisedButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      onPressed: () {
        Navigator.of(context).pushNamed(routingPageName, arguments: passingArgument);
      },
      child: Text(labelName, style: TextStyle(color: contentColor, fontSize: 20),),
      color: secondaryColor,
    );
  }

  static Route<dynamic> _errorRoute(args){
    return MaterialPageRoute(builder: (_){
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