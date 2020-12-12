import 'package:e_learning/components/PassingArgument.dart';
import 'package:e_learning/components/cardObject.dart';
import 'package:e_learning/components/solutionWidget.dart';
import 'package:e_learning/constants.dart';
import 'package:flutter/material.dart';

/**
 * This Class Contains all the functionality for the GL1 Cardpool
 * Diese Klasse persistiert die Karteikarten und ihre Widgets
 */

class SolutionBase extends StatelessWidget {
  final PassingArgument passingArgument;

  SolutionBase({
    Key key,
    @required this.passingArgument
  }) : super(key: key);

  List<Widget> cardList = [];


// Creates a list of CardObjects and then creates a list of its Widgets
  List<Widget>  getResult(context) {
    List<CardObject> cards = this.passingArgument.cards;
    cards.forEach((element) {
      SolutionWidget solutionCard = element.getSolutionWidget();
      solutionCard.setPassingArgument(this.passingArgument);
      cardList.add(solutionCard);
    });
    return cardList;
  }

  showResultPage(){
    // directs to Page with result
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                   children: [
                    Container(
                      height: 20,
                      width: 20,
                      color: secondaryColor,
                      child: Center(
                        child: Text(this.passingArgument.getLatestScore().getNumberOfRightAsString(), style: TextStyle(color: contentColor),),
                      )
                      ),
                    Container(
                      child: Text("Right Answer"),
                    )
                  ],
                ),

                Row(
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      color: firstGameColor,
                        child: Center(
                          child: Text(this.passingArgument.getLatestScore().getNumberOfWrongAsString(), style: TextStyle(color: contentColor),),
                        )
                    ),

                    Container(
                      child: Text("Wrong Answer"),
                    )
                  ],
                ),

              ],
          )],
        ),
        Column(
          children: [
        Column(children: <Widget>[
          Container(
            height: 400,
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 3,
              children: getResult(context),
            ),
          )
        ]),
        Column(children: [
          RaisedButton(
            onPressed: () => {
            },
            child: Text(
              "Continue",
              style: TextStyle(color: contentColor),
            ),
            color: secondaryColor,
          ),
        ])
      ],
    )]
    );
  }
}
