import 'package:e_learning/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'PassingArgument.dart';

class Radiobutton extends StatefulWidget {

  final PassingArgument passingArgument;


  const Radiobutton({
    Key key,
    @required this.passingArgument
  }) : super(key: key);

  @override
 _RadioButton createState() => _RadioButton();
}

class _RadioButton extends State<Radiobutton> {

  String radioItem = "GERMAN";

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[

        RadioListTile(
          activeColor: contentColor,
          groupValue: radioItem,
          title: Text('DE', style: TextStyle(color: contentColor, fontWeight: FontWeight.bold),),
          value: 'GERMAN',
          onChanged: (val) {
            setState(() {
              widget.passingArgument.setLanguage(val);
              radioItem = widget.passingArgument.getLanguage();
            });
          },
        ),

        RadioListTile(
          activeColor: contentColor,
          groupValue: radioItem,
          title: Text('EN', style: TextStyle(color: contentColor,fontWeight: FontWeight.bold),),
          value: 'ENGLISH',
          onChanged: (val) {
            setState(() {
              widget.passingArgument.setLanguage(val);
              radioItem = widget.passingArgument.getLanguage();
            });
          },
        ),
      ],
    );
  }
}