import 'package:e_learning/Modules/GL1/Gl1Subthemes/bubbleSort.dart';
import 'package:e_learning/Modules/GL1/gl1Mode.dart';
import 'package:e_learning/Modules/GL1/gl1SubThemes.dart';
import 'package:e_learning/Modules/GL1/gl1Themes.dart';
import 'package:e_learning/constants.dart';
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
      case '/gl1Themes':
        return _createRoute(Gl1Themes());
      case '/gl1Mode':
        return _createRoute(Gl1Mode());
      case '/gl1Lernen':
        return _createRoute(Gl1SubThemes());
        case '/bubbleSort':
        return _createRoute(BubbleSort());
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

  static ElevatedButton createElevatedButton(context, String labelName,String routingPageName){
    return ElevatedButton(
      style:ElevatedButton.styleFrom(primary: secondaryColor,textStyle: TextStyle(fontSize: 15), shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(16.0))),),
      child: Text(labelName),
      onPressed: () {
        Navigator.of(context).pushNamed(routingPageName);
      },
    );
  }

  static RaisedButton createRaisedButton(context, String labelName, String routingPageName){
    return RaisedButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      onPressed: () {
        Navigator.of(context).pushNamed(routingPageName);
      },
      child: Text(labelName, style: TextStyle(color: contentColor, fontSize: 20),),
      color: secondaryColor,
    );
  }

  static Route<dynamic> _errorRoute(){
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