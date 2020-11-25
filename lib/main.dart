import 'package:flutter/material.dart';
import 'screens/startScreen.dart';

void main() {
  runApp(MyApp());
}

/// This is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Learning App',
      home: StartScreen(),
    );
  }
}
