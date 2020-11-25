import 'package:e_learning/components/indexCard.dart';
import 'package:e_learning/components/wigetIndexCard.dart';
import 'package:e_learning/constants.dart';
import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  int _counter = 0;

  void _onButtonTapped() {
    setState(() {
      //_pressButton = !_pressButton;
      _counter += 1;
    });
  }

  Color _changeColor() {
    if (_counter % 3 == 0) {
      return secondaryColor;
    } else if (_counter % 3 == 1) {
      return Colors.red;
    } else {
      return Colors.blue;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 3,
      children: <Widget>[
        RaisedButton.icon(
          color: _changeColor(),
          onPressed: () => _onButtonTapped(),
          icon: Icon(Icons.add),
          label: Text('Click'),
          onLongPress: () => print("Long Press!"),
        ),
        RaisedButton.icon(
          onPressed: () {
            print("Buttom 2");
          },
          icon: Icon(Icons.add),
          label: Text('hi'),
          color: secondaryColor,
        ),
        RaisedButton.icon(
          onPressed: () {
            print("Buttom 1");
          },
          icon: Icon(Icons.add),
          label: Text('hi'),
          color: secondaryColor,
        ),
        RaisedButton.icon(
          onPressed: () {
            print("Buttom 1");
          },
          icon: Icon(Icons.add),
          label: Text('hi'),
          color: secondaryColor,
        ),
        RaisedButton.icon(
          onPressed: () {
            print("Buttom 1");
          },
          icon: Icon(Icons.add),
          label: Text('hi'),
          color: secondaryColor,
        ),
        RaisedButton.icon(
          onPressed: () {
            print("Buttom 1");
          },
          icon: Icon(Icons.add),
          label: Text('hi'),
          color: secondaryColor,
        ),
        RaisedButton.icon(
          onPressed: () {
            print("Buttom 1");
          },
          icon: Icon(Icons.add),
          label: Text('hi'),
          color: secondaryColor,
        ),
        wigetIndexCard(),
      ],
    );
  }
}
