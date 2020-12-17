import 'package:e_learning/components/PassingArgument.dart';
import 'package:e_learning/components/myButtomNavBar.dart';
import 'package:e_learning/staticMethods.dart';
import 'package:flutter/material.dart';

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
      backgroundColor: passingArgument.getBackgroundColor(),
      appBar: AppBar(
        title: Text("Help"),
        backgroundColor: passingArgument.getPrimaryColor(),
      ),
      body: ListView(children: [
        StaticMethods.addHeader(context, "Das Kartenspiel", passingArgument),
        StaticMethods.addText(
            "Die Modis: \nWenn sie sich testen lassen wollen, haben Sie drei Möglichkeiten: ",
            passingArgument),
        addPicture('assets/gamepictures/0modis.png'),
        StaticMethods.addText(
            "- Unbewertet: Sie spielen drauf los und können sich austoben wie sie wollen, das Ergebnis"
            " fließt nicht in Ihre Statistik ein."
            "\n- Bewertet: Es wird Ernst, zeigen Sie was sie gelernt haben und geben Sie Ihr Bestes, "
            "denn das Ergebnis des Spiels wird in Ihre Statistik mit aufgenommen. "
            "\n- Zeit: Sind die anderen Modis zu einfach? Dann probieren Sie doch mal"
            " innerhalb von 20 Sekunden die Karten schnell einzuordnen. So gibt es eine kleine extra"
            " Herausforderung. Auch hier gilt aber: Das Ergebnis fließt nicht in Ihre Statistik mit ein.",
            passingArgument),
        StaticMethods.addText(
            "Das Spiel: \nSobald"
            " Sie sich für einen Modi entschieden haben, wird der nachfolgende Screen angezeigt.",
            passingArgument),
        addPicture('assets/gamepictures/1Start.PNG'),
        StaticMethods.addText(
            "Im oberen Bereich des Screens, werden die Oberbegriffe der Karten mit ihrer jeweiligen Farbe,"
            " aufgezeigt.",
            passingArgument),
        addPicture('assets/gamepictures/2toplegend.png'),
        StaticMethods.addText(
            "Wenn Sie den Zeitmodus gewählt haben, haben sie zusätzlich im oberen Bereich noch den Timer, "
            "der Ihnen, ihre noch zur Verfügung stehende Zeit anzeigt.",
            passingArgument),
        addPicture('assets/gamepictures/6timeMode.png'),
        StaticMethods.addText(
            "In der Mitte des Screens, befinden sich die Karten, die Sie zu den Oberbegriffen "
            "zuordnen müssen. Dies geschieht, durch das Antippen auf den Karten.",
            passingArgument),
        addPicture('assets/gamepictures/3emptyCards.png'),
        StaticMethods.addText(
            "Wenn Sie einmal auf die Karte tippen, wird die Karte in der ersten Farbe eingefärbt und zugeordnet werden.",
            passingArgument),
        addPicture('assets/gamepictures/4colorTheCards.png'),
        StaticMethods.addText(
            "Wird ein weiteres mal auf die Karte getippt so wechselt sich die Farbe der Karte"
            " zu der nächsten Farbe. So müssen alle Karten zu den jeweiligen Oberbegriffen eingefärbt werden.",
            passingArgument),
        addPicture('assets/gamepictures/5multipleClick.png'),
        StaticMethods.addText(
            "Sind sie fertig mit der Einfärbung, so können sie auf ''Lösung abgeben'' tippen, um ihr Ergebnis"
            " zu sehen. Nun sehen Sie den folgenden Screen.",
            passingArgument),
        addPicture('assets/gamepictures/7handinSolution.png'),
        StaticMethods.addText(
            "Falls Sie sich im Zeitmodus befinden, werden Sie automatisch weitergeleitet sobald Ihre Zeit"
            " abgelaufen ist. Das heisst Sie müssen auf keinen Button klicken. Unabhängig vom Modus "
            "des Spiels sollten sie als nächstes Folgenden Screen sehen: ",
            passingArgument),
        addPicture('assets/gamepictures/8resultScreen.png'),
        StaticMethods.addText(
            "Im oberen Bereich wird angezeigt wieviele Karten richtig und wieviele Karten falsch eingefärbt"
            " wurden.",
            passingArgument),
        addPicture('assets/gamepictures/9resultLegend.png'),
        StaticMethods.addText(
            "Auch bei den Karten sieht man anhand der Farbe, welche Karte richtig und welche falsch"
            " zugeordnet wurde. Es ist auf der nachfolgenden Darstellung zu erkennen, "
            "dass die erste Karte zuvor falsch einsortiert wurde da sie "
            "nicht grün sondern grau aufgezeigt wird.",
            passingArgument),
        addPicture('assets/gamepictures/10wrongAnswer.png'),
        StaticMethods.addText(
            "Womöglich wollen Sie Informationen zu der Karte und dem Thema nachlesen. Das ist kein"
            " Problem, hierzu tippen sie einfach auf die Karte, zu dem Sie sich nochmal einlesen wollen. Es wird"
            " ein Dialogfenster aufgezeigt, welches zeigt, zu welchem Oberbegriff es gehört und ob sie zu der Lernseite"
            " von dieser geleitet werden wollen. Klicken sie Ja um auf die Seite geleitet zu werden und nein um das "
            "Dialogfenster zu schließen",
            passingArgument),
        addPicture('assets/gamepictures/11popup.png'),
        StaticMethods.addText(
            "Wenn Sie fertig sind können Sie auf Weiter klicken um Ihr Feedback zu bekommn.",
            passingArgument),
        addPicture('assets/gamepictures/12continueToFeedback.png'),
        StaticMethods.addText("Es folgt das Feedback Screen.", passingArgument),
        addPicture('assets/gamepictures/13Feedback.png'),
        StaticMethods.addText(
            "Auf dem Feedback Screen können sie noch einmal sehen wieviele Karten sie richtig sortiert haben."
            " Des weiteren, sehen sie Ihren Wert als eine Prozentzahl und in welchem Bereich die Zahl fällt. Sehr Gut "
            "ist die Beste Bewertung, Gut die zweitbeste und die schlechteste Bewertung ist befriedigend. Wenn Sie"
            "den Bewerteten Modus am Anfang gewählt haben, wird das Ergebnis in Ihre Statistik einfließen, damit Sie"
            "immer einen Überblick über Ihre letzten Spiele und hoffemtlich Steigerungen haben. \nViel Spaß beim Spielen und Lernen ! :) ",
            passingArgument),
      ]),
      bottomNavigationBar: MyButtomNavigationBar(
        passingArgument: passingArgument,
      ),
    );
  }
}
