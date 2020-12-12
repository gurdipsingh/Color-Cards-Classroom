import 'package:e_learning/components/cardWidget.dart';
import 'package:e_learning/components/solutionWidget.dart';
import 'package:flutter/cupertino.dart';

import '../constants.dart';

/**
 * This class contains the card Object
 */

class CardObject{
  Widget _indexCard;   // It's widget
  Widget _solutionCard;
  int _id;
  String _label;
  String _content;
  String _colorName;

  CardObject(int id,String label, String content, String colorName){
    this._id = id;
    this._label = label;
    this._content = content;
    this._colorName = colorName;
    this.setWidget();
  }

  Widget setWidget(){
    this._indexCard = CardWidget(id: this._id,label: this._label, content: this._content, card: this);
  }

  Widget createSolutionCard(correct){
    this._solutionCard = SolutionWidget(this._id, this._label, this._content, this, correct);
  }

  SolutionWidget getSolutionWidget(){
    return this._solutionCard;
  }

  Widget getWidget(){
    return this._indexCard;
  }

  String getLabel(){
    return this._label;
  }

  int getId(){
    return this._id;
  }

  String getContent(){
    return this._content;
  }

  String getColorName(){
    return _colorName;
  }

  void setColorName(String colorName){
    this._colorName = colorName;
  }

  String convertStringToColor(String colorString){
    if (colorString == "grey"){
      return firstGameColor.toString();
    }
    if (colorString == "orange"){
      return secondGameColor.toString();
    }if (colorString == "orange"){
      return secondGameColor.toString();
    }if (colorString == "purple"){
      return thirdGameColor.toString();
    }if (colorString == "blue"){
      return fourthGameColor.toString();
    }
  }
}