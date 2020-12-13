import 'package:e_learning/components/PassingArgument.dart';
import 'package:e_learning/components/myButtomNavBar.dart';
import 'package:e_learning/components/score.dart';
import 'package:e_learning/screens/gameModeSelection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class ResultFeedback extends StatelessWidget {
  static const route = "/feedback";

  final PassingArgument passingArgument;

  ResultFeedback({
    Key key,
    @required this.passingArgument,}) : super(key: key);

  getHeightSizeAccordingToPercent(context, int percent){
    var screenSize = MediaQuery.of(context).size;
    return (screenSize.height/100)*percent;
  }

  Score getScore(){
    // Get the right Score from passing Argument
    if(this.passingArgument.getGameMode() == "unbewertet"){
      return this.passingArgument.getUnratedScore();
    }
    else{
      return this.passingArgument.getLatestScore();
    }
  }

  String getValue(){
    if(getScore().getPercentage() < 50){
      return "Befriedigend";
    }
    if((getScore().getPercentage() < 70)&&(getScore().getPercentage() > 49)){
      return "Gut";
    }
    if((getScore().getPercentage() > 69)){
      return "Sehr Gut";
    }
  }

  void continueToGameModeScreen(context){
    Navigator.pushNamedAndRemoveUntil(context, GameModeSelection.route, (_) => false, arguments: passingArgument);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyButtomNavigationBar(passingArgument: passingArgument,),
      appBar: AppBar(
        title: Text(this.passingArgument.getTheme()),
        backgroundColor: primaryColor,
      ),
      body:Column(
        children: [
          Container(
              height: getHeightSizeAccordingToPercent(context, 15),
              child: Center(
                child: Text("Auswertung", style: TextStyle(fontSize: 25),),
              )
          ),
          Container(
            height: getHeightSizeAccordingToPercent(context, 50),
            child:Center(
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:[
                      Text("${this.getScore().getNumberOfRightAsString()}/9", style: TextStyle(fontSize: 35)),
                      Text("Karten wurden richtig zugewiesen", style: TextStyle(fontSize: 15),),
                      Text("Das entspricht", style: TextStyle(fontSize: 15),),
                      Text("   ${this.getScore().getPercentage()}%", style: TextStyle(fontSize: 35),),
                      Text(this.getValue(), style: TextStyle(fontSize: 25),),
                      RaisedButton(
                        onPressed: () => {
                          continueToGameModeScreen(context)
                        },
                        child: Text(
                          "Weiter",
                          style: TextStyle(color: contentColor),
                        ),
                        color: secondaryColor,
                      ),
                    ]
                ),
            ),
    )
        ],
      ),
    );
  }
}
