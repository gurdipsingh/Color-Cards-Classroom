import 'package:e_learning/components/myButtomNavBar.dart';
import 'package:e_learning/constants.dart';
import 'package:flutter/material.dart';

class BubbleSort extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyButtomNavigationBar(),
      appBar: AppBar(
        title: const Text('Theoretische Informatik 1'),
        backgroundColor: primaryColor,
      ),
      body: RichText(
        text: TextSpan(
            style: DefaultTextStyle.of(context).style,
          children: <TextSpan>[
            TextSpan(text:"BubbleSort \n", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, decoration: TextDecoration.underline, decorationColor: secondaryColor)),
            TextSpan(text: "Diese Seite Beschäftigt sich mit BubbleSort. Hier werden "
                "Infortmationen über Bubblesort aufgezeigt, welches euch behilflich sein kann,"
                "wenn ihr etwas nicht versteht oder neu lernen müsst.",
                style: TextStyle(color: Colors.black, fontSize: 15, decoration: TextDecoration.none))
          ]
        ),
      ),
    );
  }
}