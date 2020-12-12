import 'package:e_learning/components/indexCardObject.dart';
import 'package:e_learning/components/score.dart';

class PassingArgument {
  String _name;
  Map <String,String> _navigation = {};
  Map _settings = {"language": "GERMAN"};
  List<IndexCardObject> _cards = [];
  List<Score> _scoreSheet = [];

  PassingArgument(String name){
    this._name = name;
  }

  void setName(String name) {
    this._name = name;
  }

  void setElementToNavigation(String key, String element) {
    this._navigation['$key'] = element;
  }

  void setLanguage(String language) {
    this._settings["language"] = language;
  }

  void setCards(List<IndexCardObject> cards) {
    this._cards = cards;
  }

  void setSubTheme(String subtheme) {
    this._navigation["subtheme"] = subtheme;
  }

  void addScore(DateTime time, int numberOfRightAnswer){
    Score score = new Score(numberOfRightAnswer, time);
    this._scoreSheet.add(score);
  }

  String getName(){
    return this._name;
  }

  List<IndexCardObject> getCards(){
    return this._cards;
  }

  Score getLatestScore(){
    return this._scoreSheet.last;
  }

  String getTheme() {
    return this._navigation["theme"];
  }

  String getSubtheme(){
    return this._navigation["subtheme"];
  }

  String getModule(){
    //TODO: Make Key lowercase
    return this._navigation["Module"];
  }

  String getElementFromNavigation(key) {
    return this._navigation[key];
  }

  String getLanguage() {
    return this._settings["language"];
  }
}
