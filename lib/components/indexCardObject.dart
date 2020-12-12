import 'package:e_learning/components/indexCardWidget.dart';
import 'package:e_learning/components/solutionWidget.dart';

import '../constants.dart';

/**
 * This class contains the card Object
 */

class IndexCardObject{
  IndexCardWidget _indexCardWidget;   // It's widget
  SolutionWidget _solutionCard;
  int _id;
  String _label;
  String _content;
  String _colorName;

  IndexCardObject(int id,String label, String content, String colorName){
    this._id = id;
    this._label = label;
    this._content = content;
    this._colorName = colorName;
    this.setWidget();
  }

  void setWidget(){
    this._indexCardWidget = IndexCardWidget(id: this._id,label: this._label, content: this._content, card: this);
  }

  void createSolutionCard(correct){
    this._solutionCard = SolutionWidget(this._id, this._label, this._content, this, correct);
  }

  void setColorName(String colorName){
    this._colorName = colorName;
  }

  SolutionWidget getSolutionWidget(){
    return this._solutionCard;
  }

  IndexCardWidget getWidget(){
    return this._indexCardWidget;
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