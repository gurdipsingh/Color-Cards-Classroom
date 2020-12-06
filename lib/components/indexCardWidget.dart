import 'package:e_learning/components/indexCard.dart';
import 'package:flutter/material.dart';

class IndexCardWidget extends StatefulWidget {
  IndexCard indexCard;

  IndexCardWidget(IndexCard indexCard) {
    this.indexCard = indexCard;
  }

  @override
  _IndexCardWidgetState createState() => _IndexCardWidgetState();
}

class _IndexCardWidgetState extends State<IndexCardWidget> {
  List<Color> _colors = <Color>[
    Colors.blue,
    Colors.red,
    Colors.yellow,
    Colors.green
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

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Text(this.widget.indexCard.name),
          color: _colors[_currentColorIndex],
        ),
        onTap: () => {
              print('The label of the card is = ' + this.widget.indexCard.label),
              _incrementColorIndex()
            });
  }
}
