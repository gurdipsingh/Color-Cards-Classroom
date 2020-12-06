import 'package:flutter/material.dart';

import 'indexCardWidget.dart';

class IndexCard {
  int id;
  String name;
  String informationToDisplay;
  String label;
  Color stateOfColor;

  IndexCard(int id, String name, String informationToDisplay, String label, Color stateOfColor) {
    this.id = id;
    this.name = name;
    this.informationToDisplay = informationToDisplay;
    this.label = label;
    this.stateOfColor = stateOfColor;
  }

  static List<Widget> createIndexCardWidgetList(List<IndexCard> indexList) {
    List<Widget> result = [];
    indexList.forEach((element) {
      result.add(IndexCardWidget(element));
    });
    return result;
  }

  static List<IndexCard> indexCardList = [
    IndexCard(
         1, 'first_Name', 'first_Info', 'first_Label', Colors.blue),
    IndexCard(
        2, 'second_Name', 'second_Info', 'second_Label', Colors.red),
    IndexCard(
        3, 'third_Name', 'third_Info', 'third_Label', Colors.amber),
    IndexCard(
        4, 'four_Name', 'four_Info', 'four_Label', Colors.blueGrey),
    IndexCard(
        5, 'five_Name', 'five_Info', 'five_Label', Colors.green),
    IndexCard(
        6, 'six_Name', 'six_Info', 'six_Label', Colors.purple),
    IndexCard(
        7, 'seven_Name', 'seven_Info', 'seven_Label', Colors.pink),
    IndexCard(
        8, 'eight_Name', 'eight_Info', 'eight_Label', Colors.orange),
    IndexCard(
        9, 'nine_Name', 'nine_Info', 'nine_Label', Colors.brown),
  ];
}
