import 'package:e_learning/components/PassingArgument.dart';
import 'package:e_learning/components/myButtomNavBar.dart';
import 'package:e_learning/staticMethods.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Help extends StatelessWidget {
  static const route = "/help";

  final PassingArgument passingArgument;

  Help({
    Key key,
    @required this.passingArgument,
  }) : super(key: key);

  Container addPicture(String picturePath) {
    return Container(
      width: 300,
      height: 400,
      child: Image(
        image: AssetImage(picturePath),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Help"),
        backgroundColor: primaryColor,
      ),
      body: ListView(children: [
        StaticMethods.addHeader(context, "Das Kartenspiel"),
        StaticMethods.addText("Im folgen wird das Spiel erklärt. \nSobald"
            " Sie sich für einen Modi entschieden haben, wird der nachfolgende Screen angezeigt."),
        addPicture('assets/gamepictures/1Start.PNG'),
        StaticMethods.addText(
            "Im oberen Bereich des Screens, werden die Oberbegriffe der Karten mit ihrer jeweiligen Farbe,"
            " aufgezeigt."),
        addPicture('assets/gamepictures/2toplegend.png'),
        StaticMethods.addText(
            "In der Mitte des Screens, befinden sich die Karten, die Sie zu den Oberbegriffen "
            "zuordnen müssen. Dies geschieht, durch das Antippen auf den Karten."),
        addPicture('assets/gamepictures/3emptyCards.png'),
        StaticMethods.addText(
            "Wenn Sie einmal auf die Karte tippen, wird die Karte in der ersten Farbe eingefärbt und zugeordnet werden."),
        addPicture('assets/gamepictures/4colorTheCards.png'),
        StaticMethods.addText(
            "Wird ein weiteres mal auf die Karte getippt so wechselt sich die Farbe der Karte"
            " zu der nächsten Farbe. So müssen alle Karten zu den jeweiligen Oberbegriffen eingefärbt werden."),
        addPicture('assets/gamepictures/5multipleClick.png'),
        addPicture('assets/gamepictures/7handinSolution.png'),
        StaticMethods.addText(
            "Sind sie fertig mit der Einfärbung, so können sie auf ''Lösung abgeben'' tippen, um ihr Ergebnis"
            " zu sehen. Nun sehen Sie den folgenden Screen."),
        addPicture('assets/gamepictures/8resultScreen.png'),
        StaticMethods.addText(
            "Im oberen Bereich wird angezeigt wieviele Karten richtig und wieviele Karten falsch eingefärbt"
            " wurden."),
        addPicture('assets/gamepictures/9resultLegend.png'),
        StaticMethods.addText(
            "Auch bei den Karten sieht man anhand der Farbe, welche Karte richtig und welche falsch"
            " zugeordnet wurde. Es ist auf der nachfolgenden Darstellung zu erkennen, "
            "dass die erste Karte zuvor falsch einsortiert wurde da sie "
            "nicht grün sondern grau aufgezeigt wird."),
        addPicture('assets/gamepictures/10wrongAnswer.png'),
        StaticMethods.addText(
            "Womöglich wollen Sie Informationen zu der Karte und dem Thema nachlesen. Das ist kein"
            " Problem, hierzu tippen sie einfach auf die Karte, zu dem Sie sich nochmal einlesen wollen. Es wird"
            " ein Dialogfenster aufgezeigt, welches zeigt, zu welchem Oberbegriff es gehört und ob sie zu der Lernseite"
            " von dieser geleitet werden wollen. Klicken sie Ja um auf die Seite geleitet zu werden und nein um das "
            "Dialogfenster zu schließen"),
        addPicture('assets/gamepictures/11popup.png'),
        StaticMethods.addText(
            "Wenn Sie fertig sind können Sie auf Weiter klicken um Ihr Feedback zu bekommn."),
        addPicture('assets/gamepictures/12continueToFeedback.png'),
        StaticMethods.addText(
            "Wenn Sie fertig sind, können Sie auf ''Weiter'' klicken um Ihr Feedback zu bekommen."),
        addPicture('assets/gamepictures/13Feedback.png'),
        StaticMethods.addText(
            "Auf dem Feedback Screen können sie sehen nochmal sehen wieviele Karten sie richtig gehabt haben."
            " Des weiteren, sehen sie ihren Wert als Prozentzahl und in welchem Bereich das Feedback fällt. Sehr Gut "
            "ist die Beste Bewertung, Gut die zweitbeste und die schlechteste Bewertung ist befriedigend. Der Score"
            " wird, falls Sie nicht den unbewerteten Modus ausgewählt haben, in Ihre Statistik einfließen, damit Sie"
            "immer einen Überblick über Ihren Lernerfolg haben haben. \nViel Spaß beim Spielen/Lernen ! "),
      ]),
      bottomNavigationBar: MyButtomNavigationBar(
        passingArgument: passingArgument,
      ),
    );
  }
}


