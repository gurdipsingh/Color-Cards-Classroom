import 'dart:async';

import 'package:flutter/cupertino.dart';

class TimeCounter extends StatefulWidget{
  final onTimeUp;

  TimeCounter({
    Key key,
    this.onTimeUp
  }) : super(key: key);

  @override
  _TimeCounter createState() => _TimeCounter();
}

class _TimeCounter extends State<TimeCounter> {

  int counter = 20;
  Timer timer ;


  void startTime(context){
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if(counter >0){
          counter --;
        }
        else{
          timer.cancel();
          widget.onTimeUp();
        }
      });
    });
  }

  void initState(){
    startTime(context);
  }



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(this.counter.toString(), style: TextStyle(fontSize: 30),)
      ],
    );
  }

}