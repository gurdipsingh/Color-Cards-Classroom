import 'dart:ui';

class Score {
  int _numberOfRight;
  int _numberOfWrong;
  DateTime _date;
  double score;
  String label;
  Color color;

  Score(int numberOfRight, DateTime date, String label, Color color) {
    this._numberOfRight = numberOfRight;
    this._numberOfWrong = 9 - numberOfRight;
    this._date = date;
    this.score = numberOfRight / 9;
    this.label = label;
    this.color = color;
  }

  String getNumberOfRightAsString() {
    return "${this._numberOfRight}";
  }

  String getNumberOfWrongAsString() {
    return "${this._numberOfWrong}";
  }

  DateTime getDateTime() {
    return this._date;
  }

  int getPercentage() {
    return ((this._numberOfRight / 9) * 100).toInt();
  }

  int getNumberOfRights() {
    return this._numberOfRight;
  }

  int getNumberOfWrong() {
    return this._numberOfWrong;
  }
}
