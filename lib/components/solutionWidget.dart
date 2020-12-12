import 'package:e_learning/components/PassingArgument.dart';
import 'package:e_learning/components/indexCardObject.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

/**
 * This class is the Solution WidgetClass of our CardObject
 */

class SolutionWidget extends StatelessWidget {
  int id;
  String label;
  String content;
  IndexCardObject card; // Contains the Card Object of its widget
  Color _stateOfColor;
  bool correct;
  PassingArgument _passingArgument;

  SolutionWidget(
      int id, String label, String content, IndexCardObject card, bool correct) {
    this.id = id;
    this.label = label;
    this.content = content;
    this.card = card;
    this.correct = correct;
    this.setStateOfColor();
  }

  int getId() {
    return this.id;
  }

  String getName() {
    return this.label;
  }

  String getContent() {
    return this.content;
  }

  Color getStateOfColor() {
    return this._stateOfColor;
  }

  PassingArgument getPassingArgument() {
    return this._passingArgument;
  }

  void setPassingArgument(PassingArgument passingArgument) {
    this._passingArgument = passingArgument;
  }

  void setStateOfColor() {
    if (this.correct) {
      this._stateOfColor = secondaryColor;
    } else {
      this._stateOfColor = Colors.grey;
    }
  }

  // supposed to show dialog, which leads to learning Page
  void showDialogToPage(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Redirection"),
              content: Text(
                  "Diese Karte gehört zu ${this.label}, möchten Sie die Seite zu ${this.label} öffnen?"),
              actions: [
                FlatButton(
                    child: Text("Ja"),
                    onPressed: () => {
                          Navigator.of(context).pop(),
                          this.directToLearningPage(context)
                        }),
                FlatButton(
                    child: Text("Nein"),
                    onPressed: () => {Navigator.of(context).pop()})
              ],
            ));
  }

  // funcion that leads to learning Page
  void directToLearningPage(BuildContext context) {
    this._passingArgument.setSubTheme(this.label);
    Navigator.of(context).pushNamed("/${this._passingArgument.getTheme()}",
        arguments: this.getPassingArgument());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: secondaryColor,
        child: new RaisedButton(
          child: new Text(this.getContent()),
          textColor: Colors.white,
          onPressed: () => {showDialogToPage(context)},
          color: this.getStateOfColor(),
        ));
  }
}
