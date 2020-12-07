import 'package:e_learning/components/cardObject.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

/**
 * This class is the WidgetClass of our CardObject
 */

class IndexCard extends StatefulWidget {
  final String name;
  final String content;
  final CardObject card;        // Contains the Card Object of its widget

  const IndexCard({
    Key key,
    @required this.name,
    @required this.content,
    @required this.card,
  }) : super(key: key);

  @override
  _IndexCard createState() => _IndexCard();
}

class _IndexCard extends State<IndexCard> {
  Color stateOfColor = Colors.grey;
  String colorName = "grey";

  String getName() {
    return widget.name;
  }

  String getContent() {
    return widget.content;
  }

  Color getStateOfColor() {
    return this.stateOfColor;
  }

  String getColorName(){
    return this.colorName;
  }


  // Checks which color it currently has and changes it to the next one
  void updateColor() {
    setState(() {
      switch (this.colorName) {
        case "grey":
          this.stateOfColor = secondGameColor;
          this.colorName = "orange";
          widget.card.setColorName("orange");
          break;
        case "orange":
          this.stateOfColor = thirdGameColor;
          this.colorName = "purple";
          widget.card.setColorName("purple");
          break;
        case "purple":
          this.stateOfColor = fourthGameColor;
          this.colorName = "blue";
          widget.card.setColorName("blue");
          break;
        case "blue":
          this.stateOfColor = firstGameColor;
          this.colorName = "grey";
          widget.card.setColorName("grey");
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: secondaryColor,
        child: new RaisedButton(
          child: new Text(this.getContent()),
          textColor: Colors.white,
          onPressed: () => {updateColor()},
          color: this.getStateOfColor(),
        ));
  }
}
