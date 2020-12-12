import 'package:e_learning/components/cardObject.dart';

class PassingArgument{
  String name;
  Map navigation;
  Map settings = {"language": "GERMAN"};
  List <CardObject> cards = [];

  PassingArgument(this.name, this.navigation);

  setName(String name){
    this.name = name;
  }

  setElementToKey(key,element){
    this.navigation['${key}'] = element;
  }

  setLanguage(String language){
    this.settings["language"] = language;
  }

  setCards(List<CardObject> cards){
    this.cards = cards;
  }

  getElement(key){
    return this.navigation[key];
  }

  String getLanguage(){
    return this.settings["language"];
  }

}

