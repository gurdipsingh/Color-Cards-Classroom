import 'package:charts_flutter/flutter.dart' as charts;
import 'package:e_learning/components/score.dart';
import 'package:e_learning/constants.dart';
import 'package:flutter/material.dart';

class VerticalBarLabelChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  VerticalBarLabelChart(this.seriesList, {this.animate});

  /// Creates a [BarChart] with sample data and no transition.
  factory VerticalBarLabelChart.withSampleData(List<Score> score) {
    return new VerticalBarLabelChart(
      _createSampleData(score),
      // Disable animations for image tests.
      animate: true,
    );
  }


  // [BarLabelDecorator] will automatically position the label
  // inside the bar if the label will fit. If the label will not fit,
  // it will draw outside of the bar.
  // Labels can always display inside or outside using [LabelPosition].
  //
  // Text style for inside / outside can be controlled independently by setting
  // [insideLabelStyleSpec] and [outsideLabelStyleSpec].
  @override
  Widget build(BuildContext context) {
    return new charts.BarChart(
      seriesList,
      animate: animate,
      // Set a bar label decorator.
      // Example configuring different styles for inside/outside:
      //       barRendererDecorator: new charts.BarLabelDecorator(
      //          insideLabelStyleSpec: new charts.TextStyleSpec(...),
      //          outsideLabelStyleSpec: new charts.TextStyleSpec(...)),
      barRendererDecorator: new charts.BarLabelDecorator<String>(),
      domainAxis: new charts.OrdinalAxisSpec(),
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<Score, String>> _createSampleData(List<Score> scoreList) {

    return [
      new charts.Series<Score, String>(
          id: 'Score',
          domainFn: (Score score, _) => score.getDateTime().toString(),
          measureFn: (Score score, _) => score.getNumberOfRights(),
          data: scoreList,
          // Set a label accessor to control the text of the bar label.
          labelAccessorFn: (Score score, _) =>
          '${score.getPercentage().toString()}%',
        colorFn: (Score score, _) => charts.ColorUtil.fromDartColor(primaryColor),
      )
    ];
  }
}