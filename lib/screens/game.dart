import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
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
          onPressed: () {
            print("Buttom 1");
          },
          icon: Icon(Icons.add),
          label: Text('hi'),
          color: Colors.blueGrey,
        ),
        RaisedButton.icon(
          onPressed: () {
            print("Buttom 2");
          },
          icon: Icon(Icons.add),
          label: Text('hi'),
          color: Colors.blueGrey,
        ),
        RaisedButton.icon(
          onPressed: () {
            print("Buttom 1");
          },
          icon: Icon(Icons.add),
          label: Text('hi'),
          color: Colors.blueGrey,
        ),
        RaisedButton.icon(
          onPressed: () {
            print("Buttom 1");
          },
          icon: Icon(Icons.add),
          label: Text('hi'),
          color: Colors.blueGrey,
        ),
        RaisedButton.icon(
          onPressed: () {
            print("Buttom 1");
          },
          icon: Icon(Icons.add),
          label: Text('hi'),
          color: Colors.blueGrey,
        ),
        RaisedButton.icon(
          onPressed: () {
            print("Buttom 1");
          },
          icon: Icon(Icons.add),
          label: Text('hi'),
          color: Colors.blueGrey,
        ),
        RaisedButton.icon(
          onPressed: () {
            print("Buttom 1");
          },
          icon: Icon(Icons.add),
          label: Text('hi'),
          color: Colors.blueGrey,
        ),
        RaisedButton.icon(
          onPressed: () {
            print("Buttom 1");
          },
          icon: Icon(Icons.add),
          label: Text('hi'),
          color: Colors.blueGrey,
        ),
        RaisedButton.icon(
          onPressed: () {
            print("Buttom 1");
          },
          icon: Icon(Icons.add),
          label: Text('hi'),
          color: Colors.blueGrey,
        ),
      ],
    );
  }
}
