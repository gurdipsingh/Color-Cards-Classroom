import 'package:flutter/material.dart';
import 'indexCard.dart';

class wigetIndexCard extends StatefulWidget {
  @override
  _wigetIndexCardState createState() => _wigetIndexCardState();
}

class _wigetIndexCardState extends State<wigetIndexCard> {
  List<IndexCard> indexCardList = [
    IndexCard(
        'firstTest', 1, 'first_Info_ONE', 'first_Info_TWO', 'first_Info_THREE'),
    IndexCard('secondTest', 2, 'second_Info_ONE', 'second_Info_TWO',
        'second_Info_THREE'),
    IndexCard(
        'thirdTest', 3, 'third_Info_ONE', 'third_Info_TWO', 'third_Info_THREE')
  ];

  IndexCard indexTest = IndexCard('Joo', 8, 'Hallo', 'was', 'geht');

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Text(indexTest.name),
        color: Colors.teal[200],
      ),
      onTap: () => print('On tap a container'),
    );
  }
}
