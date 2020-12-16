import 'package:charts_flutter/flutter.dart' as charts;
import 'package:e_learning/components/score.dart';
import 'package:flutter/material.dart';

class DonutAutoLabelChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  DonutAutoLabelChart(this.seriesList, {this.animate});

  factory DonutAutoLabelChart.withSampleData(Score score) {
    return new DonutAutoLabelChart(
      _createScoreData(score),
      animate: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new charts.PieChart(seriesList,
        animate: animate,
        defaultRenderer: new charts.ArcRendererConfig(
            arcWidth: 100,
            strokeWidthPx: 8,
            arcRendererDecorators: [new charts.ArcLabelDecorator()]));
  }

  static List<charts.Series<Score, String>> _createScoreData(Score score) {
    final data = [
      score,
      new Score(score.getNumberOfWrong(), DateTime.now(), 'Misserfolg', Colors.red),
    ];

    return [
      new charts.Series<Score, String>(
          id: 'Score',
          domainFn: (Score score, _) => score.getDateTime().toString(),
          measureFn: (Score score, _) => score.getNumberOfRights(),
          data: data,
          labelAccessorFn: (Score score, _) =>
              '${score.label}: ${score.getNumberOfRights()}',
          colorFn: (Score score, _) =>
              charts.ColorUtil.fromDartColor(score.color))
    ];
  }
}
