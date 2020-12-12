import 'package:e_learning/components/PassingArgument.dart';
import 'package:e_learning/components/indexCardObject.dart';
import 'package:e_learning/components/myButtomNavBar.dart';
import 'package:e_learning/components/solutionWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';


class ResultScreen extends StatelessWidget {
  static const route = "/solution";

  final PassingArgument passingArgument;

  List<Widget> cardList = [];


  ResultScreen({
    Key key,
    @required this.passingArgument,}) : super(key: key);

  // Creates a list of CardObjects and then creates a list of its Widgets
  List<Widget>  getResult(context) {
    List<IndexCardObject> cards = this.passingArgument.cards;
    cards.forEach((element) {
      SolutionWidget solutionCard = element.getSolutionWidget();
      solutionCard.setPassingArgument(this.passingArgument);
      cardList.add(solutionCard);
    });
    return cardList;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyButtomNavigationBar(passingArgument: passingArgument,),
      appBar: AppBar(
        title: Text("GAME"),
        backgroundColor: primaryColor,
      ),
      body: Column(
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
                            height: 25,
                            width: 25,
                            color: secondaryColor,
                            child: Center(
                              child: Text(this.passingArgument.getLatestScore().getNumberOfRightAsString(), style: TextStyle(color: contentColor),),
                            )
                        ),
                        Container(
                          child: Text("  Right "),
                        )
                      ],
                    ),

                    Row(
                      children: [
                        Container(
                            height: 25,
                            width: 25,
                            color: firstGameColor,
                            child: Center(
                              child: Text(this.passingArgument.getLatestScore().getNumberOfWrongAsString(), style: TextStyle(color: contentColor),),
                            )
                        ),

                        Container(
                          child: Text("  Wrong "),
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
      )
    );
  }
}
