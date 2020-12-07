import 'package:e_learning/components/indexCard.dart';
import 'package:flutter/cupertino.dart';

import '../constants.dart';

/**
 * This class contains the card Object
 */

class CardObject{
  Widget indexCard;   // It's widget
  String label;
  String content;
  String colorName;

  CardObject(String label, String content, String colorName){
    this.label = label;
    this.content = content;
    this.colorName = colorName;
    this.setWidget();
  }

  setWidget(){
    this.indexCard = IndexCard(name: this.label, content: this.content, card: this);
  }

  getWidget(){
    return this.indexCard;
  }

  setColorName(String colorName){
    this.colorName = colorName;
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