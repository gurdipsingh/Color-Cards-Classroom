import 'package:flutter/material.dart';

class IndexCard {
  String name;
  int id;
  String informationOne;
  String informationTwo;
  String informationThree;
  bool stateOfColor;

  IndexCard(String name, int id, String informationOne, String informationTwo,
      String informationThree) {
    this.name = name;
    this.id = id;
    this.informationOne = informationOne;
    this.informationTwo = informationTwo;
    this.informationThree = informationThree;
  }

  Color _changeColor() {
    if (false) {
      return Colors.red;
    } else {
      return Colors.blue;
    }
  }

  void changeState(bool changeState) {
    stateOfColor = changeState;
  }

  Widget createIndexCardWiget(IndexCard indexCard) {
    return InkWell(
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Text(indexCard.name),
          color: _changeColor(),
        ),
        onTap: () => {
              print('On tap a container of = ' + indexCard.id.toString()),
              changeState(this.stateOfColor)
            });
  }

  static List<Widget> createIndexCardWigetList(List<IndexCard> indexList) {
    List<Widget> result = [];
    indexList.forEach((element) {
      result.add(element.createIndexCardWiget(element));
    });
    return result;
  }

  static List<IndexCard> indexCardList = [
    IndexCard(
        'firstTest', 1, 'first_Info_ONE', 'first_Info_TWO', 'first_Info_THREE'),
    IndexCard('secondTest', 2, 'second_Info_ONE', 'second_Info_TWO',
        'second_Info_THREE'),
    IndexCard(
        'thirdTest', 3, 'third_Info_ONE', 'third_Info_TWO', 'third_Info_THREE')
  ];
}
