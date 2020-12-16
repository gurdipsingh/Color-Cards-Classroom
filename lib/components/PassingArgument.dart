import 'package:e_learning/components/indexCardObject.dart';
import 'package:e_learning/components/score.dart';
import 'package:e_learning/constants.dart';

class PassingArgument {
  String _name;
  Map<String, String> _navigation = {};
  Map _settings = {"language": "GERMAN"};
  List<IndexCardObject> _cards = [];
  List<Score> _scoreSheet = [new Score(0, DateTime.now(), 'Erfolg', primaryColor)];
  Score _unratedScore;

  PassingArgument(String name) {
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

  void addScore(DateTime time, int numberOfRightAnswer) {
    Score score = new Score(numberOfRightAnswer, time, 'Erfolg', primaryColor);
    this._scoreSheet.add(score);
  }

  void setUnratedScore(DateTime time, int numberOfRightAnswer) {
    this._unratedScore = new Score(numberOfRightAnswer, time, 'Erfolg', primaryColor);
  }

  String getName() {
    return this._name;
  }

  List<IndexCardObject> getCards() {
    return this._cards;
  }

  Score getLatestScore() {
    return this._scoreSheet.last;
  }

  String getTheme() {
    return this._navigation["theme"];
  }

  String getSubtheme() {
    return this._navigation["subtheme"];
  }

  String getGameMode() {
    return this._navigation["gamemode"];
  }

  String getModule() {
    //TODO: Make Key lowercase
    return this._navigation["Module"];
  }

  Score getUnratedScore() {
    return this._unratedScore;
  }

  String getElementFromNavigation(key) {
    return this._navigation[key];
  }

  String getLanguage() {
    return this._settings["language"];
  }

  List<Score> getScoreSheet() {
    return this._scoreSheet;
  }
}
