import 'package:e_learning/components/cardObject.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

/**
 * This class is the Solution WidgetClass of our CardObject
 */

class SolutionWidget extends StatelessWidget {
   int id;
   String label;
   String content;
   CardObject card;        // Contains the Card Object of its widget
   Color _stateOfColor;
   bool correct;

    SolutionWidget(int id, String label, String content, CardObject card, bool correct ){
      this.id = id;
      this.label = label;
      this.content = content;
      this.card = card;
      this.correct = correct;
      this.setStateOfColor();
    }

  int getId(){
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

  void setStateOfColor(){
    if(this.correct){
      this._stateOfColor = secondaryColor;
    }
    else{
      this._stateOfColor = Colors.grey;
    }
  }


  // supposed to show dialog, which leads to learning Page
  void showDialogToPage(BuildContext context) {
    print(this.label);
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
