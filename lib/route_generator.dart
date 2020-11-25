import 'package:e_learning/screens/help.dart';
import 'package:e_learning/screens/homescreen.dart';
import 'package:e_learning/screens/settings.dart';
import 'package:e_learning/screens/startScreen.dart';
import 'package:e_learning/screens/statistic.dart';
import 'package:flutter/material.dart';

class RouteGenerator{

  static int index = 0;

  static Route<dynamic> generateRoute(RouteSettings settings){
    final args = settings.arguments;

    switch (settings.name){
      case '/':
        RouteGenerator.index = 0;
        return _createRoute(HomeScreen());
      case '/startScreen':
        return MaterialPageRoute(builder: (_)=> StartScreen());
      case '/statistic':
        RouteGenerator.index = 1;
        return _createRoute(Statistic());
      case '/help':
        RouteGenerator.index = 2;
        return _createRoute(Help());
      case '/settings':
        RouteGenerator.index = 3;
        return _createRoute(Settings());
      default:
        return _errorRoute();
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

  static Route<dynamic> _errorRoute(){
    return MaterialPageRoute(builder: (_){
      return Scaffold(
        appBar: AppBar(
          title: Text("Error"),
        ),
        body: Center(
          child: Text("Error"),
        ),
      );
    });
  }
}