import 'package:flutter/material.dart';

class IndexCard {
  int id;
  String name;
  String informationToDisplay;
  String label;
  Color stateOfColor;

  IndexCard(int id, String name, String informationToDisplay, String label,
      Color stateOfColor) {
    this.id = id;
    this.name = name;
    this.informationToDisplay = informationToDisplay;
    this.label = label;
    this.stateOfColor = stateOfColor;
  }
}
