import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_learning/constants.dart';

import '../constants.dart';


class StartScreen extends StatelessWidget {

  final userNameController = TextEditingController();

  var entry = 'Enter Your Username';

TextField textField(){
  return TextField(
    style: TextStyle(color: Colors.black),
    decoration: InputDecoration(
      filled: true,
      fillColor: contentColor,
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: secondaryColor,
              width: 3
          ),
          borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: secondaryColor,
              width: 3
          ),
          borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      hintText: entry,
    ),
    controller: userNameController,
  );
}

ElevatedButton continueButton(context){
  return ElevatedButton(
    style: ElevatedButton.styleFrom(primary: secondaryColor),
    child: Text("Continue"),
    onPressed: () {
      entry = userNameController.text;
      Navigator.of(context).pushReplacementNamed("/");
    },
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        body:
        Stack(children: [
          Positioned(
              top: 200,
              left: 140,
              child: Text(
                "Welcome", style: TextStyle(fontSize: 30, color: contentColor),)
          ),
          Align(
              alignment: Alignment.center,
              child: textField(),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: continueButton(context))
        ],)

    );
  }
}

