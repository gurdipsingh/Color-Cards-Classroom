import 'package:e_learning/components/indexCardObject.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

/**
 * This class is the WidgetClass of our CardObject
 */

class IndexCardWidget extends StatefulWidget {
  final int id;
  final String label;
  final String content;
  final IndexCardObject card; // Contains the Card Object of its widget

  const IndexCardWidget({
    Key key,
    @required this.id,
    @required this.label,
    @required this.content,
    @required this.card,
  }) : super(key: key);

  @override
  _CardWidget createState() => _CardWidget();
}

class _CardWidget extends State<IndexCardWidget> {
  Color _stateOfColor = Colors.grey;
  String _colorName = "grey";

  int getId() {
    return widget.id;
  }

  String getName() {
    return widget.label;
  }

  String getContent() {
    return widget.content;
  }

  Color getStateOfColor() {
    return this._stateOfColor;
  }

  String getColorName() {
    return this._colorName;
  }

  void setStateOfColor(Color stateOfColor) {
    this._stateOfColor = stateOfColor;
  }

  void setColorName(String colorName) {
    this._colorName = colorName;
  }

  // Checks which color it currently has and changes it to the next one
  void updateColor() {
    setState(() {
      switch (this.getColorName()) {
        case "grey":
          this.setStateOfColor(secondGameColor);
          this.setColorName("orange");
          widget.card.setColorName("orange");
          break;
        case "orange":
          this.setStateOfColor(thirdGameColor);
          setColorName("purple");
          widget.card.setColorName("purple");
          break;
        case "purple":
          this.setStateOfColor(fourthGameColor);
          setColorName("blue");
          widget.card.setColorName("blue");
          break;
        case "blue":
          this.setStateOfColor(firstGameColor);
          setColorName("grey");
          widget.card.setColorName("grey");
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: new RaisedButton(
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
      child: new Text(this.getContent()),
          textColor: contentColor,
          onPressed: () => {updateColor()},
          color: this.getStateOfColor(),
        ));
  }
}
