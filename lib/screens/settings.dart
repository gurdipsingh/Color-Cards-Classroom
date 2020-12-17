import 'package:e_learning/components/PassingArgument.dart';
import 'package:e_learning/components/myButtomNavBar.dart';
import 'package:e_learning/staticMethods.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Settings extends StatefulWidget {
  static const route = "/settings";

  final PassingArgument passingArgument;

  Settings({
    Key key,
    @required this.passingArgument,
  }) : super(key: key);

  @override
  _Settings createState() => _Settings();
}

class _Settings extends State<Settings> {
  void toggleFont() {
    setState(() {
      {
        widget.passingArgument.toggleFontSize();
      }
    });
  }

  void toggleTheme() {
    setState(() {
      {
        widget.passingArgument.toggleDarkmode();
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.passingArgument.getBackgroundColor(),
      appBar: AppBar(
        title: Text("Settings"),
        backgroundColor: widget.passingArgument.getPrimaryColor(),
      ),
      body: ListView(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            StaticMethods.addText("Change Fontsize", widget.passingArgument),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: secondaryColor),
              onPressed: () => toggleFont(),
              child: Text(
                widget.passingArgument.getFontSizeName(),
                style: TextStyle(
                    fontSize: 12 + widget.passingArgument.getAddtoFontSize()),
              ),
            )
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            StaticMethods.addText("Darkmode (Beta)", widget.passingArgument),
            ElevatedButton(
                style: ElevatedButton.styleFrom(primary: secondaryColor),
                onPressed: () => {toggleTheme()},
                child: Text(widget.passingArgument.isDarkModeOn(),
                    style: TextStyle(
                        fontSize:
                            12 + widget.passingArgument.getAddtoFontSize())))
          ]),
        ],
      ),
      bottomNavigationBar: MyButtomNavigationBar(
        passingArgument: widget.passingArgument,
      ),
    );
  }
}
