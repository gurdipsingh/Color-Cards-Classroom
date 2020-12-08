import 'package:e_learning/components/indexCard.dart';
import 'package:flutter/cupertino.dart';

import '../constants.dart';

/**
 * This class contains the card Object
 */

class CardObject{
  Widget _indexCard;   // It's widget
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
    this._indexCard = IndexCard(id: this._id,label: this._label, content: this._content, card: this);
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