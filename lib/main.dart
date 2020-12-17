import 'package:e_learning/route_generator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

/// This is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Color Cards Classroom',
      initialRoute: '/startScreen',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
