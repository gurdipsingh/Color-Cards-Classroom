import 'package:e_learning/Modules/GL1/gl1CardPool.dart';
import 'package:e_learning/components/PassingArgument.dart';
import 'package:flutter/cupertino.dart';

class Game extends StatefulWidget {

  final PassingArgument passingArgument;


  const Game({
    Key key,
    @required this.passingArgument
  }) : super(key: key);

  @override
  _Game createState() => _Game();
}

class _Game extends State<Game>{

  getCardPool(){
    switch(widget.passingArgument.navigation["Module"]){
      case "GL1":
        return Gl1CardPool(passingArgument: widget.passingArgument);
    }
  }

  @override
  Widget build(BuildContext context) {
    return getCardPool();
  }

}