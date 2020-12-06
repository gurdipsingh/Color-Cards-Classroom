import 'package:e_learning/components/indexCard.dart';
import 'package:e_learning/constants.dart';
import 'package:flutter/material.dart';

class IndexCardWidget extends StatefulWidget {
  IndexCard _indexCard;

  IndexCardWidget(IndexCard indexCard) {
    this._indexCard = indexCard;
  }

  @override
  _IndexCardWidgetState createState() => _IndexCardWidgetState();
}

class _IndexCardWidgetState extends State<IndexCardWidget> {
  List<Color> _colors = <Color>[
    firstGameColor,
    secondGameColor,
    thirdGameColor,
    fourthGameColor
  ];

  int _currentColorIndex = 0;

  void _incrementColorIndex() {
    setState(() {
      if (_currentColorIndex < _colors.length - 1) {
        _currentColorIndex++;
      } else {
        _currentColorIndex = 0;
      }
    });
  }

  void _changeStateOfColor() {
    switch (_currentColorIndex) {
      case 0:
        this.widget._indexCard.stateOfColor = firstGameColor;
        break;
      case 1:
        this.widget._indexCard.stateOfColor = secondGameColor;
        break;
      case 2:
        this.widget._indexCard.stateOfColor = thirdGameColor;
        break;
      case 3:
        this.widget._indexCard.stateOfColor = fourthGameColor;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Text(this.widget._indexCard.name),
          color: _colors[_currentColorIndex],
        ),
        onTap: () => {
              print(
                  'The label of the card is = ' + this.widget._indexCard.label),
              _incrementColorIndex(),
              _changeStateOfColor(),
              print('The color of the index card variable is = ' +
                  this.widget._indexCard.stateOfColor.toString()),
            });
  }
}
