import 'package:e_learning/components/PassingArgument.dart';
import 'package:e_learning/components/radioButton.dart';
import 'package:e_learning/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'homescreen.dart';

class StartScreen extends StatelessWidget {
  final TextEditingController userNameController = TextEditingController();

  var entry = 'Bitte gib deinen Benutzernamen ein.';

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
      child: Text("Weiter "),
      onPressed: () {
        passingArgument.setName(userNameController.text);
        Navigator.pushNamedAndRemoveUntil(
            context, HomeScreen.route, (_) => false,
            arguments: passingArgument);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    PassingArgument _passingArgument = PassingArgument(" ");

    return Scaffold(
        backgroundColor: primaryColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FittedBox(
                fit: BoxFit.fitWidth,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "Willkommen in der \n"
                    "E-Learning App \n"
                    "Color Cards Classroom",
                    style: TextStyle(fontSize: 30, color: contentColor),
                  ),
                  Icon(
                    Icons.phone_android_outlined,
                    color: Colors.white,
                    size: 30.0,
                  ),
                ])),
            Column(
              children: [
                textField(),
                Radiobutton(
                  passingArgument: _passingArgument,
                ),
                continueButton(context, _passingArgument),
              ],
            )
          ],
        ));
  }
}
