import 'package:e_learning/components/PassingArgument.dart';
import 'package:e_learning/components/radioButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_learning/constants.dart';

import '../constants.dart';
import 'homescreen.dart';

class StartScreen extends StatelessWidget {
  final userNameController = TextEditingController();

  var entry = 'Enter Your Username';

  TextField textField() {
    return TextField(
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        filled: true,
        fillColor: contentColor,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: secondaryColor, width: 3),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: secondaryColor, width: 3),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        hintText: entry,
      ),
      controller: userNameController,
    );
  }

  ElevatedButton continueButton(context, PassingArgument passingArgument) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(primary: secondaryColor),
      child: Text("Continue"),
      onPressed: () {
        passingArgument.setName(userNameController.text);
        Navigator.pushNamedAndRemoveUntil(context, HomeScreen.route, (_) => false, arguments: passingArgument);
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    PassingArgument _passingArgument = PassingArgument(" ", {});

    return Scaffold(
        backgroundColor: primaryColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [Text(
                  "Welcome",
                  style: TextStyle(fontSize: 30, color: contentColor),
                )]),
            Column(
              children: [textField(),Radiobutton(passingArgument: _passingArgument,),continueButton(context, _passingArgument), ],
            )
          ],
        ));
  }
}
