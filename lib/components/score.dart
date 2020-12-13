class Score {
  int _numberOfRight;
  int _numberOfWrong;
  DateTime _date;
  double score;

  Score(int numberOfRight, DateTime date){
   this._numberOfRight = numberOfRight;
   this._numberOfWrong = 9 - numberOfRight;
   this._date = date;
   this.score = numberOfRight/9;
  }

  String getNumberOfRightAsString(){
    return "${this._numberOfRight}";
  }

  String getNumberOfWrongAsString(){
    return "${this._numberOfWrong}";
  }

  DateTime getDateTime(){
    return this._date;
  }

  int getPercentage(){
    return ((this._numberOfRight/9)*100).toInt();
  }
}