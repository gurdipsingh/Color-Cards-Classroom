import 'package:e_learning/components/indexCardObject.dart';
import 'package:e_learning/components/score.dart';

class PassingArgument {
  String name;
  Map navigation;
  Map settings = {"language": "GERMAN"};
  List<IndexCardObject> cards = [];
  List<Score> scoreSheet = [];

  PassingArgument(this.name, this.navigation);

  setName(String name) {
    this.name = name;
  }

  setElementToKey(key, element) {
    this.navigation['${key}'] = element;
  }

  setLanguage(String language) {
    this.settings["language"] = language;
  }

  setCards(List<IndexCardObject> cards) {
    this.cards = cards;
  }

  setSubTheme(String subtheme) {
    this.navigation["subtheme"] = subtheme;
  }

  addScore(DateTime time, int numberOfRightAnswer){
    Score score = new Score(numberOfRightAnswer, time);
    this.scoreSheet.add(score);
  }

  Score getLatestScore(){
    return this.scoreSheet.last;
  }

  getTheme() {
    return this.navigation["theme"];
  }

  getElement(key) {
    return this.navigation[key];
  }

  String getLanguage() {
    return this.settings["language"];
  }
}
